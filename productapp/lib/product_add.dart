import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductAdd extends StatefulWidget {
  @override
  _ProductAddState createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAdd> {

  // TextEditingController controllerID = new TextEditingController();
  TextEditingController controllerName = new TextEditingController();
  TextEditingController controllerPrice = new TextEditingController();
  TextEditingController controllerStock = new TextEditingController();

  addProduct() {
    var postRoute = "http://10.0.2.2:4000/products_post.php";
    http.post(postRoute, body: {
      "name": controllerName.text,
      "price": controllerPrice.text,
      "stock": controllerStock.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Product"),
        backgroundColor: Colors.indigo[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                // TextField(
                //   decoration: InputDecoration(
                //       hintText: "Product ID", labelText: "Product ID"),
                // ),
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
                  child: Text("Add Product"),
                  color: Colors.indigo[900],
                  onPressed: () {
                    addProduct();
                    Navigator.pop(context);
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
