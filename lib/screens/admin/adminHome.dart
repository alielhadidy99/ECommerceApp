import 'package:commerceapp/Helpers/constants.dart';
import 'package:flutter/material.dart';

import 'OrdersScreen.dart';
import 'addProduct.dart';
import 'manageProduct.dart';

class AdminHome extends StatelessWidget {
  static String id = 'AdminHome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, AddProduct.id);
            },
            child: Text('Add Product'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, ManageProducts.id);
            },
            child: Text('Edit Product'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, OrdersScreen.id);
            },
            child: Text('View orders'),
          )
        ],
      ),
    );
  }
}
