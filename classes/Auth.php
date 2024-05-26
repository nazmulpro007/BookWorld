<?php


class Auth
{
    /**
     * Returns the authenticated user
     *
     * @return mixed
     */
    public static function user()
    {
        $userModel = new Model();
        $user = $userModel->select("SELECT * FROM user where email = '" . session('useremail') . "'");

        if ($user) {
            return $user[0];
        }

        return null;
    }

    public static function setUser($user)
    {
        $_SESSION['user'] = $user;

        return true;
    }

    public static function getUser()
    {
        return $_SESSION['user'];
    }
}
