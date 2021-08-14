import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projeto_magalu/models/products.dart';
import 'package:projeto_magalu/provider/list_of_products.dart';
import 'package:projeto_magalu/screens/details/details.dart';
import 'package:projeto_magalu/style.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ofertas do dia"),
        leading: Image.asset("assets/logo.jpg"),
      ),
      body: ListView.separated(
        itemBuilder: builder,
        itemCount: listOfProducts.length,
        separatorBuilder: (_, index) {
          return Divider();
        },
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    Products _products = listOfProducts.elementAt(index);
    return ListTile(
      trailing: IconButton(
        icon: (_products.isFavorite)
            ? Icon(
                Icons.favorite,
                color: pinkTheme,
              )
            : Icon(
                Icons.favorite_outline,
                color: pinkTheme,
              ),
        onPressed: () {
          setState(() {
            _products.isFavorite = !_products.isFavorite;
          });
        },
      ),
      title: Row(
        children: [
          ClipOval(
            child: Image.asset(
              _products.photo,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _products.name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: blackTheme,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                _products.extra,
                style: TextStyle(
                  fontSize: 14,
                  color: blackTheme,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                _products.value,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: materialColor,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                _products.installments,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: materialColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
