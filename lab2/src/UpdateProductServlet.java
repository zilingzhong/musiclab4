s
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import music.data.ProductIO;
import music.models.Product;

@WebServlet("/updateProduct")
public class UpdateProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String code = request.getParameter("code");
        String description = request.getParameter("description");
        String priceStr = request.getParameter("price");
        
        double price = Double.parseDouble(priceStr);
        Product product = new Product(code, description, price);
        
        if (action.equals("add")) {
            ProductIO.insertProduct(product);
        } else {
            ProductIO.updateProduct(product);
        }
        
        response.sendRedirect("products");
    }
}