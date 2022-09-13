<?php
include("../config/db_con.php");
if(isset($_POST['create_category'])) { 
 $category = $_POST['category_name'];
 $query = "INSERT INTO categories(category_name) VALUES('$category')";
 $result = mysqli_query($link, $query);
 if($result)
 { 
  header("location: ../admin/category_index.php");
 } else  { 
  echo "<script>alert('Category Not Created')</script>";
  echo "<script>window.open('category_index.php','_self)</script>";
 }
}
?>