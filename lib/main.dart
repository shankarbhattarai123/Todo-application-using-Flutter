import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "todo App",
      home: TodoApp(),
    ));

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  var listTODO = ['', 'Hello'];
  addToDo(String item) {
    setState(() {
      listTODO.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Todo App"),
        ),
        body: ListView.builder(
            itemCount: listTODO.length,
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(),
                    )
                  : ListTile(
                      leading: Icon(Icons.work),
                      title: Text('${listTODO[index]}'),
                    );
            }));

    // ListView(
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.all(18.0),
    //       child: TextFormField(),
    //     ),
    //     ListTile(
    //       title: Text("Get Up"),
    //       leading: Icon(Icons.info),
    //     ),
    //     ListTile(
    //       title: Text("Code"),
    //       leading: Icon(Icons.info),
    //     ),
    //     ListTile(
    //       title: Text("Sleep"),
    //       leading: Icon(Icons.info),
    //     ),
    //   ],
    // ),
  }
}
