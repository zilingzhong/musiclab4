package music.data;

import java.util.ArrayList;
import java.util.List;
import music.models.Product;

public class ProductIO {
    private static final List<Product> products;

    static {
        System.out.println("INITIALIZING PRODUCTS..."); // Debug line

        products = new ArrayList<>();
        // Initialize with sample products
        products.add(new Product("8601", 
                "86 (the band) - True Life Songs and Pictures", 14.95));
        products.add(new Product("pf01", 
                "Paddlefoot - The first CD", 12.95));
        products.add(new Product("pf02", 
                "Paddlefoot - The second CD", 14.95));
        products.add(new Product("jr01", 
                "Joe Rut - Genuine Wood Grained Finish", 14.95));
    }

    public static List<Product> getProducts() {
        // Return a copy to prevent external modification
        System.out.println("GETTING PRODUCTS, COUNT: " + products.size()); // Debug
        return new ArrayList<>(products); // Return copy
    }

    public static Product getProduct(String productCode) {
        for (Product product : products) {
            if (product.getCode().equalsIgnoreCase(productCode)) {
                return product;
            }
        }
        return null; // Return null if not found
    }

    public static void insertProduct(Product product) {
        // Check if product already exists
        if (getProduct(product.getCode()) == null) {
            products.add(product);
        } else {
            throw new IllegalArgumentException(
                "Product with code " + product.getCode() + " already exists");
        }
    }

    public static void updateProduct(Product updatedProduct) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getCode().equalsIgnoreCase(updatedProduct.getCode())) {
                products.set(i, updatedProduct);
                return;
            }
        }
        throw new IllegalArgumentException(
            "Product with code " + updatedProduct.getCode() + " not found");
    }

    public static void deleteProduct(String code) {
        products.removeIf(product -> 
            product.getCode().equalsIgnoreCase(code));
    }
}