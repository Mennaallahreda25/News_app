import 'package:flutter/material.dart';

class custom_category_listview extends StatelessWidget {
  custom_category_listview({super.key});

  final List<Category_Model> category = [
    Category_Model(
      Category_name: "General",
      imgurl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUkpanTT3SUWY6Y-8J70a84qOwsOPOHHG_Xw&s',
    ),
    Category_Model(
      Category_name: "Business",
      imgurl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0QsVQktn2huorn_9D0JuwOocw7MqsHiEVPw&s',
    ),
    Category_Model(
      Category_name: "Entertainment",
      imgurl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY8NzOrYQlPtQwHaf7fe_mP_5aZke7gGWCqQ&s',
    ),
    Category_Model(
      Category_name: "Health",
      imgurl:
      'https://www.mychamplainvalley.com/wp-content/uploads/sites/61/2015/04/healthnews_1429720857397_104687_ver1.0.png?strip=1&w=640',
    ),
    Category_Model(
      Category_name: "Science",
      imgurl:
      'https://mekreview.com/wp-content/uploads/2021/02/shutterstock_368080166-scaled.jpg',
    ),
    Category_Model(
      Category_name: "Sports",
      imgurl:
      'https://www.monaco.edu/wp-content/uploads/sites/4/2021/07/Sports_Management.jpg',
    ),
    Category_Model(
      Category_name: "Technology",
      imgurl:
      'https://plus.unsplash.com/premium_photo-1683120966127-14162cdd0935?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: category.map((cat) => NewsCategory(category_model: cat)).toList(),
        ),
      ),
    );
  }
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