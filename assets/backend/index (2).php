<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Login</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="login/css/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="login/css/styles.css" rel="stylesheet">
  </head>
<body onLoad="document.postform.elements['username'].focus();">
  <div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <!--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>-->
            <h1 class="text-center">Login</h1>
            <font face="verdana" size="2" color="#333333">
              Silahkan Login Terlebih Dahulu</br><?php if(isset($_GET['status'])){echo "&laquo;".$_GET['status']."&raquo;";} ?>
            </font>
        </div>
        <div class="modal-body">
            <form action="index-login.php" method="post" name="postform" class="form col-md-12 center-block">
              <div class="form-group">
                <input type="text" class="form-control input-lg" placeholder="Username" name="username">
              </div>
              <div class="form-group">
                <input type="password" value="" name="password" onFocus="this.value=''" class="form-control input-lg" placeholder="Password">
              </div>
              <div class="form-group">
                <button type="submit" name="login" class="btn btn-primary btn-lg btn-block">Sign In</button>
                <!--<span class="pull-right"><a href="#">Register</a></span><span><a href="#">Need help?</a></span>-->
              </div>
            </form>
        </div>
        <div class="modal-footer">
            <div class="col-md-12">
            <!--<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>-->
        </div>
        </div>
    </div>
    </div>
  </div>

<!-- script references -->
  <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>

</html>
