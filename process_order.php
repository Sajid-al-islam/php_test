<?php

$conn = mysqli_connect('localhost', 'root', '', 'cart-php');
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$customer_name = filter_var($_POST['customer_name'], FILTER_SANITIZE_STRING);
$customer_address = filter_var($_POST['customer_address'], FILTER_SANITIZE_STRING);
$customer_phone = filter_var($_POST['customer_phone'], FILTER_SANITIZE_STRING);
$product = $_POST['product'];
$quantity = intval($_POST['quantity']);
$price = floatval($_POST['price']);
$tax_status = isset($_POST['tax_status']);

if($tax_status == false) {
    $tax_status = 0;
}

if ($quantity <= 0 || $quantity > 10) {
    $error_message = "Invalid quantity";
    echo $error_message;
    // display error message
}

if ($price <= 0.0) {
    $error_message = "Invalid price";
    echo $error_message;
    // display error message
}

// perform other validation checks as needed


if ($tax_status) {
    $tax_rate = 0.08; // assume a tax rate of 8%
    $total_cost = $quantity * $price * (1 + $tax_rate);
} else {
    $total_cost = $quantity * $price;
}

$to = 'sajid285.me@gmail.com';
$subject = 'New Order';
$message = "Customer Name: $customer_name\n"
. "Customer Address: $customer_address\n"
. "Customer Phone: $customer_phone\n"
. "Item Name: $product\n"
. "Quantity: $quantity\n"
. "Price: $price\n"
. "Taxable: " . ($tax_status ? 'Yes' : 'No') . "\n"
. "Total Cost: $total_cost\n";

$headers = 'From: webmaster@example.com' . "\r\n" .
'Reply-To: webmaster@example.com' . "\r\n" .
'X-Mailer: PHP/' . phpversion();

mail($to, $subject, $message, $headers);


$sql = "INSERT INTO orders (customer_name, customer_address, customer_phone, product, quantity, price, tax_status, total_cost)
VALUES ('$customer_name', '$customer_address', '$customer_phone', '$product', $quantity, $price, $tax_status, $total_cost)";

if (mysqli_query($conn, $sql)) {
    echo "Your order was successfully submitted.";
} else {
    echo "There was a problem with your order. Please try again later.";
}



mysqli_close($conn);

?>