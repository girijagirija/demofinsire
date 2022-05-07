import 'dart:math';

import 'package:demofinsire/grid/grid_controller.dart';
import 'package:demofinsire/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesLV extends StatelessWidget {
   CategoriesLV({Key? key}) : super(key: key);
  final controller = Get.find<Gridcontroller>();
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 30,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 12),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: controller.category.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Category category = controller.category[index];
          return Obx(() {
            return InkWell(
              onTap: () {
                controller.category.forEach((element) {
                  if(element.isSelected.value){
                    element.isSelected.value = false;
                  }
                });
                category.isSelected.value  = true;
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${category.category}')));
              },
              child: Container(
                width: 100,
                padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                    color: category.isSelected.value ? red : white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: red)),
                child: Center(
                  child: Text(
                    category.category,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: category.isSelected.value ? white : black),
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
