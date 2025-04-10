<?php
include_once "backend/config.php";

if (isset($_GET['id'])) {
    $get_id = $_GET['id'];
    // $delete = mysqli_query($con, "DELETE FROM `person` WHERE Id = '$get_id'");
    $delete = mysqli_query($con, "UPDATE `person` SET `isDeleted`='Deleted' WHERE Id = '$get_id'");


    if ($delete) {
        echo "<script>alert('Data has been deleted successfully!')</script>";
        echo "<script>window.location.href = './'</script>";
        // header("Location: form.php");
    } else {
        echo "Failed to delete data!";
        echo "<script>window.location.href = './'</script>";
    }
}




?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/extensions/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Responsive Order Table</title>
</head>

<body>

    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>N<sup>0</sup></th>
                    <th>FirstName</th>
                    <th>LastName</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Contact</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Date</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
                <?php
                $count = 1;
                $get_data = "SELECT * FROM `person` WHERE isDeleted = 'notDeleted'";
                $result = mysqli_query($con, $get_data);

                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                ?>
                        <tr>
                            <td><?php echo $count++; ?></td>
                            <td><?php echo $row['FirstName']; ?></td>
                            <td><?php echo $row['LastName']; ?></td>
                            <td><?php echo $row['Age']; ?></td>
                            <td><?php echo $row['Gender']; ?></td>
                            <td><?php echo $row['Phone']; ?></td>
                            <td><?php echo $row['Email']; ?></td>
                            <td><?php echo $row['Address']; ?></td>
                            <td><?php echo $row['CurrentDate']; ?></td>
                            <td class="actionBtns">
                                <a href="update.php?id=<?= $row['Id']; ?>">Update</a>
                                <a href="?id=<?= $row['Id']; ?>" onclick="return confirm('Are u sure to delete this record?')">Delete</a>
                            </td>
                        </tr>
                <?php
                    }
                } else {
                    $message[] = "No Records Found";
                }

                ?>
            </tbody>
        </table>
    </div>
</body>

</html>