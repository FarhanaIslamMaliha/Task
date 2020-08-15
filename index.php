<?php

$json = file_get_contents('https://content.guardianapis.com/search?api-key=33a97901-007c-4084-a852-5b4267bca64c&fbclid=IwAR1bg-v7j_L7O7HBZnmBp9J5VtcTnceOj0yOEHXW6cYociXIrFP1AsCl29Y');
$obj = json_decode($json);
$conn = new mysqli("localhost", "root", "", "task") or die("error");


$array = $obj->response->results;
$my =json_encode($array);
foreach ($array as $row){
    $id=$conn->real_escape_string($row->id);
    $type=$conn->real_escape_string($row->type);
    $sectionId=$conn->real_escape_string($row->sectionId);
    $sectionName=$conn->real_escape_string($row->sectionName);
    $webPublicationDate=$conn->real_escape_string($row->webPublicationDate);
    $webTitle=$conn->real_escape_string($row->webTitle);
    $webUrl=$conn->real_escape_string($row->webUrl);    
    $apiUrl=$conn->real_escape_string($row->apiUrl);  
    $isHosted=$conn->real_escape_string($row->isHosted);  
    $pillarId=$conn->real_escape_string($row->pillarId);
    $pillarName=$conn->real_escape_string($row->pillarName);                                              

  $sql ="INSERT INTO results(id, type, sectionId, sectionName, webPublicationDate, webTitle, webUrl , apiUrl , isHosted, pillarId, pillarName) VALUES('$id','$type','$sectionId','$sectionName',
    '$webPublicationDate','$webTitle','$webUrl','$apiUrl','$isHosted', 
   '$pillarId','$pillarName')";

    $query=$conn->query($sql);
 
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Task</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <table style="width:100%" class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">id</th>
                <th scope="col">type</th>
                <th scope="col">sectionId</th>
                <th scope="col">sectionName</th>
                <th scope="col">webPublicationDate</th>
                <th scope="col">webTitle</th>
                <th scope="col">webUrl</th>
                <th scope="col">apiUrl</th>
                <th scope="col">isHosted</th>
                <th scope="col">pillarId</th>
                <th scope="col">pillarName</th>
            </tr>
        </thead>
        <tbody>
    <?php
            $sql = "SELECT * FROM results";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
        ?>
      <tr>
      <td><?php echo $row["id"]; ?></td>
      <td><?php echo $row["type"]; ?></td>
      <td><?php echo $row["sectionId"]; ?></td>
      <td><?php echo $row["sectionName"]; ?></td>
      <td><?php echo $row["webPublicationDate"]; ?></td>
      <td><?php echo $row["webTitle"]; ?></td>
      <td><?php echo $row["webUrl"]; ?></td>
      <td><?php echo $row["apiUrl"]; ?></td>
      <td><?php echo $row["isHosted"]; ?></td>
      <td><?php echo $row["pillarId"]; ?></td>
      <td><?php echo $row["pillarName"]; ?></td>
      </tr>
        <?php }
        } else {
                echo "0 results";
        }
            ?>
</tbody>
    </table>

    <script src="js/jquery-1.12.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/popper.min.js"></script>
</body>

</html>
