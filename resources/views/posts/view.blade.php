@extends('layouts.app')
@section('content')
	<div class="container">
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
					{{ $post->created_at }}
					<div class="pull-right">
						<a href="{{ url("/posts/edit/$post->id")}}">Edit</a> |
						<a href="{{ url("/posts/delete/$post->id")}}">Delete</a> |
					</div>
			</div>
		</div>

		<h4>Comments({{count($post->comments)}})</h4>
	@foreach($post->comments as $comment)
		<div class="panel panel-default">
			<div class="panel-body">
				{{$comment->comment}}
			</div>
		</div>
	@endforeach

	<form action="{{url('/comments/add')}}" method="post">
		{{ csrf_field()}}
		<input type="hidden" name="post_id" value="{{$post->id}}">
		<textarea name="comment" class="form-control"></textarea>
		<br>
		<input type="submit" value="Add Comment" class="btn btn-default">
	</form>
	<br><br>
	</div>

	
@endsection