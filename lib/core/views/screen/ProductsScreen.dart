import 'package:dio_api/core/view_models/productsVM.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  ProductsVM pvm = ProductsVM();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: pvm.getProducts(),
      // initialData: InitialData,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context,index) {
              return ListTile(
                title: Image.network( snapshot.data![index].image!),
              );
            },
          );
        } else
          return Center(
            child: CircularProgressIndicator(),
          );
      },
    );
  }
}
