import 'package:flutter/material.dart';
import 'package:sam/Pages/models/catalog.dart';

class ItemWiget extends StatelessWidget {
  final Item item;

  const ItemWiget({Key? key, required this.item})
      // ignore: unnecessary_null_comparison
      : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.asset(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
