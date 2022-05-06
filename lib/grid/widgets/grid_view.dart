import 'package:demofinsire/grid/grid_controller.dart';
import 'package:demofinsire/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({Key? key}) : super(key: key);
  final controller = Get.find<Gridcontroller>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MasonryGridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        itemCount: controller.feed.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          Feed feed = controller.feed[index];
          return Container(
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Image.asset(feed.image)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '${feed.name}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '${feed.comment}',
                              maxLines: 2,
                              style:
                                  const TextStyle(color: black54, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '23 Min Ago',
                          style: TextStyle(
                              color: red,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
