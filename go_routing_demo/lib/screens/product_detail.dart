import 'package:flutter/material.dart';


class ProductDetailsScreen extends StatelessWidget{
  final String id;
  final String filter;


  //constructor
  const ProductDetailsScreen({
    super.key,
    required this.id,
    required this.filter,
  });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Product $id')),
      body: Center(child: Text('Showing product $id\nFilter: $filter'),)
    );
  }
}