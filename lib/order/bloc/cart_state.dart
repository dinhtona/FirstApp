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

  List<Object> get props => [cart];
}

class CartError extends CartState {
  List<Object> get props => [];
}
