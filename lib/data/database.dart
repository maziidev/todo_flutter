import 'package:hive/hive.dart';

class TodoDatabase {
  List todoList = [];

  // refrence the box
  final _myBox = Hive.box('myBox');

  // first time opening app
  void createInitialData() {
    todoList = [
      ['Make tutorial', false],
      ['Go to work', true]
    ];
  }

  // load data
  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  // update db on user change
  void updateDatabase() {
    _myBox.put('TODOLIST', todoList);
  }
}
