import 'dart:async';

import 'package:FirstApp/order/bloc/cart_repository.dart';
import 'package:FirstApp/order/models/catalog.dart';
import 'package:FirstApp/order/models/item_order.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc() : super(CatalogInitial());

  @override
  Stream<CatalogState> mapEventToState(
    CatalogEvent event,
  ) async* {
    if (event is CatalogStarted) {
      yield* _mapCatalogToState();
    } else if (event is CatalogItemAdded) {
      yield* _mapCatalogItemAddedToState(event, state);
    }
    // TODO: implement mapEventToState
  }
}

Stream<CatalogState> _mapCatalogToState() async* {
  yield CatalogLoading();
  try {
    var lst = await Future<List<ItemOrder>>.delayed(
        const Duration(seconds: 2), () => lstItem);
    yield CatalogLoaded(catalog: new Catalog(items: lst));
  } catch (Exception) {
    yield CatalogError();
  }
}

Stream<CatalogState> _mapCatalogItemAddedToState(
  CatalogItemAdded event,
  CatalogState state,
) async* {
  if (event is CatalogLoaded) {/*do somthing*/}
  //todo
}
