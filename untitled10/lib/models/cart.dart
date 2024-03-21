import 'package:flutter/foundation.dart';
import 'package:untitled10/models/shoe.dart';

class Cart extends ChangeNotifier{
//   list of shoes for sale
List<Shoe> shoeShop = [
  Shoe(
      name: 'Air Max',
      price: 'Ksh.3500',
      imagepath: 'lib/Images/airMax91.webp',
      description: "Glides you through the air"
  ),
  Shoe(
      name: 'Air Jordan1',
      price: 'Ksh.3500',
      imagepath: 'lib/Images/nikeJ1.webp',
      description: "Get that stylish look"
  ),
  Shoe(
      name: 'Air Force 1',
      price: 'Ksh.2500',
      imagepath: 'lib/Images/airForce1.webp',
      description: "Get the power to be"
  ),
  Shoe(
      name: 'Air 270',
      price: 'Ksh.3500',
      imagepath: 'lib/Images/nike270.webp',
      description: "Glides you through the air"
  )
];
// list of items in user cart
List<Shoe> userCart = [];

// get list of shoes for sale
List<Shoe> getShoeList(){
  return shoeShop;
}
// get cart
List<Shoe> getUserCart(){
  return userCart;
}

// add items to cart
void addItemsToCart(Shoe shoe){
  userCart.add(shoe);
  notifyListeners();
}

// remove item from cart
void removeItemFromCart(Shoe shoe){
  userCart.remove(shoe);
  notifyListeners();
}



}