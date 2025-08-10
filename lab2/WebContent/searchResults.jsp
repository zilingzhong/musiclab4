<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Franklin Music - Search Results</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
    <h1>Search Results</h1>

    <table>
        <tr>
            <th style="width:75px">Code</th>
            <th style="width:500px">Description</th>
            <th style="width:75px;text-align:right">Price</th>
            <th></th>
        </tr>

        <!-- Hardcoded Product 1 -->
        <tr>
            <td>8601</td>
            <td>86 (the band) - True Life Songs and Pictures</td>
            <td style="text-align:right">$14.95</td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="productCode" value="8601">
                    <input type="submit" value="Add To Cart">
                </form>
            </td>
        </tr>

        <!-- Hardcoded Product 2 -->
        <tr>
            <td>pf01</td>
            <td>Paddlefoot - The first CD</td>
            <td style="text-align:right">$12.95</td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="productCode" value="pf01">
                    <input type="submit" value="Add To Cart">
                </form>
            </td>
        </tr>

        <!-- Hardcoded Product 3 -->
        <tr>
            <td>pf02</td>
            <td>Paddlefoot - The second CD</td>
            <td style="text-align:right">$14.95</td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="productCode" value="pf02">
                    <input type="submit" value="Add To Cart">
                </form>
            </td>
        </tr>

        <!-- Hardcoded Product 4 -->
        <tr>
            <td>jr01</td>
            <td>Joe Rut - Genuine Wood Grained Finish</td>
            <td style="text-align:right">$14.95</td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="productCode" value="jr01">
                    <input type="submit" value="Add To Cart">
                </form>
            </td>
        </tr>

        <tr>
            <td colspan="3"></td>
            <td>
                <form action="cart.jsp" method="get">
                    <input type="submit" value="View Cart">
                </form>
            </td>
        </tr>
    </table>
</body>
</html>