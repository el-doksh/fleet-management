<?php

namespace App\Traits;

trait APIResponse
{
    public function API_Response($success, $code, $message, $data = [], $errors = [])
    {
        return response()->json([
            'success'   => $success,
            'message'   => $message,
            'errors'    => $errors,
            'data'      => $data,
        ], $code);
    }

}