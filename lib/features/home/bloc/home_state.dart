// BUILD STATES ->  The states that build the UI
// ACTION STATES -> The states that are used to perform actions
part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

//B U I L D   S T A T E S
class HomeInitial extends HomeState {}

//while loading
class HomeLoadingState extends HomeState {}

//when loaded succesfully
class HomeLoadedSuccessState extends HomeState {
  final List<ProductDataModel> products;

  HomeLoadedSuccessState({required this.products});
}

//if error occured
class HomeErrorState extends HomeState {}

//A C T I O N   S T A T E S
class HomeNavigateToWishlistPageActionState extends HomeActionState {}

class HomeNavigateToCartPageActionState extends HomeActionState {}
