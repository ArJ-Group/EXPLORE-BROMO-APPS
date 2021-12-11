<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class FieldUserTable extends Migration
{
    public function up()
    {
        // TODO: table digunakan jika sudah ada migration dengan nama table sama
        Schema::table('users', function (Blueprint $table) {
            $table->string("roles")->after("email")->default("USER");
            $table->string("phone")->after("email")->nullable();
            $table->string("username")->after("email")->nullable();
        });
    }

    
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn("roles");
            $table->dropColumn("phone");
            $table->dropColumn("username");
        });
    }
}
