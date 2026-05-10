import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/pages/home_detail_page.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/widgets/home_widgets/catalog_image.dart';
import 'package:my_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(catalog: catalog),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.bold
                    .color(
                      context.theme.floatingActionButtonTheme.backgroundColor,
                    )
                    .make(),
                catalog.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                OverflowBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${catalog.price}".text.xl.bold.make(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          MyTheme.darkBluishColor,
                        ),
                        shape: WidgetStateProperty.all(StadiumBorder()),
                      ),
                      child: "Add to cart".text
                          .color(MyTheme.creamColor)
                          .bold
                          .make(),
                    ),
                  ],
                ).pOnly(right: 8.0, top: 8.0),
              ],
            ).pOnly(top: 16.0, right: 8.0),
          ),
        ],
      ),
    ).color(context.cardColor).roundedLg.make().py(16);
  }
}
