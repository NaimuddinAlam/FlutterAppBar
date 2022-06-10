import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(appBar: AppBar(
        elevation: 10,
        toolbarHeight: 100,
        backgroundColor: Colors.amber,
        toolbarOpacity: 0.5,
        leadingWidth: 100,
         /* leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: ()
          {},
        )*/
          leading:Container(
            color: Colors.red,

          ),
          centerTitle: true,
          title: Text("AppBar"),
        actions: [Icon(Icons.home),
          SizedBox(width: 5.0,),
          Icon(Icons.settings)],



      ),
      body: Center(
        child: ElevatedButton(
          onPressed: ()
          {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                 SecondPage()));
          },
          child: Text("Next page"),
        ),
      ),),
    );
  }
}
class SecondPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Second Page'),
      ),
    );
  }
}





