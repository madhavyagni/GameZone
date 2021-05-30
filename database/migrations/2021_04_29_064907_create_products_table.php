<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('slug');
            $table->text('description');
            $table->text('details');
            $table->text('specification');
            $table->string('image_name');
            $table->string('image_name1');
            $table->string('image_name2');
            $table->string('image_name3');
            $table->string('image_name4');
            $table->string('price');
            $table->string('sale_price');
            $table->string('cat');
            $table->string('brand');
            $table->integer('bestselling')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
