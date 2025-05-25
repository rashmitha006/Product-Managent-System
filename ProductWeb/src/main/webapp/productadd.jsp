<!-- productadd.jsp content goes here -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h2>Add New Product</h2>
    <form action="addProduct" method="post">
        Product ID: <input type="number" name="productID" required><br><br>
        Name: <input type="text" name="productName" required><br><br>
        Category: <input type="text" name="category" required><br><br>
        Price: <input type="number" step="0.01" name="price" required><br><br>
        Quantity: <input type="number" name="quantity" required><br><br>
        <input type="submit" value="Add Product">
    </form>

    <p style="color:green;">
        <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
    </p>
</body>
</html>
