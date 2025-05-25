<!-- report_result.jsp content goes here -->
<%@ page import="java.util.*, com.model.Product, com.dao.ProductDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Report Result</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%
    ProductDAO dao = new ProductDAO();
    String priceStr = (String) request.getAttribute("price");
    String category = (String) request.getAttribute("category");
    String topNStr = (String) request.getAttribute("topN");

    if (priceStr != null && !priceStr.isEmpty()) {
        double price = Double.parseDouble(priceStr);
        List<Product> result = dao.getProductsAbovePrice(price);
%>
    <h3>Products with price > <%= price %></h3>
    <ul>
        <% for (Product p : result) { %>
            <li><%= p.getProductName() %> - ₹<%= p.getPrice() %></li>
        <% } %>
    </ul>
<% } %>

<% if (category != null && !category.isEmpty()) {
    List<Product> result = dao.getProductsByCategory(category);
%>
    <h3>Products in category "<%= category %>"</h3>
    <ul>
        <% for (Product p : result) { %>
            <li><%= p.getProductName() %> - Qty: <%= p.getQuantity() %></li>
        <% } %>
    </ul>
<% } %>

<% if (topNStr != null && !topNStr.isEmpty()) {
    int topN = Integer.parseInt(topNStr);
    List<Product> result = dao.getTopNProducts(topN);
%>
    <h3>Top <%= topN %> Products by Quantity</h3>
    <ul>
        <% for (Product p : result) { %>
            <li><%= p.getProductName() %> - Qty: <%= p.getQuantity() %></li>
        <% } %>
    </ul>
<% } %>
</body>
</html>
