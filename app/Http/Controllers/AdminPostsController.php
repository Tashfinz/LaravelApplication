<?php

namespace App\Http\Controllers;

use App\Http\Requests\PostsCreateRequest;
use App\Post;
use App\Photo;
use App\Category;
use App\Comment;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminPostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //

        $posts = Post::paginate(4);

        return view ('admin.posts.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $categories = Category::pluck('name','id')->all();

        return view ('admin.posts.create', compact('categories'));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string
     */
    public function store(PostsCreateRequest $request)
    {
        //Requests are assigned to the input
        $input = $request->all();

        $user = Auth::user();


        //Check to see if we have a file
        if($file = $request->file('photo_id')){

            //obtain the original name is the name variable
            $name = time() . $file->getClientOriginalName();

            //move the file to images
            $file->move('images', $name);

            //create the photo
            $photo = Photo::create(['file'=>$name]);

            //Insert the photo id into the post
            $input['photo_id'] = $photo->id;
        }

        $user->posts()->create($input);

        return redirect('/admin/posts');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $post = Post::findOrFail($id);

        $comments = $post->comments;

        return view ('admin.comments.show', compact('comments'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $post = Post::findOrFail($id);

        $categories = Category::pluck('name','id')->all();

        return view ('admin.posts.edit', compact('post','categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $input = $request->all();

        if($file = $request->file('photo_id')){

            //obtain the original name is the name variable
            $name = time() . $file->getClientOriginalName();

            //move the file to images
            $file->move('images', $name);

            //create the photo
            $photo = Photo::create(['file'=>$name]);

            //Insert the photo id into the post
            $input['photo_id'] = $photo->id;
        }

//        Auth::user()->posts()->whereId($id)->first()->update($input);

        $post = Post::findOrFail($id);
        $post->update($input);

        return redirect('admin/posts');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
       $post = Post::findOrFail($id);

        unlink(public_path() . $post->photo->file);

        $post->delete();

        return redirect('/admin/posts');
    }

    public function post($slug){

        $post = Post::findBySlugOrFail($slug);

        $comments = $post->comments()->where('is_active', 1)->get();

        return view('post', compact('post', 'comments'));
    }

}
