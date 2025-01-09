<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Company
 * 
 * @property string $siren
 * @property string $name
 * @property int|null $rating
 * 
 * @property Collection|Comment[] $comments
 *
 * @package App\Models
 */
class Company extends Model
{
	protected $table = 'company';
	protected $primaryKey = 'siren';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'rating' => 'int'
	];

	protected $fillable = [
		'siren',
		'name',
		'rating'
	];

	public function comments()
	{
		return $this->hasMany(Comment::class, 'siren');
	}
}
