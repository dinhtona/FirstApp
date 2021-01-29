part of 'catalog_bloc.dart';

abstract class CatalogState extends Equatable {
  const CatalogState();

  @override
  List<Object> get props => [];
}

class CatalogInitial extends CatalogState {}

class CatalogLoading extends CatalogState {
  List<Object> get props => [];
}

class CatalogLoaded extends CatalogState {
  CatalogLoaded({this.catalog});

  final Catalog catalog;
  List<Object> get props => [catalog];
}

class CatalogError extends CatalogState {
  List<Object> get props => [];
}
