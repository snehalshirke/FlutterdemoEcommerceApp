import 'package:flutter/material.dart';

/// Flutter code sample for [showModalBottomSheet].

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Sheet Sample')),
        body: const BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom BottomSheet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              isDismissible: false,
              builder: (BuildContext context) {
                return FractionallySizedBox(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: double.infinity, // Make width match parent
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: Icon(Icons.cancel),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 0),
                        Image.asset(
                          'assets/images/delete.png', // Replace with your image path
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Welcome To Powerlook',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'To kickstart your journey with, \nhere a special offer just for you',
                          style: TextStyle(fontSize: 14),
                        ),
                        Divider(
                          height: 20.0,
                          thickness: 3.0,
                          color: Colors.black,
                          indent: 25.0,
                          endIndent: 25.0,
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle button press
                              Navigator.pop(context);
                            },
                            style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 16), // Adjust padding as needed
                              ),
                            ),
                            child: Text('Get my surprise'),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Text('Open Custom BottomSheet'),
        ),
      ),
    );
  }
}
