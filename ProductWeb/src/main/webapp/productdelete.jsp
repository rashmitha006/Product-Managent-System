<!-- productdelete.jsp content goes here -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h2>Delete Product</h2>
    <form action="deleteProduct" method="post">
        Product ID: <input type="number" name="productID" required><br><br>
        <input type="submit" value="Delete Product">
    </form>

    <p style="color:green;">
        <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
    </p>
</body>
</html>
