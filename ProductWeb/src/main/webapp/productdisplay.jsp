<!-- productdisplay.jsp content goes here -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.model.Product" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Product List</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h2>All Products</h2>

    <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
    %>
        <p style="color:red;"><%= message %></p>
    <%
        }
    %>

    <%
        List<Product> products = (List<Product>) request.getAttribute("products");
        if (products != null && !products.isEmpty()) {
    %>
        <table border="1" cellpadding="8">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Category</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr>
            <%
                for (Product product : products) {
            %>
                <tr>
                    <td><%= product.getProductID() %></td>
                    <td><%= product.getProductName() %></td>
                    <td><%= product.getCategory() %></td>
                    <td><%= product.getPrice() %></td>
                    <td><%= product.getQuantity() %></td>
                </tr>
            <%
                }
            %>
        </table>
    <%
        } else {
    %>
        <p>No products found.</p>
    <%
        }
    %>
</body>
</html>
