import 'package:flutter/material.dart';
import 'package:projeto_magalu/models/products.dart';
import 'package:projeto_magalu/style.dart';

class Details extends StatelessWidget {
  final Products _selectedProducts;

  Details(this._selectedProducts);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          (_selectedProducts.isFavorite)
              ? Icon(Icons.star)
              : Icon(Icons.star_outline),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _selectedProducts.name,
              style: TextStyle(
                color: blackTheme,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
