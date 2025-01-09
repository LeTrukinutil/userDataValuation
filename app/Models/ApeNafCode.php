<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class ApeNafCode
 * 
 * @property string $code
 * @property string $label
 *
 * @package App\Models
 */
class ApeNafCode extends Model
{
	protected $table = 'ape_naf_code';
	protected $primaryKey = 'code';
	public $incrementing = false;
	public $timestamps = false;

	protected $fillable = [
		'label'
	];

	// find the label of the code
	static function getLabel($code){
		return self::where('code', $code)->value('label');
	}
}
