import 'package:demofinsire/grid/widgets/categories.dart';
import 'package:demofinsire/grid/widgets/grid_view.dart';
import 'package:demofinsire/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'grid_controller.dart';

class GridPage extends StatelessWidget {
  final controller = Get.put(Gridcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: const Text(
          'Feed',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 25,
                color: black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mail_outlined,
                size: 25,
                color: black,
              )),
        ],
      ),
      body: Column(
        children: [
          CategoriesLV(),
          const SizedBox(
            height: 10,
          ),
          GridViewWidget(),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: BottomNavigationBar(
          backgroundColor: bottomBar,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: '',
                icon: Icon(
              Icons.home_outlined,
              color: white,
            )),
            BottomNavigationBarItem(
                label: '',

                icon: Icon(
              Icons.search,
              color: white,
            )),
            BottomNavigationBarItem(
                label: '',

                icon: Icon(
              Icons.circle_outlined,
              color: white,
            )),
            BottomNavigationBarItem(
                label: '',

                icon: Icon(
              Icons.check_circle_outlined,
              color: white,
            )),
            BottomNavigationBarItem(
                label: '',

                icon: Icon(
              Icons.person_outlined,
              color: white,
            )),
          ],
        ),
      ),
    );
  }
}
