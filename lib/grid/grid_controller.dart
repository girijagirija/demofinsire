import 'package:demofinsire/res.dart';
import 'package:get/get.dart';

class Gridcontroller extends GetxController {

  List<Category> category = [];
  List<Feed> feed = [];


  @override
  void onInit() {
    Category category1 = Category(category: '#Trending', isSelected: true.obs);
    Category category2 = Category(category: '#Food', isSelected: false.obs);
    Category category3 = Category(category: '#Activity', isSelected: false.obs);
    Category category4 = Category(category: '#Shop', isSelected: false.obs);
    Feed feed1 = Feed(name: 'Meryl Strep',comment: '#Selfie',image: Res.a);
    Feed feed2 = Feed(name: 'Hanah',comment: 'Outing',image: Res.b);
    Feed feed3 = Feed(name: 'Misa',comment: 'Pose in Lockdown',image: Res.c);
    Feed feed4 = Feed(name: 'Amane',comment: '@Home with sis',image: Res.d);
    Feed feed5 = Feed(name: 'Jones',comment: 'Dared Accepted',image: Res.e);
    category.add(category1);
    category.add(category2);
    category.add(category3);
    category.add(category4);
    feed.add(feed1);
    feed.add(feed2);
    feed.add(feed3);
    feed.add(feed4);
    feed.add(feed5);
    super.onInit();
  }






}

class Category{
  final String category;
  var isSelected;
  Category({required this.category,required this.isSelected});
}
class Feed{
  final String name;
  final String comment;
  final String image;
  Feed({required this.name,required this.comment,required this.image});
}

