<?php require_once "autoload.php"; ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $title ?? ''; ?></title>

    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="./bootstrap/css/jumbotron.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Book World</a>
        </div>

          <!--/.navbar-collapse -->
          <div id="navbar" class="navbar-collapse collapse">
              <form class="navbar-form navbar-right" action="index.php">
                  <div class="form-group">
                      <input class="form-control" type="search" name="q" placeholder="Search" aria-label="Search">
                  </div>
                  <button type="submit" class="btn btn-default">Search</button>
              </form>
              <ul class="nav navbar-nav navbar-right">
                  <?php if (authAdmin()) { ?>
                      <li><a href="admin_user-payments.php"><span class="glyphicon glyphicon-paperclip"></span>&nbsp; User Payments</a></li>
                  <?php } ?>
                  <li><a href="publisher_list.php"><span class="glyphicon glyphicon-paperclip"></span>&nbsp; Publisher</a></li>

                  <li><a href="books.php"><span class="glyphicon glyphicon-book"></span>&nbsp; Books</a></li>

                  <li><a href="category.php"><span class="glyphicon glyphicon-tasks"></span>&nbsp; Category</a></li>

                  <li><a href="contact.php"><span class="glyphicon glyphicon-phone-alt"></span>&nbsp; Contact</a></li>

                  <?php if (auth()) { ?>
                    <li><a href="profile.php"><span class="glyphicon glyphicon-user"></span>&nbsp; <?= Auth::getUser()['Name']; ?></a></li>
                  <?php }
                  if(authAdmin()) {?>
                    <li><a href="profile.php"><span class="glyphicon glyphicon-user"></span>&nbsp; 
                    Admin</a></li>
                  
                 <?php } ?>
              </ul>
          </div>
      </div>
    </nav>
    <?php
      if(isset($title) && $title == "Book") {
    ?>
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Welcome to Book World!</h1>
        <p class="lead">Here you will found many types of books</p>
      </div>
    </div>
    <?php } ?>

    <div class="container" id="main">