import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './main.dart';

class ProductEdit extends StatefulWidget {
  final List products;
  final int index;

  ProductEdit({this.products, this.index});

  @override
  _ProductEditState createState() => _ProductEditState();
}

class _ProductEditState extends State<ProductEdit> {
  TextEditingController controllerName;
  TextEditingController controllerPrice;
  TextEditingController controllerStock;

  editProduct() {
    var url = 'http://10.0.2.2:4000/products_edit.php';
    http.post(url, body: {
      "id": widget.products[widget.index]["id"],
      "name": controllerName.text,
      "price": controllerPrice.text,
      "stock": controllerStock.text
    });
  }

  @override
  void initState() {
    controllerName =
        TextEditingController(text: widget.products[widget.index]["name"]);
    controllerPrice =
        TextEditingController(text: widget.products[widget.index]["price"]);
    controllerStock =
        TextEditingController(text: widget.products[widget.index]["stock"]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Edit"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      hintText: "Product Name", labelText: "Product Name"),
                  controller: controllerName,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Product Price", labelText: "Product Price"),
                  controller: controllerPrice,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Product Stock", labelText: "Product Stock"),
                  controller: controllerStock,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                RaisedButton(
                  child: Text("Edit Product"),
                  color: Colors.indigo[900],
                  onPressed: () {
                    editProduct();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Home();
                      },
                    ));
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
