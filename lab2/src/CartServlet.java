
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import music.data.ProductIO;
import music.models.Cart;
import music.models.Product;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        String action = request.getParameter("action");
        String productCode = request.getParameter("productCode");
        
        if (action != null) {
            Product product = ProductIO.getProduct(productCode);
            switch (action) {
                case "add":
                    cart.addItem(product);
                    break;
                case "update":
                    int quantity = Integer.parseInt(request.getParameter("quantity"));
                    // Update logic here
                    break;
                case "remove":
                    // Remove logic here
                    break;
            }
        }
        
        response.sendRedirect("cart.jsp");
    }
}