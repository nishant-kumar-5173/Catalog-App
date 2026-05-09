import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/widgets/themes.dart';
import 'package:vector_math/vector_math_lists.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: SafeArea(
        child: Container(
          color: Colors.white,
          child: OverflowBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              "\$${catalog.price}".text.xl4.red800.bold.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    MyTheme.darkBluishColor,
                  ),
                  shape: WidgetStateProperty.all(StadiumBorder()),
                ),
                child: "Buy".text.color(MyTheme.creamColor).bold.make(),
              ).wh(100, 50),
            ],
          ).p32(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h40(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl4
                          .color(MyTheme.darkBluishColor)
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      //10.heightBox,
                    ],
                  ),
                ).py(64),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
