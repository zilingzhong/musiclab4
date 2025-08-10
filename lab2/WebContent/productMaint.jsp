<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Product Maintenance</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
    <h1>Products</h1>
    
    <%-- DEBUG OUTPUT --%>
    <div style="background: #f0f0f0; padding: 10px; margin-bottom: 20px;">
        <strong>Debug Info:</strong><br>
        Products attribute exists: ${not empty products}<br>
        Number of products: ${products.size()}
    </div>
    
    <table border="1">
        <tr>
            <th>Code</th>
            <th>Description</th>
            <th>Price</th>
            <th></th>
            <th></th>
        </tr>
        
        <c:forEach items="${products}" var="product">
            <tr>
                <td>${product.code}</td>
                <td>${product.description}</td>
                <td><fmt:formatNumber value="${product.price}" type="currency"/></td>
                <td><a href="editProduct?action=edit&code=${product.code}">Edit</a></td>
                <td><a href="deleteProduct?code=${product.code}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    
    <form action="editProduct" method="get">
        <input type="hidden" name="action" value="add">
        <input type="submit" value="Add Product">
    </form>
</body>
</html>