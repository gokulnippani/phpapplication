<?php
class State{
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
      $req = $db->query('SELECT * FROM state');

      // we create a list of Post objects from the database results
      foreach($req->fetchAll() as $post) {
        $list[] = new State($post['StateID'], $post['StateName']);
      }
      return $list;
    }

     public static function getStateByID($id) {
      $list;
      $db = Db::getInstance();
      
      $req = $db->query("SELECT * FROM state where StateID = '$id' ");

      // we create a list of Post objects from the database results
      foreach($req->fetchAll() as $post) {
        $list = new State($post['StateID'], $post['StateName']);
      }
      return $list;
    }
}
?>