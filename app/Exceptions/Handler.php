<?php

namespace App\Exceptions;

use App\Helpers\HttpStatusCodes;
use App\Traits\APIResponse;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Http\Request;
use Symfony\Component\HttpKernel\Exception\MethodNotAllowedHttpException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Throwable;

class Handler extends ExceptionHandler
{
    use APIResponse;
    /**
     * A list of exception types with their corresponding custom log levels.
     *
     * @var array<class-string<\Throwable>, \Psr\Log\LogLevel::*>
     */
    protected $levels = [
        //
    ];

    /**
     * A list of the exception types that are not reported.
     *
     * @var array<int, class-string<\Throwable>>
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed to the session on validation exceptions.
     *
     * @var array<int, string>
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {
        $this->reportable(function (Throwable $exception) {
            // 
        });
    }

    public function render($request, Throwable $exception)
    {
        if($request->isJson()) {
    
            if ($exception instanceof MethodNotAllowedHttpException) {
                return $this->API_Response(false, HttpStatusCodes::HTTP_METHOD_NOT_ALLOWED, 'Wrong Http Method');
            } else if ($exception instanceof NotFoundHttpException)  {
                return $this->API_Response(false, HttpStatusCodes::HTTP_NOT_FOUND, 'URL not Found');
            } else if ($exception instanceof ModelNotFoundException) {
                return $this->API_Response(false, HttpStatusCodes::HTTP_NOT_FOUND, 'Item not Found');
            } else {
                return $this->API_Response(false, HttpStatusCodes::HTTP_BAD_REQUEST, 'Bad Request');
            }
        }  
    }
}
