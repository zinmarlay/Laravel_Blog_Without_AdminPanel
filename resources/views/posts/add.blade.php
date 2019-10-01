@extends('layouts.app')

@section('content')
	<div class="container">
		@if($errors->any()) <!-- $errors is auto variable of framework -->
			<div class="alert alert-danger">
				@foreach($errors->all() as $error)
					{{ "$error "}}
				@endforeach
			</div>
		@endif
		<form method="post">
			{{ csrf_field() }} <!-- for html form security -->
			<div class="form-group">
				<label for="title">Title</label>
				<input type="text" name="title" class="form-control">
			</div>

			<div class="form-group">
				<label for="body">Body</label>
				<textarea name="body" class="form-control"></textarea>
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

			<input type="submit" name="Add New Post">

		</form>
	</div>
@endsection