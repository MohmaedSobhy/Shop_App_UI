import 'package:shop_ui/feature/home/data/model/product.dart';

class CartItem {
  int quantity;
  Product product;

  CartItem({
    required this.quantity,
    required this.product,
  });
}

List<CartItem> cartItems = [
  CartItem(quantity: 2, product: products[0]),
  CartItem(quantity: 1, product: products[1]),
];

double getTotalPrice() {
  double totalPrice = 0;
  for (CartItem item in cartItems) {
    totalPrice += (item.quantity * item.product.price);
  }
  return totalPrice;
}
