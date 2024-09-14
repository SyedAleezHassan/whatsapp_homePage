import 'package:flutter/material.dart';
import 'package:practice_project/ItemsPage.dart';
import 'package:practice_project/whatsapp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Home Page',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: cartView(),
    );
  }
}

class WhatsAppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs (Chats and Status)
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Color.fromARGB(255, 72, 154, 73),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Implement search functionality
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // Implement more options functionality
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'GROUPS'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Chats Tab
            ListView.builder(
              itemCount: 20, // Number of chat items
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person),
                  ),
                  title: Text('Contact $index'),
                  //tileColor: const Color.fromARGB(255, 66, 63, 63),
                  subtitle: Text('Message $index'),
                  trailing: Text('Time $index'),
                  onTap: () {
                    // Implement chat page navigation
                  },
                );
              },
            ),

            // Status Tab
            ListView.builder(
              itemCount: 10, // Number of status items
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person),
                  ),
                  title: Text('Status $index'),
                  subtitle: Text('Status description $index'),
                  onTap: () {
                    // Implement status page navigation
                  },
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person),
                  ),
                  title: Text('Group $index'),
                  subtitle: Text('group description $index'),
                  onTap: () {
                    // Implement status page navigation
                  },
                );
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Implement new chat functionality
          },
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}
