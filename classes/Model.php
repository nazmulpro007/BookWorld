<?php


class Model
{
    private $table;
    private $db;

    public function __construct($table = '')
    {
        $this->table = $table;
        $this->db = new Database();
        $this->db->connect();
    }

    /**
     * Insert records in a table
     * We can also insert multiple records at a time
     * $data variable should be a associative array
     *
     * @param array $data
     * @return mixed
     */
    public function insert(array $data)
    {
        $columns = array_keys($data);
        $values = array_values($data);

        $query = "INSERT INTO {$this->table} (" . implode(", ", $columns) . ") VALUES ('" . implode("', '", $values) . "')";
        return $this->db->execute($query);
    }

    public function update(string $sql)
    {
        return $this->db->execute($sql);
    }

    public function execute(string $sql)
    {
        return $this->db->execute($sql);
    }

    /**
     * Runs a select query in Database
     *
     * @param $sql
     * @return null
     */
    public function select($sql)
    {
        [$stmt, $result] = $this->executeSelectQuery($sql);

        if ($result) {
            return $stmt->fetchAll();
        }

        return $result;
    }

    /**
     * Runs a select query in Database
     *
     * @param $sql
     * @return null
     */
    public function selectFirst($sql)
    {
        [$stmt, $result] = $this->executeSelectQuery($sql);

        if ($result) {
            return $stmt->fetch();
        }

        return $result;
    }

    private function executeSelectQuery($sql)
    {
        $stmt = $this->db->getConnection()->prepare($sql);
        $stmt->execute();

        return [$stmt, $stmt->setFetchMode(PDO::FETCH_ASSOC)];
    }

    /**
     * Returns the Database
     *
     * @return Database
     */
    public function getDB()
    {
        return $this->db;
    }
}
