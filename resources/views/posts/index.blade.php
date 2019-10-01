@extends('layouts.app')
@section('content')
	<div class="container">
		@if(session('info'))
			<div class="alert alert-danger">
				{{ session('info')}}
			</div>
		@endif

		@foreach($posts as $post)
			<div class="panel panel-default">
				<div class="panel-heading">
				<a href="{{ url("/posts/view/$post->id")}}">
					{{ $post->title }}	
				</a>
				</div>
				
				<div class="panel-body">
					{{ $post->body }}
				</div>
				<div class="panel-footer">
					<b>{{$post->category->name}}</b>,
					<!-- category means call function category() from Post Model -->
					{{ $post->created_at->diffforhumans() }},
					<!-- diffforhumans means change date format -->
					({{count($post->comments)}})comments
			</div>
		</div>
		@endforeach
		{{ $posts->links() }} <!-- $posts come frm PostController -->
	</div>
@endsection