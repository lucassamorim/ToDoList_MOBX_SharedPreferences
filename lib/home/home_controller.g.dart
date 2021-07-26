// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<Future<dynamic>>? _$itemListSharedPreferencesComputed;

  @override
  Future<dynamic> get itemListSharedPreferences =>
      (_$itemListSharedPreferencesComputed ??= Computed<Future<dynamic>>(
              () => super.itemListSharedPreferences,
              name: '_HomeControllerBase.itemListSharedPreferences'))
          .value;

  final _$toDoItemListAtom = Atom(name: '_HomeControllerBase.toDoItemList');

  @override
  ObservableList<ToDoItem> get toDoItemList {
    _$toDoItemListAtom.reportRead();
    return super.toDoItemList;
  }

  @override
  set toDoItemList(ObservableList<ToDoItem> value) {
    _$toDoItemListAtom.reportWrite(value, super.toDoItemList, () {
      super.toDoItemList = value;
    });
  }

  final _$doneItemListAtom = Atom(name: '_HomeControllerBase.doneItemList');

  @override
  ObservableList<ToDoItem> get doneItemList {
    _$doneItemListAtom.reportRead();
    return super.doneItemList;
  }

  @override
  set doneItemList(ObservableList<ToDoItem> value) {
    _$doneItemListAtom.reportWrite(value, super.doneItemList, () {
      super.doneItemList = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void onAddItem(String itemTitle) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onAddItem');
    try {
      return super.onAddItem(itemTitle);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onResetItem(ToDoItem item) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onResetItem');
    try {
      return super.onResetItem(item);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onRemoveToDoItem(ToDoItem item) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onRemoveToDoItem');
    try {
      return super.onRemoveToDoItem(item);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onRemoveDoneItem(ToDoItem item) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onRemoveDoneItem');
    try {
      return super.onRemoveDoneItem(item);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onCompleteItem(ToDoItem item) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onCompleteItem');
    try {
      return super.onCompleteItem(item);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
toDoItemList: ${toDoItemList},
doneItemList: ${doneItemList},
itemListSharedPreferences: ${itemListSharedPreferences}
    ''';
  }
}
