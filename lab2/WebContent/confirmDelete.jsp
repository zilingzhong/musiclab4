<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Confirm Delete</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
    <h1>Are you sure you want to delete this product?</h1>

    <!-- Hardcoded Product Details (pf01) -->
    <table>
        <tr><td><b>Code:</b></td><td>pf01</td></tr>
        <tr><td><b>Description:</b></td><td>Paddlefoot - The first CD</td></tr>
        <tr><td><b>Price:</b></td><td>$12.95</td></tr>
    </table>

    <!-- Form with hardcoded product code -->
    <form action="productMaint.jsp" method="post">
        <input type="hidden" name="code" value="pf01">
        <input type="submit" value="Yes">
    </form>
    
    <form action="products" method="get">
        <input type="submit" value="No">
    </form>
</body>
</html>