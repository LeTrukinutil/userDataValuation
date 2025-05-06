<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class UserFavouritesCompany
 * 
 * @property int $id
 * @property int $user_id
 * @property string $siren
 * 
 * @property User $user
 * @property Company $company
 *
 * @package App\Models
 */
class UserFavouritesCompany extends Model
{
	protected $table = 'user_favourites_companies';
	public $timestamps = false;

	protected $casts = [
		'user_id' => 'int'
	];

	protected $fillable = [
		'user_id',
		'siren'
	];

	public function user()
	{
		return $this->belongsTo(User::class);
	}

	public function company()
	{
		return $this->belongsTo(Company::class, 'siren');
	}
}
