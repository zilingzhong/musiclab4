
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import music.data.ProductIO;
import music.models.Product;

@WebServlet("/editProduct")
public class EditProductServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String code = request.getParameter("code");
        
        Product product;
        if (action.equals("add")) {
            product = new Product();
        } else {
            product = ProductIO.getProduct(code);
        }
        
        request.setAttribute("product", product);
        request.setAttribute("action", action);
        request.getRequestDispatcher("/editProduct.jsp").forward(request, response);
    }
}