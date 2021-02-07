<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class PostController extends Controller
{
    //

    // displaying all posts in admin
    public function index(){

        // getting all posts from the logged in user
         $posts = auth()->user()->posts()->paginate(5); // PAGINATION, sets per page

        // getting all posts
//        $posts = Post::all();

        return view('admin.posts.index', ['posts'=>$posts]);

    }

    // using Route Model Binding
    public function show(Post $post){

        // passing the specific post to the view
        return view('blog-post', ['post'=>$post]);

    }

    public function create() {

        // checking for the authenticated user
        $this->authorize('create', Post::class); // POLICY

        return view('admin.posts.create');

    }

    public function store(){

        $this->authorize('create', Post::class); // POLICY

        // validation rules
        // saving form data to inputs array (after validation)
        $inputs = request()->validate([

            'title'=>'required|min:8|max:255',
            'post_image'=>'file',
            'body'=>'required'

        ]);

        // if the post image is available (if image is selected)
        if(request('post_image')){

            $inputs['post_image'] = request('post_image')->store('images'); // creating the images upload directory if we dont already have one

        }

        // saving to db (we use the user-post relation)
        auth()->user()->posts()->create($inputs);

        session()->flash('post-created-message', 'Post with title '.$inputs['title'].' was Created');

        return redirect()->route('post.index'); // redirect to view all posts

    }

    public function edit(Post $post){

        $this->authorize('view', $post);

//        if(auth()->user()->can('view', $post)){
//
//        }

        return view('admin.posts.edit', ['post'=>$post]);

    }

    public function destroy(Post $post, Request $request){

        $this->authorize('delete', $post); // POLICY

        $post->delete(); // deleting the post from db

        $request->session()->flash('message', 'Post was deleted');

        return back();

    }

    public function update(Post $post){

        $inputs = request()->validate([

            'title'=>'required|min:8|max:255',
            'post_image'=>'file',
            'body'=>'required'

        ]);

        if(request('post_image')){

            $inputs['post_image'] = request('post_image')->store('images'); // creating the images upload directory if we dont already have one
            $post->post_image = $inputs['post_image'];

        }

        $post->title = $inputs['title'];
        $post->body = $inputs['body'];

        $this->authorize('update', $post); // using the update POLICY here

        $post->save();

        session()->flash('post-updated-message', 'Post was updated');

        return redirect()->route('post.index'); // redirect to view all posts

    }

}
