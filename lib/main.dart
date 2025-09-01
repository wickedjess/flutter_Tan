import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity UI',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity'),
        backgroundColor: Colors.amber,
        actions: [
          Tooltip(
            message: 'Search',
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ),
          Tooltip(
            message: 'Notification',
            child: IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jemuel and Friends',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            SizedBox(height: 16),

            Image.network(
              'https://i.pinimg.com/736x/79/a3/16/79a3168cf52edca304ff32db46e0f888.jpg',
              height: 200,
              fit: BoxFit.cover,
            ),

            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Tooltip(
                  message: 'Edit',
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                    label: Text('Edit'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
                Tooltip(
                  message: 'Delete',
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.delete),
                    label: Text('Delete'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              tooltip: 'Profile',
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Home',
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Settings',
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/538269978_1464829371494410_827100871132952165_n.jpg',
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
