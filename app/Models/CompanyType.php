<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class CompanyType
 * 
 * @property string $code
 * @property string $label
 *
 * @package App\Models
 */
class CompanyType extends Model
{
	protected $table = 'company_type';
	protected $primaryKey = 'code';
	public $incrementing = false;
	public $timestamps = false;

	protected $fillable = [
		'label'
	];
}
