@extends('layouts.app')

@section('content')
	<div class="container">
		<form method="post">
			{{ csrf_field() }} <!-- for html form security -->
			<div class="form-group">
				<label for="title">Title</label>
				<input type="text" name="title" class="form-control" value="{{$post->title}}">
			</div>

			<div class="form-group">
				<label for="body">Body</label>
				<textarea name="body" class="form-control">{{$post->body}}</textarea>
			</div>

			<div class="form-group">
				<label for="category">Category</label>
				<select name="category_id" class="form-control">

					@foreach($categories as $category)
						<option value="{{$category->id}}">
							{{$category->name}}
						</option>
					@endforeach
					
				</select>
			</div>

			<input type="submit" name="Update Post">

		</form>
	</div>
@endsection