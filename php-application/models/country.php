<?php
class Country{
	  public $id;
    public $name;

    public function __construct($id, $name) {
      $this->id = $id;
      $this->name  = $name;
    }

    public static function all() {
      $list = [];
      $db = Db::getInstance();
      // $ids = [1,2,3,4];
      // $names = ['USA','Canada','India','WI'];
      // for($i = 0; $i < 4; $i++){
      //   $list[$i] = new Country($ids[$i],$names[$i]);
      // }
      $req = $db->query('SELECT * FROM country');

      // we create a list of Post objects from the database results
      foreach($req->fetchAll() as $post) {
        $list[] = new Country($post['CountryID'], $post['CountryName']);
      }
      return $list;
    }

    public static function getCountryByID($id) {
      $list;
      $db = Db::getInstance();
      
      $req = $db->query("SELECT * FROM country where CountryID = '$id' ");

      // we create a list of Post objects from the database results
      foreach($req->fetchAll() as $post) {
        $list = new Country($post['CountryID'], $post['CountryName']);
      }
      return $list;
    }

    /*public static function getCountryByID($id) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $req = $db->prepare('SELECT * FROM country where CountryID = :id');
      // the query was prepared, now we replace :id with our actual $id value
      $req->execute(array('id' => $id));
      $post = $req->fetch();

      return new Post($post['CountryID'], $post['CountryName']);
    }*/
}
?>