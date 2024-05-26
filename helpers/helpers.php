<?php

if (!function_exists('dd')) {
    function dd($var)
    {
        echo '<pre>';
        print_r($var);
        echo '</pre>';
        exit(0);
    }
}

if (!function_exists('session')) {
    function session($key)
    {
        return (new Session())->getSession($key);
    }
}

if (!function_exists('redirect')) {
    function redirect($location)
    {
        header("Location: $location");
    }
}

if (!function_exists('redirectBack')) {
    function redirectBack()
    {
        header('Location: ' . $_SERVER['HTTP_REFERER']);
        exit();
    }
}

if (!function_exists('auth')) {
    function auth()
    {
        return isset($_SESSION['useremail']) && !empty($_SESSION['useremail']);
    }
}

if (!function_exists('authAdmin')) {
    function authAdmin()
    {
        return isset($_SESSION['Adminemail']) && !empty($_SESSION['Adminemail']);
    }
}

if (!function_exists('readPdf')) {
    function readPdf($path)
    {
        header('Content-type: application/pdf');
        header('Content-Description: inline; filename="' . $path . '"');
        header('Content-Transfer-Encoding: binary');
        header('Accept-Ranges: bytes');
        @readfile($path);
    }
}
