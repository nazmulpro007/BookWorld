<?php


class Database
{
    private $connection;

    public function connect()
    {
        $driver = 'mysql';
        $host = 'localhost';
        $port = 3306;
        $dbname = 'books';
        $db_user = 'root';
        $db_password = '';

        try {
            $con = new PDO("$driver:host=$host:$port;dbname=$dbname;", $db_user, $db_password);
            $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->connection = $con;
            return $con;
        } catch (PDOException $ex) {
            die("Connection failed: " . $ex->getMessage());
        }
    }

    public function execute($sql)
    {
        return $this->connection->exec($sql);
    }


    /**
     * Get the current database connection
     *
     * @return mixed
     */
    public function getConnection()
    {
        return $this->connection;
    }
}
