import 'package:flutter/material.dart';
import 'home.dart';
import 'custom_category_listview.dart';

void main() {
  runApp(MyApp());
}

class Category_Model{
  final String imgurl;
  final String Category_name;
  Category_Model({required this.Category_name , required this.imgurl});
}


class NewsCategory extends StatelessWidget {
  const NewsCategory({super.key , required this.category_model});
  final Category_Model category_model;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              category_model.imgurl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
            ),
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Text(
              category_model.Category_name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
