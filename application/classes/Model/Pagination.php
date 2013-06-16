<?php

/**
 * Model to pagination your web
 * 
 * @author Przemyslaw Kotlowski <john.doe@example.com>
 */
class Model_Pagination extends Model {

    public $table_name = '';

    public function __construct($table_name) {
        $this->table_name = $table_name;

        return $this->table_name;
    }

    /**
     * Load all data from db
     * 
     * @return object

      public function load_data($table) {
      $query = DB::select('*')->from($table)->as_object()->execute();
      foreach ($query as $news) {
      $dane[] = $news;
      }
      return $dane;
      } */

    /**
     * Count all data from db
     * 
     * @return int
     */
    public function count_data() {
        $query = DB::select()->from($this->table_name)->execute()->count();
        return $query;
    }

    /**
     * Function to load data in limit and offset segregate
     * on id site
     * 
     * @param int $limit
     * @param int $id
     * @param int $offset
     * @return array
     */
    public function load_segregate_element($limit, $offset, $sites_id) {
        $query = DB::query(1, 'SELECT * 
                               FROM `' . $this->table_name . '` 
                               WHERE sites_id = ' . $sites_id . '
                               ORDER BY `id` ASC LIMIT :limit OFFSET : offset')
                ->parameters(array(':limit' => $limit, ': offset' => $offset))
                ->as_object();
        return $query->execute();
    }

    public function load_last_order() {
        $query = DB::query(1, 'SELECT * 
                               FROM `' . $this->table_name . '` 
                               WHERE title like \'last order\'
                               LIMIT 1')
                ->as_object();
        return $query->execute();
    }

    /**
     * Function to load data in limit and offset segregate
     * without id site
     * 
     * @param int $limit
     * @param int $offset
     * @return array
     */
    public function load_segregate_static_element($limit, $offset, $typ) {
        $query = DB::query(1, 'SELECT * 
                               FROM `' . $this->table_name . '`
                               Where type like "' . $typ . '"
                               ORDER BY `id` ASC LIMIT :limit OFFSET : offset')
                ->parameters(array(':limit' => $limit, ': offset' => $offset))
                ->as_object();
        return $query->execute();
    }

    /**
     * Method to display one single data
     * 
     * @param int $id
     * @return object
     */
    public function show_one_data($id) {
        $query = DB::select()
                ->from($this->table_name)
                ->where('id', '=', $id)
                ->as_object()
                ->execute();
        return $query;
    }

}
