<?php

namespace App\Http\Middleware;

use Closure;

class CheckIsAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        if(Auth::check())
        {
            if($request->user()->'is_admin' == "1")
            {
               return $next($request);
            }
             return redirect('/');    
        }

        return redirect('/login');
    }
    }
}
/*
if (auth()->check()){

    if (\CheckIsAdmin::isAdmin()){

        return $next($request);

    }
}

return abort(404);