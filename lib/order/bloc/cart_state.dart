part of 'cart_bloc.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}

class CartLoading extends CartState {
  List<Object> get props => [];
}

class CartLoaded extends CartState {
  CartLoaded({this.cart = const Cart()});

  final Cart cart;

  int quantity(int itemID) {
    if (cart.items.isNotEmpty) {
      int id = cart.items.indexWhere((w) => w.id == itemID);
      if (id >= 0) {
        return cart.items[id].quantity;
      } else
        return 0;
    }
    return 0;
  }

  List<Object> get props => [cart];
}

class CartError extends CartState {
  List<Object> get props => [];
}
