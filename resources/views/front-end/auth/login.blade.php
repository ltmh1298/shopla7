@extends('front-end.layouts.detail')
@section('content')
<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Đăng Nhập</h2>
						<form action="{!! route('postlogin') !!}" method="post">
                            <div class=" ">{{ $error ?? '' }}</div>
			                    {{ csrf_field() }}
							<input type="text" name="Username" placeholder="Username" />
							<input type="password" name="Password" placeholder="Password" />
							<span>
								<input type="checkbox" class="checkbox"> 
								Ghi nhớ đăng nhập
							</span>
							<button type="submit" class="btn btn-default">Đăng nhập</button>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>Đăng Ký</h2>
						<form action="#">
							<input type="text" placeholder="Username"/>
							<input type="email" placeholder="Email"/>
                            <input type="password" placeholder="Password"/>
                            <input type="password" placeholder="Xác nhận Password"/>
							<button type="submit" class="btn btn-default">Signup</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
@endsection