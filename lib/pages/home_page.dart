// ignore_for_file: avoid_unnecessary_containers, unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/widgets/home_widgets/catalog_header.dart';
import 'package:my_app/widgets/home_widgets/catalog_list.dart';
import 'package:my_app/widgets/drawer.dart';
import 'package:my_app/widgets/item_widget.dart';
import 'package:my_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    await Future.delayed(Duration(seconds: 2));
    // ignore: unused_local_variable
    final catalogJson = await rootBundle.loadString(
      "assets/files/catalog.json",
    );

    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    // ignore: avoid_print
    print(productsData);
    CatalogModel.items = List.from(
      productsData,
    ).map<Item>((item) => Item.fromMap(item)).toList();
    await Future.delayed(Duration(seconds: 2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items.isNotEmpty)
                Expanded(child: CatalogList())
              else
                Expanded(child: Center(child: CircularProgressIndicator())),
            ],
          ),
        ),
      ),
    );
  }
}
