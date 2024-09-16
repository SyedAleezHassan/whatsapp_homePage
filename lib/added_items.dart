import 'package:flutter/material.dart';

class added extends StatefulWidget {
  final List cart_ka_maal;
  const added({super.key, required this.cart_ka_maal});

  @override
  State<added> createState() => _addedState();
}

class _addedState extends State<added> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: widget.cart_ka_maal.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(widget.cart_ka_maal[index]['name']),
            );
          }),
    );
  }
}
