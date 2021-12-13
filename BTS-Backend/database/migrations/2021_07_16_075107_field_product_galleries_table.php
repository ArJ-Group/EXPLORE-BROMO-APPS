<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class FieldProductGalleriesTable extends Migration
{
    public function up()
    {
        Schema::create('product_galleries', function (Blueprint $table) {
            $table->id();

            $table->bigInteger("products_id");
            $table->string("url");

            $table->softDeletes();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('product_galleries');
    }
}
