<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Order Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Order Form</h1>

        <form action="process_order.php" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="customer_name" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" name="customer_address" id="address" class="form-control">
            </div>
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="text" name="customer_phone" id="phone" class="form-control">
            </div>
            <div class="form-group">
                <label for="product">Product:</label>
                <select class="form-control" id="product" name="product">
                    <option value="apples">Apples</option>
                    <option value="bananas">Bananas</option>
                    <option value="oranges">Oranges</option>
                </select><br>
            </div>
            <div class="form-group">
                <label for="quantity">Quantity:</label>
                <input type="number" name="quantity" id="quantity" class="form-control">
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" name="price" id="price" class="form-control">
            </div>
            <div class="form-group">
                <label for="taxable">Taxable:</label>
                <input type="checkbox" name="tax_status" id="taxable"><br>
                <small>tax rate is fixed to 8%</small>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>