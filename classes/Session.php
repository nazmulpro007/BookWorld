<?php


class Session
{
    private $session;

    public function __construct()
    {
        $this->session = $_SESSION;
    }

    public function getSession($key)
    {
        return $this->session[$key];
    }
}
