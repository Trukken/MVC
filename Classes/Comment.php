<?php

class Comment
{
    private $comment_id;
    private $movie_id;
    private $comment;

    public function __construct($comment_id, $movie_id, $comment)
    {
        $this->comment_id = $comment_id;
        $this->movie_id = $movie_id;
        $this->comment = $comment;
    }


    public function getComment()
    {
        return $this->comment;
    }


    public function getMovie_id()
    {
        return $this->movie_id;
    }


    public function getComment_id()
    {
        return $this->comment_id;
    }
}
