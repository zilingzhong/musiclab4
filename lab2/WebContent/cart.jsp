<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Your Cart</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
    <h1>Your Cart</h1>
    
    <c:if test="${empty cart.items}">
        <p>Your cart is empty</p>
    </c:if>
    
    <c:if test="${not empty cart.items}">
        <table>
            <tr>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
                <th></th>
            </tr>
            
            <c:forEach items="${cart.items}" var="item">
                <tr>
                    <td>${item.product.description}</td>
                    <td><fmt:formatNumber value="${item.product.price}" type="currency"/></td>
                    <td>
                        <form action="cart" method="post">
                            <input type="hidden" name="action" value="update">
                            <input type="hidden" name="productCode" value="${item.product.code}">
                            <input type="number" name="quantity" value="${item.quantity}" min="1">
                            <input type="submit" value="Update">
                        </form>
                    </td>
                    <td><fmt:formatNumber value="${item.product.price * item.quantity}" type="currency"/></td>
                    <td>
                        <form action="cart" method="post">
                            <input type="hidden" name="action" value="remove">
                            <input type="hidden" name="productCode" value="${item.product.code}">
                            <input type="submit" value="Remove">
                        </form>
                    </td>
                </tr>
            </c:forEach>
            
            <tr>
                <td colspan="3">Subtotal:</td>
                <td><fmt:formatNumber value="${cart.total}" type="currency"/></td>
                <td></td>
            </tr>
        </table>
    </c:if>
    
    <form action="products" method="get">
        <input type="submit" value="Continue Shopping">
    </form>
</body>
</html>