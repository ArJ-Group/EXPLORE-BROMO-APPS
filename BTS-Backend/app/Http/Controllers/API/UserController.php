<?php

namespace App\Http\Controllers\API;

use Exception;
use App\Models\User;
use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules\Password;

class UserController extends Controller
{
    // TODO: register user
    public function register(Request $request) {
        try {
            $request->validate([
                "name" => ["required", "string", "max:255"],
                "username" => ["required", "string", "max:255", "unique:users"],
                "phone" => ["nullable", "string", "max:255"],
                "email" => ["required", "string", "email", "max:255", "unique:users"],
                "password" => ["required", "string", new Password(6)],
            ]);

            User::create([
                "name" => $request->name,
                "username" => $request->username,
                "email" => $request->email,
                "phone" => $request->phone,
                "password" => Hash::make($request->password),
            ]);

            $user = User::where("email", $request->email)->first();

            $tokenResult = $user->createToken("authToken")->plainTextToken;

            return ResponseFormatter::success([
                "access_token" => $tokenResult,
                "token_type" => "Bearer",
                "user" => $user
            ], "User registered");

        } catch (Exception $error) {
            return ResponseFormatter::error([
                "message" => "something when wrong",
                "error" => $error,
            ], "Authentication failed", 500);
        }
    }

    // TODO: login user
    public function login(Request $request) {
        try {
            $request->validate([
                "email" => "email|required",
                "password" => "required"
            ]);

            $credentials = request(["email", "password"]);
            if (!Auth::attempt($credentials)) {
                return ResponseFormatter::error([
                    "message" => "Unauthorized",
                    ], "Authentication failed", 500);
            }

            $user = User::where("email", $request->email)->first();

            if (! Hash::check($request->password, $user->password)) {
                throw new \Exception("invalid credentials");
            }

            $tokenResult = $user->createToken("authToken")->plainTextToken;

            return ResponseFormatter::success([
                "access_token" => $tokenResult,
                "token_type" => "Bearer",
                "user" => $user,
            ], "Authenticated");

        } catch (Exception $error) {
            ResponseFormatter::error([
                "message" => "Something when wrong",
                "error" => $error
            ], "Authentication Failed", 500);
        }
    }

    // TODO: get data user
    public function fetch(Request $request) {
        return ResponseFormatter::success($request->user(), "data profil berhasil diambil");
    }

    // TODO: update profile
    public function updateProfile(Request $request) {
         $request->validate([
                "name" => ["nullable", "string", "max:255"],
                "username" => ["nullable", "string", "max:255", "unique:users"],
                "phone" => ["nullable", "string", "max:255"],
                "email" => ["nullable", "string", "email", "max:255"],
                "password" => ["nullable", "string", new Password(6)],
            ]);

        $data = $request->all();
        $user = Auth::user();

        // abaikan error ini 
        $user->update($data);

        return ResponseFormatter::success($user, "Profile updated");
    }

    // TODO: logout
    public function logout(Request $request) {
        $token = $request->user()->currentAccessToken()->delete();

        return ResponseFormatter::success($token, "Token Revoked");
    }
}
