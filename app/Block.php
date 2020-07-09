<?php

namespace App;

//use Illuminate\Database\Eloquent\Model;
use \Esensi\Model\Model;

class Block extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'blocks'; // наименование таблицы, с которой работает ORM Eloquent
    protected $fillable = ['topicid', 'title', 'imagepath', 'created_at', 'updated_at'];
}
