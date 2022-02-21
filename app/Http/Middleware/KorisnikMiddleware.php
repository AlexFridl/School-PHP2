<?php

namespace App\Http\Middleware;

use Closure;

class KorisnikMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if ($request->session()->has('user')) {
            $user = $request->session()->get('user');

            if ($user->name_role == 'korisnik') {

                return $next($request);
            }
            return redirect()->route('index')->with('poruka', 'Morate se ulogovati!');
        }
    }
}