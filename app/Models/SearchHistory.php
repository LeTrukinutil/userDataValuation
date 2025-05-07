<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class SearchHistory
 * 
 * @property int $id
 * @property int|null $user_id
 * @property string $search_query
 * @property Carbon|null $searched_at
 * 
 * @property User|null $user
 *
 * @package App\Models
 */
class SearchHistory extends Model
{
	protected $table = 'search_history';
	public $timestamps = false;

	protected $casts = [
		'user_id' => 'int',
		'searched_at' => 'datetime'
	];

	protected $fillable = [
		'user_id',
		'search_query',
		'searched_at'
	];

	public function user()
	{
		return $this->belongsTo(User::class);
	}
}
