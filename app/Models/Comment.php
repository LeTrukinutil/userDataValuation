<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

/**
 * Class Comment
 * 
 * @property int $id
 * @property Carbon $created_at
 * @property int $user_id
 * @property string $siren
 * @property string $content
 * 
 * @property Company $company
 * @property User $user
 *
 * @package App\Models
 */
class Comment extends Model
{
	protected $table = 'comments';
	public $timestamps = false;

	protected $casts = [
		'user_id' => 'int'
	];

	protected $fillable = [
		'user_id',
		'siren',
		'content'
	];

	public function company()
	{
		return $this->belongsTo(Company::class, 'siren');
	}

	public function user()
	{
		return $this->belongsTo(User::class);
	}

	// Return whether the user is the author of this comment or not
	public function isAuthor(){
		return $this->user_id === Auth::user()->id;
	}
}
