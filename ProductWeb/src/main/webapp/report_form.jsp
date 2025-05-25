<!-- report_form.jsp content goes here -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Report Criteria</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h2>Generate Reports</h2>
    <form action="reportCriteria" method="post">
        <h3>Products with price greater than:</h3>
        <input type="number" step="0.01" name="price" /><br><br>

        <h3>Products in category:</h3>
        <input type="text" name="category" /><br><br>

        <h3>Top N products by quantity:</h3>
        <input type="number" name="topN" /><br><br>

        <input type="submit" value="Generate Report" />
    </form>
</body>
</html>
