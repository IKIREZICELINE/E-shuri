<?php
include_once "backend/config.php";

if (isset($_POST['save'])) {
    $firstName = mysqli_real_escape_string($con, $_POST['fname']);
    $lastName = mysqli_real_escape_string($con, $_POST['lname']);
    $age = mysqli_real_escape_string($con, $_POST['age']);
    $gender = mysqli_real_escape_string($con, $_POST['gender']);
    $phone = mysqli_real_escape_string($con, $_POST['phone']);
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $address = mysqli_real_escape_string($con, $_POST['address']);
    $date = mysqli_real_escape_string($con, $_POST['date']);

    $query = mysqli_query($con, "INSERT INTO `person`(`FirstName`, `LastName`, `Age`, `Gender`, `Phone`, `Email`, `Address`, `Date`)
    VALUES ('$firstName', '$lastName', '$age', '$gender', '$phone', '$email', '$address', '$date')");

    if ($query) {
        echo "<script>alert('New data submission saved successfully!')</script>";
        echo "<script>window.location.href = 'form.php'</script>";
        // header("Location: form.php");    
    } else {
        echo "Failed to saved data!";
    }


    // echo "$address";
    // echo "$email";
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>

    <!-- Link CSS -->
    <link rel="stylesheet" href="assets/css/form.css">
</head>

<style>
    .btns-container,
    .flex-field {
        display: flex;
        gap: 10px;
    }

    .flex-field>div {
        width: 100%;
    }

    .btns-container .btnChild {
        width: 100%;
    }

    .s-child button {
        background-color: red !important;
    }
</style>

<body>

    <div class="container">
        <div class="form-box">
            <h2>Student Registration</h2>
            <p>Fill in the details below to create an account</p>

            <form action="form.php" method="post" enctype="multipart/form-data">
                <!-- Flex row for fname & lname -->
                <div class="flex-row">
                    <div class="input-group">
                        <label for="fname">First Name</label>
                        <input type="text" name="fname" id="fname" placeholder="Enter first name" required>
                    </div>

                    <div class="input-group">
                        <label for="lname">Last Name</label>
                        <input type="text" name="lname" id="lname" placeholder="Enter last name" required>
                    </div>
                </div>

                <div class="input-group">
                    <label for="age">Age</label>
                    <input type="number" name="age" id="age" min="10" max="100" placeholder="Enter age" required>
                </div>

                <!-- Gender Selection -->
                <div class="input-group">
                    <label for="gender">Gender</label>
                    <select name="gender" id="gender" required>
                        <option value="">Select Gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                </div>

                <div class="input-group">
                    <label for="phone">Phone</label>
                    <!-- <input type="tel" name="phone" id="phone" pattern="[0-9]{10,13}" placeholder="Enter phone number"
                        required> -->
                    <input type="tel" name="phone" id="phone" placeholder="Enter phone number"
                        required>
                </div>

                <div class="flex-field">
                    <div class="input-group">
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email" placeholder="Enter email" required>
                    </div>
                    <div class="input-group">
                        <label for="date">Date</label>
                        <input type="date" name="date" id="date" required>
                    </div>
                </div>

                <div class="input-group">
                    <label for="address">Address</label>
                    <textarea name="address" id="address" rows="3" placeholder="Enter your address" required></textarea>
                </div>

                <div class="btns-container">
                    <div class="f-child btnChild">
                        <button type="submit" name="save" onclick="return confirm('First, check if filled information are correct before submitting!\nIf OK, Continue or cancel.')">Register</button>
                    </div>
                    <div class="s-child btnChild">
                        <button type="reset">Reset</button>
                    </div>
                </div>

                <p class="login-text">Already have an account? <a href="#">Login</a></p>
            </form>
        </div>
    </div>


    <script>
        // function className() {
        //     var name = "eShuri";
        //     return console.log(name);
        // }

        // className();
    </script>

</body>

</html>


<?php
if (isset($_POST['update'])) {
    $Id = $_POST['id'];
    $FirstName = $_POST['FirstName'];
    $LastName = $_POST['LastName'];
    $Age = $_POST['Age'];
    $Email = $_POST['Email'];
    $Gender = $_POST['Gender'];
    $Phone = $_POST['Phone'];
    $Address = $_POST['Address'];

    $update = mysqli_query($con, "UPDATE  `person`SET  `FirstName`='[$FirstName]', `LastName`='[$LastName]',`Age`='[$Age]' ,`Gender`='[$Gender]' ,`Email`='[$Email]',`Address`='[$Address]',`isDeleted`='[Deleted]',`Date`='[$Date]'  WHERE id='{$id}'");
    

    if ($update) {
        header("location: index.php");
    } else {
        echo "failed to update";
    }
}
?>