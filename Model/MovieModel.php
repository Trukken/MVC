<?php

function myAutoloader($class)
{
  require_once '../Classes/' . $class . '.php';
}

// Set a configuration for the script
spl_autoload_register('myAutoloader');


function getMovies()
{
  // Connect to the DB

  $db = new PDO('mysql:host=localhost;dbname=moviedb', 'root', '');
  // Query the DB
  $movies = $db->query('SELECT * FROM movies');
  $moviesArray = [];

  while ($row = $movies->fetch(PDO::FETCH_ASSOC)) {
    $movie = new Movie($row['movie_id'], $row['name'], $row['release_date'], $row['views'], $row['director_id'], $row['poster_path']);
    $moviesArray[] = $movie;
  }


  return $moviesArray;
}

function insertComment($movieId, $comment)
{
  $db = new PDO('mysql:host=localhost;dbname=moviedb', 'root', '');
  $db->query('INSERT INTO comments (movie_id, comment) VALUES(' . $movieId . ', "' . $comment . '")');
}

function getComments()
{
  $db = new PDO('mysql:host=localhost;dbname=moviedb', 'root', '');
  $comments = $db->query('SELECT * FROM movies m JOIN comments c ON m.movie_id=c.movie_id');
  $commentsArray = [];
  while ($row = $comments->fetch(PDO::FETCH_ASSOC)) {
    $comment = new Comment($row['comment_id'], $row['movie_id'], $row['comment']);
    $commentsArray[] = $comment;
  }
  return $commentsArray;
}
