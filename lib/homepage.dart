import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:storex/controller/news_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final NewsController _newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 45, 1, 53),
        centerTitle: true,
        title: Text('News'),
      ),
      body: Obx(() => _newsController.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _newsController.articles.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: ((context, index) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                    child: Text(
                      _newsController.articles[index].title!,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 67, 62, 62),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
            )),
    );
  }
}
