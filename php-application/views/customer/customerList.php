<!DOCTYPE html>
<html>
<body>
<h2><strong>Customer List:</strong></h2>
<form action="?controller=customer&action=customerList" method="post">
<table id="customerTable" class="table table-striped table-bordered" cellspacing="0" width="100%" >
 <thead>
      <tr><th>Customer</th>
      <th>Address</th>
      <th>City</th>
      <th>State</th>
      <th>Email</th>
      <th>Country</th>
      <th>Actions</th>
      </tr>
    </thead>
    <tbody>
      <?php foreach($customers as $customer) { ?>
	<tr>
        <th style="font-weight: normal;"><?php echo $customer->title ?>  <?php echo $customer->name ?></th>
        <th style="font-weight: normal;"><?php echo $customer->address ?> </th>
        <th style="font-weight: normal;"><?php echo $customer->city ?></th>
        <th style="font-weight: normal;">
        <?php 
        $state = State::getStateByID($customer ->stateID);
              echo
               $state->name ?>
                 
               </th>
        <th style="font-weight: normal;"><?php echo $customer->email ?></th>
        
        <th style="font-weight: normal;"><?php 
        $country = Country::getCountryByID($customer ->countryID);
              echo
               $country->name ?></th>
        <th style="font-weight: normal;">   
        <form action="?controller=customer&action=customerList" method="post">
        <input type="hidden" name="CustomerID" value='<?php echo $customer->id ?>'>
        <button type="submit" name="delete" class="btn btn-danger btn-xs" onclick="return confirm('Are you sure to delete \'<?php echo $customer->name ?>\'?')">
          <span class="glyphicon glyphicon-remove"></span>
        </button>

        <button type="submit" name="edit" class="btn btn-primary btn-xs">
          <span class="glyphicon glyphicon-pencil"></span>
        </button>
        </form>
        </th>
    </tr>
    <?php }?>
    </tbody>
</table>

<script type="text/javascript">
  $(function(){
    $("#customerTable").dataTable();
  })
  </script>
</body>
</html>

