<?php

namespace App\Traits;

trait APIResponse
{
    public function API_Response($success, $code, $message, $data = [], $pagination = [])
    {
        return response()->json([
            'success'   => $success,
            'message'   => $message,
            'data'      => $data,
        ], $code);
    }

}