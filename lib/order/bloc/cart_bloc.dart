import 'dart:async';
import 'package:FirstApp/order/bloc/cart_repository.dart';
import 'package:FirstApp/order/models/cart.dart';
import 'package:FirstApp/order/models/item_order.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial());

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    if (event is CartStarted) {
      yield* _mapCartStartedToState();
      // } else if (event is CartItemAdded) {
      //   yield* _mapCartItemAddedToState(event, state);
      // } else if (event is CartItemRemoved) {
      //   yield* _mapCartItemRemovedToState(event, state);
    } else if (event is CartItemUpdated) {
      yield* _mapCartItemUpdatedToState(event, state);
    } else if (event is CartItemCleared) {
      yield* _mapCartItemClearedToState(event, state);
    }
  }
}

Stream<CartState> _mapCartStartedToState() async* {
  yield CartLoading();
  try {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield CartLoaded(cart: new Cart(items: []));
  } catch (_) {
    yield CartError();
  }
}

// Stream<CartState> _mapCartItemAddedToState(
//   CartItemAdded event,
//   CartState state,
// ) async* {
//   if (state is CartLoaded) {
//     try {
//       int id = state.cart.items.indexWhere((o) => o.id == event.item.id);
//       ItemOrder item;
//       if (id >= 0) {
//         int quantity = state.cart.items[id].quantity + event.item.quantity;
//         if (quantity <= 0) {
//           yield CartLoaded(
//             cart: Cart(items: List.of(state.cart.items)..removeAt(id)),
//           );
//         } else {
//           item = ItemOrder(event.item.id, event.item.name, event.item.price, '',
//               quantity: quantity);
//           var newList = state.cart.items;
//           newList.removeAt(id);

//           yield CartLoaded(
//             cart: Cart(items: List.of(newList)..add(item)),
//           );
//         }
//       } else {
//         yield CartLoaded(
//           cart: Cart(items: List.of(state.cart.items)..add(event.item)),
//         );
//       }
//     } on Exception {
//       yield CartError();
//     }
//   }
// }

// Stream<CartState> _mapCartItemRemovedToState(
//   CartItemRemoved event,
//   CartState state,
// ) async* {
//   if (state is CartLoaded) {
//     try {
//       int id = state.cart.items.indexWhere((o) => o.id == event.item.id);
//       ItemOrder item;
//       if (id >= 0) {
//         int quantity = state.cart.items[id].quantity - event.item.quantity;
//         if (quantity <= 0) {
//           yield CartLoaded(
//             cart: Cart(items: List.of(state.cart.items)..removeAt(id)),
//           );
//         } else {
//           item = ItemOrder(event.item.id, event.item.name, event.item.price, '',
//               quantity: quantity);
//           var newList = state.cart.items;
//           newList.removeAt(id);

//           yield CartLoaded(
//             cart: Cart(items: List.of(newList)..add(item)),
//           );
//         }
//       } else {
//         // yield CartLoaded(
//         //   cart: Cart(items: List.of(state.cart.items)..add(item)),
//         // );
//       }
//     } on Exception {
//       yield CartError();
//     }
//   }
// }

Stream<CartState> _mapCartItemUpdatedToState(
  CartItemUpdated event,
  CartState state,
) async* {
  if (state is CartLoaded) {
    try {
      int id = state.cart.items.indexWhere((o) => o.id == event.item.id);

      if (id >= 0) {
        if (event.item.quantity <= 0) {
          yield CartLoaded(
            cart: Cart(items: List.of(state.cart.items)..removeAt(id)),
          );
        } else {
          var newList = state.cart.items;
          newList.removeAt(id);

          yield CartLoaded(
            cart: Cart(items: List.of(newList)..add(event.item)),
          );
        }
      } else {
        yield CartLoaded(
          cart: Cart(items: List.of(state.cart.items)..add(event.item)),
        );
      }
    } on Exception {
      yield CartError();
    }
  }
}

Stream<CartState> _mapCartItemClearedToState(
  CartItemCleared event,
  CartState state,
) async* {
  if (state is CartLoaded) {
    try {
      yield CartLoaded(
        cart: Cart(items: List.of(state.cart.items)..clear()),
      );
    } on Exception {
      yield CartError();
    }
  }
}
