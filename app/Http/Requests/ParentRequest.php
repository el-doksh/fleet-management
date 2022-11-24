<?php

namespace App\Http\Requests;

use App\Helpers\HttpStatusCodes;
use App\Traits\APIResponse;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class ParentRequest extends FormRequest
{
    use APIResponse;
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    protected function failedValidation(Validator $validator)
    {
        throw new HttpResponseException( $this->API_Response(false, HttpStatusCodes::HTTP_BAD_REQUEST, 
                    "Validation Errors", [], $validator->errors()) );
    }
}
