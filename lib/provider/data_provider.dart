import 'package:burger_ui/models/food_items.dart';
import 'package:burger_ui/models/item_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final itemProvider = StateNotifierProvider<ItemProvider, ItemState>(
    (ref) => ItemProvider(ItemState.initState()));

class ItemProvider extends StateNotifier<ItemState> {
  ItemProvider(super.state);

  void updateItem(int x) {
    if (x == 1) {
      state = state.copyWith(itemDetails2: [...pizzaDetails]);
    } else {
      state = state.copyWith(itemDetails2: [...burgerDetails]);
    }
  }
}
