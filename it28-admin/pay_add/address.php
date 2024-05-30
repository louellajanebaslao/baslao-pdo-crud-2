<?php
require_once 'address_config.php'; // Include database connection configuration

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $streetAddress = $_POST['streetAddress'];
    $city = $_POST['city'];
    $state = $_POST['state'];
    $postalCode = $_POST['postalCode'];
    $country = $_POST['country'];
    $paymentId = $_GET['paymentId']; // Retrieve payment ID from URL parameter

    if (empty($paymentId)) {
        echo "Error: Payment ID is missing.";
        exit; // Stop execution if payment ID is missing
    }

    // Insert data into addresses table
    $sql = "INSERT INTO addresses (street_address, city, state, postal_code, country, payment_id) 
            VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$streetAddress, $city, $state, $postalCode, $country, $paymentId]);

    if ($stmt->rowCount() > 0) {
        echo "Address recorded successfully!";
    } else {
        echo "Error: Unable to record address.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Address Form</title>
</head>
<body>
    <h2>Enter Full Address</h2>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>?paymentId=<?php echo $_GET['paymentId']; ?>" method="post">
        <label for="streetAddress">Street Address:</label><br>
        <input type="text" id="streetAddress" name="streetAddress"><br><br>

        <label for="city">City:</label><br>
        <input type="text" id="city" name="city"><br><br>

        <label for="state">State:</label><br>
        <input type="text" id="state" name="state"><br><br>

        <label for="postalCode">Postal Code:</label><br>
        <input type="text" id="postalCode" name="postalCode"><br><br>

        <label for="country">Country:</label><br>
        <input type="text" id="country" name="country"><br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
