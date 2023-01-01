import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:storex/controller/productcontroller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  'StoreX',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                )),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.view_list_rounded)),
                IconButton(onPressed: () {}, icon: Icon(Icons.grid_view))
              ],
            ),
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(10),
                crossAxisCount: 2,
                itemCount: 1000,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
          ),
        ],
      ),
    );
  }
}
