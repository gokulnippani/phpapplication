<?php
  class PagesController {
    public function home() {
      $first_name = 'Gokul';
      $last_name  = 'Nippani';
      require_once('views/pages/home.php');
    }

    public function error() {
      require_once('views/pages/error.php');
    }
  }
?>