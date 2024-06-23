<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
<title>Registration Page</title>
<style>
body{
  background: #fff;
  font-family: 'PT Sans', sans-serif;
}
h2{
  padding-top: 1.5rem;
}
a{
  color: #333;
}
a:hover{
  color: #da5767;
  text-decoration: none;
}
.card{
  border: 0.40rem solid #f8f9fa;
  top: 10%;
}
.form-control{
  background-color: #f8f9fa;
  padding: 20px;
  padding: 25px 15px;
  margin-bottom: 1.3rem;
}

.form-control:focus {
  color: #000000;
  background-color: #ffffff;
  border: 3px solid #da5767;
  outline: 0;
  box-shadow: none;
}

.btn{
  padding: 0.6rem 1.2rem;
  background: #da5767;
  border: 2px solid #da5767;
}
.btn-primary:hover {
  background-color: #df8c96;
  border-color: #df8c96;
  transition: .3s;
}
</style>
</head>
<body>

<div class="container">
  <div class="row justify-content-center">
    <div class="col-md-5">
      <div class="card">
        <h2 class="card-title text-center">Register <a href="http://opensnippets.com">Here</a></h2>
        <div class="card-body py-md-4">
          <form action="reg" method="post">
            <div class="form-group">
              <input type="text" class="form-control" name="Name" placeholder="Name" required>
            </div>
            <div class="form-group">
              <input type="email" class="form-control" name="Email" placeholder="Email" required>
            </div>
            <div class="form-group">
              <input type="password" class="form-control" name="Password" placeholder="Password" required>
            </div>
            <div class="form-group">
              <input type="password" class="form-control" name="confirm-password" placeholder="Confirm Password" required>
            </div>
            <div class="d-flex flex-row align-items-center justify-content-between">
              <a href="login.jsp">Login</a>
              <button type="submit" class="btn btn-primary">Create Account</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- <div class="container mt-5">
    <h2>Registration Page</h2>
    <form action="reg" method="post" class="mt-3">
        <div class="form-group">
            <input type="text" class="form-control" name="Name" placeholder="Name" required>
        </div>
        <div class="form-group">
            <input type="email" class="form-control" name="Email" placeholder="Email" required>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="Password" placeholder="Password" required>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="confirm-password" placeholder="Confirm Password" required>
        </div>
        <button type="submit" class="btn btn-primary">Create Account</button>
    </form>
</div> -->




<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
