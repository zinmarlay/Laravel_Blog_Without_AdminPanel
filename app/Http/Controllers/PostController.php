<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Category;

class PostController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth')->except(['index','view']);//$this means postcontroller
        //middleware means make firstly before others url
    }


    // public function index(){
    //  $data=Post::all();// accept datas from Model Post
    //  return view('posts.index',[
    //      'posts'=>$data
    //  ]); // send datas to view
    // }

    public function index()
    {
        $data=Post::orderBy('id','desc')->paginate(5);// accept datas from Model Post
        return view('posts.index',[
            'posts'=>$data
        ]); // send datas to view
    }

    public function delete($id)
    {
        $post = Post::find($id);
        $post->delete();

        return redirect('/posts')->with('info','A post deleted');
    }
    public function edit($id)
    {
        $post = Post::find($id);
        $categories = Category::all();

        return view('posts.edit',[
            'post'=> $post,
            'categories'=>$categories
        ]);
    }

    public function update($id){
        $post = Post::find($id);
        $post->title = request()->title; // same with $_posts['title']
        $post->body = request()->body;
        $post->category_id = request()->category_id;
        $post->save();

        return redirect("/posts/view/$id");
    }

    public function add()
    {
        $categories = Category::all();

        return view('posts.add',[
            'categories' =>$categories
        ]);
    }

    public function create()
    {
        $validator = validator(request()->all(),[
            "title" => "required",
            "body" => "required",
            "category_id" => "required"
        ]);

        if($validator->fails()){
            return back()->withErrors($validator);
        }

        $post = new Post(); // make model object
        $post->title = request()->title; // same with $_posts['title']
        $post->body = request()->body;
        $post->category_id = request()->category_id;
        $post->save();

        return redirect('/posts');
    }

    public function view($id){
        $post = Post::find($id);

        return view('posts.view',[
            'post'=>$post
        ]);
    }
}
