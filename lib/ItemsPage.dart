import 'package:flutter/material.dart';
import 'package:practice_project/added_items.dart';

List cartList = [
  {'name': 'Biryani', 'price': 230},
  {'name': 'Burger', 'price': 230},
  {'name': 'Pizza', 'price': 230},
   {'name': 'Tikka', 'price': 930},
   {'name': 'Karahi', 'price': 2000}
];
List<Map> addedItems = [];

class cartView extends StatefulWidget {
  const cartView({super.key});

  @override
  State<cartView> createState() => _cartViewState();
}

class _cartViewState extends State<cartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(addedItems.length.toString()),
      ),
      body: ListView.builder(
          itemCount: cartList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(cartList[index]['name']),
              subtitle: Text(cartList[index]['price'].toString()),
              trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      addedItems.add(cartList[index]);
                    });
                    print(addedItems);
                  },
                  icon: Icon(Icons.add)),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => added(cart_ka_maal: addedItems)));
        },
        child: const Icon(Icons.abc),
      ),
    );
  }
}
