package music.models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

public class Cart implements Serializable {
    private static final long serialVersionUID = 1L;
    private List<CartEntry> items = new ArrayList<>();

    public void addItem(Product product) {
        for (CartEntry item : items) {
            if (item.getProduct().getCode().equals(product.getCode())) {
                item.setQty(item.getQty() + 1);
                return;
            }
        }
        items.add(new CartEntry(product, 1));
    }

    public void updateItem(String productCode, int quantity) {
        for (CartEntry item : items) {
            if (item.getProduct().getCode().equals(productCode)) {
                if (quantity <= 0) {
                    items.remove(item);
                } else {
                    item.setQty(quantity);
                }
                break;
            }
        }
    }

    public void removeItem(String productCode) {
        items.removeIf(new Predicate<CartEntry>() {
			@Override
			public boolean test(CartEntry item) {
				return item.getProduct().getCode().equals(productCode);
			}
		});
    }

    public List<CartEntry> getItems() { return items; }

    public double getTotal() {
        return items.stream()
                   .mapToDouble(item -> item.getProduct().getPrice() * item.getQty())
                   .sum();
    }

    public int getItemCount() {
        return items.stream()
                   .mapToInt(CartEntry::getQty)
                   .sum();
    }
}