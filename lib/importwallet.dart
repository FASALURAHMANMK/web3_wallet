import 'package:flutter/material.dart';
class importwallet extends StatelessWidget {
  const importwallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Import wallet'),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children:[ 
        SizedBox(
          width: 350,
        child:TextField(
          obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Wallet ID',
        ),
        ),
        ),
        Padding(
              padding: EdgeInsets.only(top: 20),),
        ElevatedButton.icon(
              onPressed: () {
               },
                icon: Icon(Icons.inbox, size: 18),
                 label: Text("Import Wallet"),
              ),
      ]
        ),
       
      ) 
    );
  }

}