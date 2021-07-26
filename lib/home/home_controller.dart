import 'dart:convert';

import 'package:ignite_flutter_todo_list/shared/models/todo_item.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ObservableList<ToDoItem> toDoItemList = ObservableList.of([]);

  @observable
  ObservableList<ToDoItem> doneItemList = ObservableList.of([]);

  @computed
  Future get itemListSharedPreferences async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getString('toDoItems') != null) {
      List listSharedPreferences =
          jsonDecode(prefs.getString('toDoItems').toString());

      listSharedPreferences.map((e) {
        return toDoItemList.add(
          ToDoItem(title: e['title']),
        );
      }).toList();
    } else {
      toDoItemList = ObservableList.of([]);
    }

    if (prefs.getString('doneItems') != null) {
      List listSharedPreferences =
          jsonDecode(prefs.getString('doneItems').toString());

      listSharedPreferences.map((e) {
        return doneItemList.add(
          ToDoItem(
            title: e['title'],
            isDone: true,
          ),
        );
      }).toList();
    } else {
      doneItemList = ObservableList.of([]);
    }
  }

  // Remover essa função ao enviar para o repositório
  Future clear() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  Future saveSharedPreferences(
      String setString, List<ToDoItem> itemList) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List itemListConvert = [];

    itemList.map((e) {
      itemListConvert.add({"title": e.title});
    }).toList();

    prefs.setString(setString, jsonEncode(itemListConvert));
  }

  @action
  void onAddItem(String itemTitle) {
    toDoItemList.add(
      ToDoItem(
        title: itemTitle,
      ),
    );

    saveSharedPreferences('toDoItems', toDoItemList);
  }

  @action
  void onResetItem(ToDoItem item) {
    doneItemList.remove(item);

    toDoItemList.add(
      ToDoItem(
        title: item.title,
      ),
    );

    saveSharedPreferences('toDoItems', toDoItemList);
    saveSharedPreferences('doneItems', doneItemList);
  }

  @action
  void onRemoveToDoItem(ToDoItem item) {
    toDoItemList.remove(item);
    saveSharedPreferences('toDoItems', toDoItemList);
  }

  @action
  void onRemoveDoneItem(ToDoItem item) {
    doneItemList.remove(item);
    saveSharedPreferences('doneItems', doneItemList);
  }

  @action
  void onCompleteItem(ToDoItem item) {
    toDoItemList.remove(item);

    doneItemList.add(
      ToDoItem(
        title: item.title,
        isDone: true,
      ),
    );

    saveSharedPreferences('toDoItems', toDoItemList);
    saveSharedPreferences('doneItems', doneItemList);
  }
}
