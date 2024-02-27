import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final taskController = TextEditingController();
  final subTitleController = TextEditingController();

  //task list
  List<Map<String, dynamic>> taskList = [];

  //hive db reference
  final _hiveDB = Hive.box("todo_db");

  @override
  void initState() {
    //todo implemetation
    taskGet();
    super.initState();
  }

  //get task

  void taskGet(){
    final taskData = _hiveDB.keys.map((key) {
      final task = _hiveDB.get(key);
      return {
         "key" : key,
         "taskName" : task["taskName"],
         "subTitle" : task["subTitle"],
      };
    }).toList();

    setState(() {
      taskList = taskData.reversed.toList();
    });
  }

  //create task
 Future <void> _createTask(Map<String, dynamic> newTask)async{
    _hiveDB.add(newTask);
    taskGet();
  }

  //Update
  Future<void> updateTask(int taskId, Map<String, dynamic> task)async{
     await _hiveDB.put(taskId, task);
      taskGet();

       //pop msg
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Task has been Updated!",style: TextStyle(
       color: Colors.green[300],
      ),),),);
  }

  //Delete
  Future<void> deleteTask(int taskId)async{
    await  _hiveDB.delete(taskId);
    
      taskGet();
      
      //pop msg
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Task has been deleted!",style: TextStyle(
       color: Colors.red[200],
      ),),),);
  }
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      
      body: Container(height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color.fromARGB(191, 2, 228, 2),
            Color.fromARGB(235, 4, 207, 200),
            Color.fromARGB(255, 1, 45, 103),
            Color.fromARGB(255, 210, 0, 0),
            Color.fromARGB(255, 255, 0, 191),
          ],
          tileMode: TileMode.mirror,
        )),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: taskList.length,
              itemBuilder: (_, index) {
                final currentTask = taskList[index];
                return Card(
                  color: const Color.fromARGB(244, 240, 24, 9),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 35, 118, 187),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      title: Text(currentTask ["taskName"]),
                      subtitle: Text(currentTask ["subTitle"]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              showModelSheet(currentTask["key"]);
                              // updateTask(taskId, task)
                            },
                            icon:const Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () {
                              deleteTask(currentTask["key"]);
                            },
                            icon:const Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
          child: const Icon(Icons.add),
          onPressed: () {
            showModelSheet(null);
          }),
    );
  }

  void showModelSheet(int? taskId) {

    //update 

    if (taskId != null) {
      final existingTask = taskList.firstWhere((element) => element["key"] == taskId);
      taskController.text = existingTask["taskName"];
      subTitleController.text = existingTask["subTitle"];
    }
    showModalBottomSheet(
      backgroundColor: const Color.fromARGB(255, 4, 213, 11),
        isScrollControlled: true,
        elevation: 5,
        context: context,
        builder: (_) {
          return SizedBox(
             child: Padding(
            padding: EdgeInsets.only(
                top: 8,
               left: 8,
              right: 8,
             bottom: MediaQuery.of(context).viewInsets.bottom
             ), 
            child: Column(
              
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
            
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0
                  ),
                  child: TextField(
                    controller: taskController,
                    decoration: const InputDecoration(
                      hintText: "Add Task",
                      border: OutlineInputBorder(
                        
                      ),
                    
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: subTitleController,
                    decoration: const InputDecoration(
                      hintText: "Add sub title",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton.icon(
                  onPressed: ()async {
                    
                   if (taskId == null) {
                      _createTask({
                      "taskName" : taskController.text,
                      "subTitle" : subTitleController.text
                    });
                   }

                    if (taskId != null) {
                      updateTask(taskId, {
                        "taskName" : taskController.text,
                      "subTitle" : subTitleController.text,
                      });
                    }

                    taskController.text = '';
                    subTitleController.text = '';

                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.check),
                  label:  Text(taskId == null ? "Add Task" : "Update Task"),
                ),
              ],
            ),
          ),
          );
 });}
}
