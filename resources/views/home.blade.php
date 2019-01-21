@extends('layouts.app')

@section('content')

<div class="container my-3 my-sm-5">
<div class="row">
    <div class="col-12 col-lg-8">
            @if(count($errors) >0)
            @foreach($error->all() as $error)
                  <div class="alert alert-danger">{{$error}}</div>
            @endforeach
            @endif
            @if(session('response'))
                  <div class="alert alert-success">{{session('response')}}</div>
            @endif
         <article class="mb-3">
        <header class="mb-2">   
            <div class="card-header">Dashboard</div>
        </header>
       
        @if(count($posts) >0)
        @foreach ($posts->all() as $post)
    <h1>{{$post->post_title}}</h1>
    <section id="main" class="mb-3">
        <figure class="figure">
            <img src="{{$post->post_image}}" class="figure-img img-fluid"  alt=" figure image" >
        </figure>
        <p>{{$post->post_description}}</p>
        
       
                <div class="small">
                        <a href='{{url("/view/{$post->id}")}}'><i class="fa fa-eye"  aria-hidden="true"><span class="sr-only">Delete</span></i></a>
                        <a href='{{url("/edit/{$post->id}")}}'><i class="fa fa-edit"  aria-hidden="true"><span class="sr-only">Delete</span></i></a>
                        <a href='{{url("/delete/{$post->id}")}}'><i class="fa fa-trash"  aria-hidden="true"><span class="sr-only">Delete</span></i></a>
                        
                
                    </div>
        
        </section>

    <hr/>
    @endforeach
    @else
     <p>No Post Avaliable !</p>
    @endif 
    
        
    
    <section class="comments" class="small">
        
        <h2>Comments</h2>
            <hr>
            <form>
                <div class="row">
                    <div class="col-12 col-sm-6">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" placeholder="Name" id="name" name="name" required>
                </div>
            </div>
                <div class="col-12 col-sm-6">
                <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" placeholder="email" id="email" name="email" required>
                    </div>
                </div>
                </div>
                    <div class="form-group">
                            <label for="comment" >Your Comment:</label>
                            <textarea class="form-control" id="comment" name="comment"  rows="6" placeholder=" write your comment here" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary"> Submit</button>
            </form>
    </section>
</article>
</div>
<div class="col-12 col-md-4">
 <aside>
    
     <div class="card mb-3">
         <div class="card-body">
             <div class="text-center">
                    @if( !empty($profile))
             <img src="{{$profile->profile_pic}}" class="img-fluid rounded-circle"  alt="figure image">
             @else
             <img src="{{url('images/avatar.png')}}" class="img-fluid rounded-circle"  alt="figure image">
             @endif
            </div>
            @if( !empty($profile))
             <h5>{{$profile->username}}</h5>
             @else
             <h4></h4>
             @endif
             @if( !empty($profile))
             <p>{{$profile->designation}}</p>
             @else
             <p></p>
             @endif
         </div>
     </div>
     
     <div class="card mb-3">
            <div class="card-body">
              <h5 class="card-title">About the blog</h5>
              <p class="card-text">A blog is a discussion or informational website published on the World Wide Web consisting of discrete, often informal diary-style text entries. Posts are typically displayed in reverse chronological order, so that the most recent post appears first, at the top of the web page <a href="#0">Read more...</a></p>
            </div>
          </div>
          <h2 class="mb-3">Categories</h2>
            <div class="list-group mb-3">
              <a href="#" class="list-group-item list-group-item-action bg-info text-white">Sports</a>
              <a href="#" class="list-group-item list-group-item-action bg-info text-white">Travel</a>
              <a href="#" class="list-group-item list-group-item-action bg-info text-white">Education</a>
              <a href="#" class="list-group-item list-group-item-action bg-info text-white">languages</a>
              <a href="#" class="list-group-item list-group-item-action bg-info text-white">programming</a>
            </div>
 </aside>
</div>
</div>
</div>
<footer class="small bg-light">
        <div class="container py-3 py-sm-5">
          <div class="row">
          </div>
          <ul class="list-inline text-center">
            <li class="list-inline-item">&copy; 2019 mohannad</li>
            <li class="list-inline-item">All rights reserved.</li>
          </ul>
        </div>
      </footer>

@endsection