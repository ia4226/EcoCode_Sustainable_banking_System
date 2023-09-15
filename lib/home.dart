

import 'package:flutter/material.dart';
import 'package:flutter_application_3/api/local_auth_api.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool authenticated = false;
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: const Text('Biometrics'),
        centerTitle: true,
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
              final authenticate = await LocalAuth.authenticate();
              setState(() {
                authenticated = authenticate;
              });
            }, child: const Text('Authenticate'),
            ),
            if(authenticated)
            const Text(
              'You are authenticated',
              ),
            if(authenticated)
            ElevatedButton(
              onPressed: () {
              setState(() {
                authenticated = false;
              });
              },
              child: const Text('Log Out'),
              ),
            
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
