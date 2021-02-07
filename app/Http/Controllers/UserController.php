<?php

namespace App\Http\Controllers;

use App\Role;
use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    //

    // displaying all users
    public function index(){

        $users = User::all();

        return view('admin.users.index', ['users'=>$users]);
    }

    // displaying the user profile
    public function show(User $user){

        return view('admin.users.profile', [
            'user'=>$user,
            'roles'=>Role::all()
        ]);

    }

    // updating the user profile
    public function update(User $user) {

        $inputs = request()->validate([

            'username'=>['required', 'string', 'max:255', 'alpha_dash'],
            'name'=>['required', 'string', 'max:255'],
            'email'=>['required', 'email', 'max:255'],
            'avatar'=>['file']
            //'password'=>['min:6', 'max:255', 'confirmed']

        ]);

        // checking if we have an avatar selected
        if(request('avatar')){

            // dd(request('avatar'));

            $inputs['avatar'] = request('avatar')->store('images'); // uploading the avatar file

        }

        $user->update($inputs);

        return back();

    }

    // attach role to a user
    public function attach(User $user){
        //dd($user);

        //dd(request('role'));

        $user->roles()->attach(request('role'));

        return back();

    }

    public function detach(User $user){

        $user->roles()->detach(request('role'));

        return back();

    }

    // deleting a user
    public function destroy(User $user){

        $user->delete();

        session()->flash('user-deleted', 'User has been deleted');

        return back();

    }

}
