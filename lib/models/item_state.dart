import 'package:burger_ui/models/food_items.dart';

class ItemState {
  final List itemDetails1;

  ItemState({required this.itemDetails1});

  factory ItemState.initState() {
    return ItemState(itemDetails1: burgerDetails);
  }

  ItemState copyWith({
    final List? itemDetails2,
  }) {
    return ItemState(
      itemDetails1: itemDetails2 ?? this.itemDetails1,
    );
  }
}
