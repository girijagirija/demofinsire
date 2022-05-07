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
    Feed feed1 = Feed(name: 'Meryl Strep',comment: '#Selfie',image: Res.a, active: '15');
    Feed feed2 = Feed(name: 'Hanah',comment: 'Outing',image: Res.b,active: '23');
    Feed feed3 = Feed(name: 'Misa',comment: 'Pose in Lockdown',image: Res.c,active: '10');
    Feed feed4 = Feed(name: 'Amane',comment: '@Home with sis',image: Res.d,active: '8');
    Feed feed5 = Feed(name: 'Jones',comment: 'Dared Accepted',image: Res.e,active: '24');
    Feed feed6 = Feed(name: 'BergMen',comment: 'Dared Accepted',image: Res.f,active: '14');
    Feed feed8 = Feed(name: 'Jones',comment: 'Dared Accepted',image: Res.i,active: '30');
    Feed feed7 = Feed(name: 'Mery',comment: 'Dared Accepted',image: Res.h,active: '8');

    Feed feed9 = Feed(name: 'Misa',comment: 'Pose in Lockdown',image: Res.c,active: '35');

    Feed feed11 = Feed(name: 'Jones',comment: 'Dared Accepted',image: Res.e,active: '17');
    Feed feed10 = Feed(name: 'Meryl Strep',comment: '#Selfie',image: Res.a,active: '6');

    category.add(category1);
    category.add(category2);
    category.add(category3);
    category.add(category4);
    feed.add(feed1);
    feed.add(feed2);
    feed.add(feed3);
    feed.add(feed4);
    feed.add(feed5);
    feed.add(feed6);
    feed.add(feed7);
    feed.add(feed8);
    feed.add(feed9);
    feed.add(feed10);
    feed.add(feed11);
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
  final String active;
  final String image;
  Feed({required this.name,required this.comment,required this.image,required this.active});
}

