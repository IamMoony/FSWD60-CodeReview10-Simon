<!-- // DB Connection -->


<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

  <header id="header" class=""> 
    <h1>The Big Library</h1>
  </header><!-- /header -->

  <div class="container-fluid">
    <div class="col-lg-3">
      <h2>Add Book Data</h2>
      <form class="form-horizontal" action="" method="POST">
        <div class="form-group">
          <label class="control-label col-sm-2" for="full_name">Book Name</label>
          <div class="col-sm-10">
            <input type="name" class="form-control" id="firstname" placeholder="Enter Name" name="bookname">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">ISBN</label>
          <div class="col-sm-10">          
            <input type="number" class="form-control" placeholder="Enter Last Name" name="ISBN">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Image Link</label>
          <div class="col-sm-10">          
            <input type="" class="form-control" id="zip-code" placeholder="Enter E-Mail" name="Image">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Description</label>
          <div class="col-sm-10">          
            <input type="" class="form-control" placeholder="Enter E-Mail" name="Descr">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Publish Date</label>
          <div class="col-sm-10">          
            <input type="" class="form-control" placeholder="Enter E-Mail" name="Publish_Date">
          </div>
        </div>
          <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Publisher</label>
          <div class="col-sm-10">          
            <select name="publisher">
              <option value="Penguin Random House">Penguin Random House</option>
              <option value="Hachette Livre">Hachette Livre</option>
              <option value="HarperCollins">HarperCollins</option>
              <option value="Pearson Education">Pearson Education</option>
              <option value="Bloomsbury">Bloomsbury</option>
            </select>
          </div>
        </div>
          <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Type</label>
          <div class="col-sm-10">          
            <select name="type">
              <option value="Book">Book</option>
              <option value="CD">CD</option>
              <option value="DVD">DVD</option>
              <option value="Vinyl">Vinyl</option>
            </select>
          </div>
        </div>
          <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Status</label>
          <div class="col-sm-10">          
              <select name="status">
              <option value="Available">Available</option>
              <option value="Not Available">Not Available</option>
            </select>
          </div>
        </div>

        <div class="form-group">        
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default" name="submit">Submit</button>
          </div>
        </div>
      </form>
    </div>
    <div class="col-lg-3">
    <h1>Add Address</h1>
    <form class="form-horizontal" action="" method="POST">
        <div class="form-group">
          <label class="control-label col-sm-2" for="full_name">Street</label>
          <div class="col-sm-10">
            <input type="name" class="form-control" placeholder="Enter Name" name="street">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="full_name">ZIP-Code</label>
          <div class="col-sm-10">
            <input type="name" class="form-control" placeholder="Enter Name" name="zipcode">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="full_name">City</label>
          <div class="col-sm-10">
            <input type="name" class="form-control" placeholder="Enter Name" name="city">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="full_name">Country</label>
          <div class="col-sm-10">
            <input type="name" class="form-control" placeholder="Enter Name" name="country">
          </div>
        </div>
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default" name="submit2">Submit</button>
          </div>
      </form>
</div>




    <div class="manageData col-lg-9">
     <!-- <a href="create.php"><button type="button">Add User</button></a> -->
     <table class="table">
       <thead>
         <tr>
           <th>Media ID</th>
           <th>Name</th>
           <th>ISBN</th>
           <th>Image</th>
           <th>Description</th>
           <th>Publish Date</th>
           <th>Publisher Name</th>
           <th>Type</th>
           <th>Status</th>

         </tr>
       </thead>
       <tbody>

         <?php
       // Connection Data
         $servername = "localhost";
         $username   = "root";
         $password   = ""; 
         $dbname     = "cr10_simon_blaha_biglibrary";
// Create connection
         $conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
         if (!$conn) {
           die("Connection failed: " . mysqli_connect_error() . "\n");
         } else {
                // echo "Works!";
         }
// Query SELECT Media_ID, Name, ISBN, Image, Descr, Publish_Date FROM media
         $sql = "SELECT media.Media_ID, media.Name, media.ISBN, media.Image, media.Descr, media.Publish_Date, type.Type, status.Status, publisher.Publisher_Name FROM media
         INNER JOIN publisher ON media.fk_Publisher_ID = publisher.Publisher_ID
         INNER JOIN type ON media.fk_Type_ID = type.Type_ID
         INNER JOIN status ON media.fk_Status_ID = status.Status_ID";
         $result = mysqli_query($conn, $sql);
         $rows = $result->fetch_all(MYSQLI_ASSOC);
// Fetch Data
         foreach ($rows as $val) {
          echo "<tr>
          <td>".$val["Media_ID"]."</td>
          <td>".$val["Name"]."</td>
          <td>".$val["ISBN"]."</td>
          <td><img class='images' src=".$val["Image"]."></td>
          <td>".$val["Descr"]."</td>
          <td>".$val["Publish_Date"]."</td>
          <td>".$val["Publisher_Name"]."</td>
          <td>".$val["Type"]."</td>
          <td>".$val["Status"]."</td>
          <td><button>Edit</button></td>
          <td><a class='btn btn-danger' href='index.php?id=".$val["Media_ID"]."'>Delete</a></td>
          </tr>";
        }
// Insert Record Media
        if (isset($_POST["submit"])) {
$bookname = mysqli_real_escape_string($conn, $_POST['bookname']);
$ISBN = mysqli_real_escape_string($conn, $_POST['ISBN']);
$Image = mysqli_real_escape_string($conn, $_POST['Image']);
$Descr = mysqli_real_escape_string($conn, $_POST['Descr']);
$Publish_Date = mysqli_real_escape_string($conn, $_POST['Publish_Date']);
$Type = mysqli_real_escape_string($conn, $_POST['type']);
$Status = mysqli_real_escape_string($conn, $_POST['status']);
$Publisher = mysqli_real_escape_string($conn, $_POST['publisher']);
$sql = "INSERT INTO media (Media_ID, Name, ISBN, Image, Descr, Publish_Date, fk_Type_ID, fk_Status_ID, fk_Publisher_ID) VALUES (NULL,'$Name', '$ISBN', '$Image', '$Descr', '$Publish_Date', '$Type', '$Status', '$Publisher')";
if (mysqli_query($conn, $sql)) {
   echo "<h1>New record created.</h1>";
} else {
   echo "<h1>Record creation error for: </h1>" . 
         "<p>" . $sql . "</p>" . 
         mysqli_error($conn);
}
mysqli_close($conn);
}
// Insert Address Into Database!
  if (isset($_POST["submit2"])) {
$address = mysqli_real_escape_string($conn, $_POST['street']);
$zip = mysqli_real_escape_string($conn, $_POST['zipcode']);
$city = mysqli_real_escape_string($conn, $_POST['city']);
$country = mysqli_real_escape_string($conn, $_POST['country']);
$sql = "INSERT INTO address (`Address_ID`, `Street`, `ZIP-Code`, `City`, `Country`) VALUES (NULL, 'Groundstreet', 1234, 'Vienna', 'Austria')";
if (mysqli_query($conn, $sql)) {
   echo "<h1>New record created.</h1>";
} else {
   echo "<h1>Record creation error for: </h1>" . 
         "<p>" . $sql . "</p>" . 
         mysqli_error($conn);
}
mysqli_close($conn);
}
//Delete Function
        if(isset($_GET["id"])){
          $id= $_GET["id"];
          $sql = "DELETE FROM media WHERE Media_ID = $id";
          mysqli_query($conn, $sql);
        }
        ?>


      </tbody>
    </table>
  </div>
</div>



</body>
</html>