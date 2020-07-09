<?php

namespace App;

use Illuminate\Database\Eloquent\Model; //ORM для работы с СУБД
use \Esensi\Model\Model; // модуль валидации данных в таблицах

//форма валидации данных

class Topic extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'topics'; // наименование таблицы, с которой работает ORM Eloquent
    protected $fillable = ['topicname', 'created_at', 'updated_at']; //поля для внесения данных

    protected $rules = ['topicname'=>['required', 'max: 100', 'unique']];
}
