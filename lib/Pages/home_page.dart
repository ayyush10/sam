import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sam/Pages/models/catalog.dart';
import 'package:sam/widgets/drawer.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

// // ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    print(decodedData);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(
        //   color: Colors.black,

        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    final item = CatalogModel.items[index];
                    return Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: GridTile(
                          header: Container(
                            child: Text(
                              item.name,
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(),
                            color: Colors.deepPurple,
                          ),
                          child: Image.network(item.image),
                          footer: Container(
                            child: Text(
                              item.name,
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(),
                            color: Colors.deepPurple,
                          ),
                        ));
                  },
                  itemCount: CatalogModel.item.length,
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: MyDrawer(),
    );
  }
}
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_catalog/models/catalog.dart';
// import 'package:flutter_catalog/widgets/drawer.dart';
// import 'package:flutter_catalog/widgets/item_widget.dart';

// class homepage extends StatefulWidget {
//   @override
//   _homepageState createState() => _homepageState();
// }

// class _homepageState extends State<homepage> {
//   final int days = 30;

//   final String name = "Codepur";

//   @override
//   void initState() {
//     super.initState();
//     loadData();
//   }

//   loadData() async {
//     await Future.delayed(Duration(seconds: 2));
//     final catalogJson =
//         await rootBundle.loadString("assets/files/catalog.json");
//     final decodedData = jsonDecode(catalogJson);
//     var productsData = decodedData["products"];
//     CatalogModel.items = List.from(productsData)
//         .map<Item>((item) => Item.fromMap(item))
//         .toList();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Catalog App"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
//             ? ListView.builder(
//                 itemCount: CatalogModel.items.length,
//                 itemBuilder: (context, index) => ItemWidget(
//                   item: CatalogModel.items[index],
//                 ),
//               )
//             : Center(
//                 child: CircularProgressIndicator(),
//               ),
//       ),
//       drawer: MyDrawer(),
//     );
//   }
// }
