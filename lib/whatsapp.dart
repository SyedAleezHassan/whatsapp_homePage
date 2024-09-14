import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Whatsapp"),
            bottom: TabBar(tabs: [
              Tab(
                text: 'Chatsa',
              ),
              Tab(
                text: 'statusa',
              ),
              Tab(
                text: 'callsa',
              ),
            ]),
          ),
          body: TabBarView(children: [
            ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 3),
                  child: ListTile(
                    tileColor: Colors.green,
                                
                    title: Text("dost $index"),
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("dost $index"),
                );
              },
            ),
            ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("dost $index"),
                );
              },
            ),
          ]),
        ));
  }
}
