<?php
include_once "backend/config.php";

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $select = mysqli_query($con, "SELECT * FROM `person` WHERE Id = '$id'");
    $row = mysqli_fetch_assoc($select);
}

if (isset($_POST['update'])) {
    $id = $_POST['id'];
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $age = $_POST['age'];
    $gender = $_POST['gender'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $address = $_POST['address'];

    $update = mysqli_query($con, "UPDATE `person` SET 
        `FirstName`='$firstName',
        `LastName`='$lastName',
        `Age`='$age',
        `Gender`='$gender',
        `Phone`='$phone',
        `Email`='$email',
        `Address`='$address'
        WHERE Id = '$id'");

    if ($update) {
        echo "<script>alert('Record updated successfully!');</script>";
        echo "<script>window.location.href = './';</script>";
    } else {
        echo "<script>alert('Failed to update record!');</script>";
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
    <title>Update Record</title>
    <style>
        .form-container {
            width: 700px;
            margin: 50px auto;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border-radius: 8px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .btn-container button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-container a {
            padding: 10px 20px;
            background-color: #6c757d;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin-left: 10px;
        }
    </style>
</head>

<body>
    <div class="form-container">
        <h2 class="text-center mb-4">Update Student</h2>
        <form action="" method="post">
            <input type="hidden" name="id" value="<?php echo $row['Id']; ?>">

            <div class="form-group">
                <label>First Name</label>
                <input type="text" name="firstName" value="<?php echo $row['FirstName']; ?>" required>
            </div>

            <div class="form-group">
                <label>Last Name</label>
                <input type="text" name="lastName" value="<?php echo $row['LastName']; ?>" required>
            </div>

            <div class="form-group">
                <label>Age</label>
                <input type="number" name="age" value="<?php echo $row['Age']; ?>" required>
            </div>

            <div class="form-group">
                <label>Gender</label>
                <select name="gender" class="form-control" required>
                    <option value="Male" <?php echo ($row['Gender'] == 'Male') ? 'selected' : ''; ?>>Male</option>
                    <option value="Female" <?php echo ($row['Gender'] == 'Female') ? 'selected' : ''; ?>>Female</option>
                </select>
            </div>

            <div class="form-group">
                <label>Phone</label>
                <input type="text" name="phone" value="<?php echo $row['Phone']; ?>" required>
            </div>

            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" value="<?php echo $row['Email']; ?>" required>
            </div>

            <div class="form-group">
                <label>Address</label>
                <input type="text" name="address" value="<?php echo $row['Address']; ?>" required>
            </div>

            <div class="btn-container">
                <button type="submit" name="update">Update</button>
                <a href="./">Cancel</a>
            </div>
        </form>
    </div>
</body>

</html>