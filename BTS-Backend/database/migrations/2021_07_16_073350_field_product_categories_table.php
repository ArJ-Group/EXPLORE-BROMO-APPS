<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class FieldProductCategoriesTable extends Migration
{
    public function up()
    {
        // TODO: create digunakan jika belum ada nama tablenya
        Schema::create('product_categories', function (Blueprint $table) {
            $table-> id();
            $table->string("name");

            $table->softDeletes();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists("product_categories");
    }
}
