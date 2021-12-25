import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider/provider.dart';

void main() {
  runApp( const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // int value =Provider.of<MyProvider>(context).getCounter;
    return ChangeNotifierProvider(
      create: (context)=>MyProvider(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Scaffold(
              appBar: AppBar(
                title:  Center(child: Text('Provider '+ Provider.of<MyProvider>(context).getCounter.toString())),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      Provider.of<MyProvider>(context).getCounter.toString(),
                      // Provider.of<MyProvider>(context).counter.toString(),
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: (){
                  Provider.of<MyProvider>(context, listen: false).incrementCounter();
                },
                child: const Icon(Icons.add),
              ), // This trailing comma makes auto-formatting nicer for build methods.
            ),
          );
        }
      ),
    );
  }
}