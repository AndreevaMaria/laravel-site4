<?php

namespace App;

use Illuminate\Database\Eloquent\Model; //ORM для работы с СУБД

class Topic extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'topics'; // наименование таблицы, с которой работает ORM Eloquent
    protected $fillable = ['topicname', 'created_at', 'updated_at']; //поля для внесения данных
}
