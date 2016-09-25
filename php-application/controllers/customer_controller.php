<?php
  class NewCustomerController {
  public function home() {
    $countries = Country::all();
    $states = State::all();
    $req = "";
    $customer = new Customer();
    require_once('views/customer/home.php');
  }

  public function insertCustomer() {
      if(isset($_POST['insert'])){
      $name = $_POST["CustomerName"];
      $title = $_POST["CustomerTitle"];
      $Customer = new Customer();
      $Customer-> name = $_POST["CustomerName"];
      $Customer-> title = $_POST["CustomerTitle"];
      $Customer-> address = $_POST["Address"];
      $Customer-> city = $_POST["City"];
      $Customer-> stateID = $_POST["state"];
      $Customer-> countryID = $_POST["country"];
      $Customer-> postalCode = $_POST["PostalCode"];
      $Customer-> email = $_POST["Email"];
      $Customer-> createdBy = $_POST["CreatedBy"];
      Customer::insert($Customer);
        echo ("<div class=\"alert alert-success\">
          <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>
        <strong>Success!</strong> Customer details added.
        </div>");
      $countries = Country::all();
      $states = State::all();
      }
      require_once('views/customer/home.php');
  }

  public function customerList(){
    if(isset($_POST['delete'])){
        Customer::delete($_POST['CustomerID']);
        $customers = Customer::all();
         echo ("<div class=\"alert alert-success\">
          <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>
        <strong>Success!</strong> Customer deleted.
        </div>");
      require_once('views/customer/customerList.php');
      }
       else if(isset($_POST['edit'])){
        $countries = Country::all();
        $states = State::all();
        if("" != trim($_POST['CustomerID']))
        {
          $customer = Customer::getById($_POST['CustomerID']);
          require_once('views/customer/customerEditForm.php');
        }
        
        else
        {
          require_once('views/customer/customerList.php');
        }
       
      }
      else
      {
        $customers = Customer::all();
      require_once('views/customer/customerList.php');
      }
  	
  }

  public function updateCustomer(){
    if(isset($_POST['update'])){
      $Customer = new Customer();
      $Customer-> id = $_POST["CustomerID"];
      $Customer-> name = $_POST["CustomerName"];
      $Customer-> title = $_POST["CustomerTitle"];
      $Customer-> address = $_POST["Address"];
      $Customer-> city = $_POST["City"];
      $Customer-> stateID = $_POST["state"];
      $Customer-> countryID = $_POST["country"];
      $Customer-> postalCode = $_POST["PostalCode"];
      $Customer-> email = $_POST["Email"];
      $Customer-> modifiedBy = $_POST["ModifiedBy"];

        $countries = Country::all();
        $states = State::all();
        $customer = Customer::update($Customer);
        $customers = Customer::all();
        echo ("<div class=\"alert alert-success\">
          <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>
        <strong>Success!</strong> Customer details updated.
        </div>");
        require_once('views/customer/customerList.php');
    }
    else
    {
      $countries = Country::all();
        $states = State::all();
        $customers = Customer::all();
      require_once('views/customer/customerList.php');
    }
  }

  public function error() {
    require_once('views/pages/error.php');
  }
}
?>