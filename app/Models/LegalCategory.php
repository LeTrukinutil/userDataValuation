<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class LegalCategory
 * 
 * @property int $code
 * @property string $label
 *
 * @package App\Models
 */
class LegalCategory extends Model
{
	protected $table = 'legal_category';
	protected $primaryKey = 'code';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'code' => 'int'
	];

	protected $fillable = [
		'label'
	];
}
