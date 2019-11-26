<?php


require_once '../Model/MovieModel.php';

$movies = getMovies();
$comments = getComments();
$title = 'Title of the page';

if (count($movies) == 0)
  include_once 'ErrorView.php';
else
  include_once '../View/MovieView.php';

if (isset($_POST)) {
  if (!empty($_POST)) {
    insertComment(+$_POST['id'], $_POST['input']);
  }
}
