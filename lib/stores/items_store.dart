import 'package:nac3_flutter/model/sisoperacional.dart';
import 'package:mobx/mobx.dart';
part 'items_store.g.dart';

class ItemsStore = _ItemsStoreBase with _$ItemsStore;

abstract class _ItemsStoreBase with Store {
  _ItemsStoreBase(this.sisoperacional);

  final Sisoperacional sisoperacional;

  @observable
  int quantity = 1;

  @action
  void increment() {
    quantity++;
  }

  @action
  void decrement() {
    if (quantity > 1) {
      quantity--;
    }
  }

  @override
  int get hashCode => sisoperacional.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemsStore && other.sisoperacional == sisoperacional;
}
