<?php

class Movie
{
    private $movie_id;
    private $name;
    private $release_date;
    private $views;
    private $director_id;
    private $poster_path;

    public function __construct($movie_id, $name, $release_date, $views, $director_id, $poster_path)
    {
        $this->movie_id = $movie_id;
        $this->name = $name;
        $this->release_date = $release_date;
        $this->views = $views;
        $this->director_id = $director_id;
        $this->poster_path = $poster_path;
    }



    public function getName()
    {
        return $this->name;
    }


    public function getMovie_id()
    {
        return $this->movie_id;
    }


    public function getRelease_date()
    {
        return $this->release_date;
    }


    public function getViews()
    {
        return $this->views;
    }


    public function getDirector_id()
    {
        return $this->director_id;
    }


    public function getPoster_path()
    {
        return $this->poster_path;
    }
}
