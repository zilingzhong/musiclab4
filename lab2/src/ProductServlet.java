
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import music.data.ProductIO;
import music.models.Product;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        System.out.println("PRODUCT SERVLET CALLED"); // Debug
        
        List<Product> products = ProductIO.getProducts();
        request.setAttribute("products", products);
        
        System.out.println("FORWARDING TO JSP WITH: " + products.size() + " PRODUCTS"); // Debug
        request.getRequestDispatcher("/productMaint.jsp").forward(request, response);
    }
}