<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
//use \Esensi\Model\Model;

class Block extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'blocks'; // наименование таблицы, с которой работает ORM Eloquent
    protected $fillable = ['topicid', 'title', 'content', 'imagepath', 'created_at', 'updated_at'];

    public function topic()
  {
    return $this->belongsTo('App\Topic', 'topicid');
  }
}
