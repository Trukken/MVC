<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title><?= $title; ?></title>
</head>

<body>
  <?php
  // Display the movies
  foreach ($movies as $movie) {
    echo '<div>';
    echo $movie->getName() . '<br>';
    echo $movie->getRelease_date() . '<br>';
    echo $movie->getViews() . '<br>';
    ?>
    <form action="../Controller/MovieController.php" method="POST">
      <input type="textarea" name="input" placeholder="What do you think about this movie?">
      <input type="hidden" name="id" value="<?php echo $movie->getMovie_id(); ?>">
      <input type="submit" name="submit" value="Submit">
    </form>
  <?php
    foreach ($comments as $comment) {
      if ($movie->getMovie_id() == $comment->getComment_id()) {
        echo $comment->getComment();
      }
    }
    echo '</div>';
    echo '<hr>';
  }


  ?>


</body>

</html>