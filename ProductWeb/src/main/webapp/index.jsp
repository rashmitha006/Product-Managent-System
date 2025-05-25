<!DOCTYPE html>
<html>
<head>
    <title>Product Inventory Management System</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f8f8;
            text-align: center;
            padding: 50px;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 30px;
        }

        .button {
            display: block;
            width: 250px;
            padding: 12px;
            margin: 15px auto;
            font-size: 18px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 8px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Product Inventory Management System</h1>
    <a href="productadd.jsp" class="button">Add Product</a>
    <a href="productupdate.jsp" class="button">Update Product</a>
    <a href="productdelete.jsp" class="button">Delete Product</a>
    <a href="productdisplay.jsp" class="button">Display All Products</a>
    <a href="report_form.jsp" class="button">Generate Reports</a>
</body>
</html>
