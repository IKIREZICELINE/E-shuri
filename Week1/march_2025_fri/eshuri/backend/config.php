<?php
$con = mysqli_connect('localhost', 'root', '', 'cel');

// Check if a database connection established

if (!$con) {
    echo "Failed to connect on the db.";
}
