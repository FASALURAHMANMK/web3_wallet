import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'createwallet.dart';
import 'importwallet.dart';
//import 'dashboard.dart';
import 'walletprovider.dart';
void main() {
  runApp(
    ChangeNotifierProvider<WalletProvider>(create: (context) => WalletProvider(),
    child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(74, 9, 139, 1)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Wallet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const createwallet()),
                );
               },
                icon: Icon(Icons.add, size: 18),
                 label: Text("Create Wallet"),
              ),
              ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => const importwallet()),
                 );
                  },
                icon: Icon(Icons.inbox, size: 18),
                 label: Text("Import Wallet"),
              ),
          ],
        ),
      ), 
    );
  }
}
