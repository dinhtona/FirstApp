part of 'catalog_bloc.dart';

abstract class CatalogEvent extends Equatable {
  const CatalogEvent();

  @override
  List<Object> get props => [];
}

class CatalogStarted extends CatalogEvent {
  List<Object> get props => [];
}

class CatalogItemAdded extends CatalogEvent {
  CatalogItemAdded(this.item);
  final Catalog item;
  List<Object> get props => [];
}

class CatalogItemRemoved extends CatalogEvent {
  CatalogItemRemoved(this.item);

  final Catalog item;
  List<Object> get props => [item];
}

class CatalogItemUpdated extends CatalogEvent {
  CatalogItemUpdated(this.item);
  final Catalog item;

  List<Object> get props => [item];
}
