<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Product</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
    <h1>Edit Product</h1>
    
    <form action="updateProduct" method="post">
        <input type="hidden" name="action" value="${param.action}">
        
        <label>Code:</label>
        <c:choose>
            <c:when test="${param.action eq 'add'}">
                <input type="text" name="code" value="${product.code}" required><br>
            </c:when>
            <c:otherwise>
                <input type="text" name="code" value="${product.code}" readonly><br>
            </c:otherwise>
        </c:choose>
        
        <label>Description:</label>
        <input type="text" name="description" value="${product.description}" required><br>
        
        <label>Price:</label>
        <input type="number" name="price" step="0.01" min="0" 
               value="${product.price}" required><br>
        
        <input type="submit" value="${param.action eq 'add' ? 'Add' : 'Update'} Product">
    </form>
    
    <form action="productMaint.jsp" method="get">
        <input type="submit" value="View Products">
    </form>
</body>
</html>