<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('review_product', function (Blueprint $table) {
            $table->id();
            $table->integer('productId');
            $table->integer('transactionId');
            $table->integer('customerId');
            $table->double('rating');
            $table->string('description',255);
            $table->string("created_by",50)->nullable();
            $table->string("updated_by",50)->nullable();
            $table->softDeletes();
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
        Schema::dropIfExists('review_product');
    }
};