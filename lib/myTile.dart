import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          leading: CircleAvatar(radius: 20,),
          title: Text("Syed Aleez Hassan",style: TextStyle(fontSize: 18),),
          subtitle: Text("how are you doing"),
          trailing: Text("2:30 pm"),
          tileColor: Colors.red,
        )
      ],
    );
  }
}