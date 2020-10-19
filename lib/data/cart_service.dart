import 'package:bloc_sample/models/cart.dart';

class CartService {
  static var cartItems = List<Cart>();

  static CartService _singleton = CartService._interval();

  factory CartService() {
    return _singleton;
  }

  CartService._interval();

  static void addToCart(Cart item){
    cartItems.add(item);
  }
  static void removeFromCart(Cart item){
    cartItems.remove(item);
  }
  static List<Cart> getCart(){
    return cartItems;
  }

}
