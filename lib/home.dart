import 'package:flutter/material.dart';
import 'custom_category_listview.dart';


class BigNewsModel {
  final String title;
  final String subtitle;
  final String imageUrl;

  BigNewsModel({required this.title, required this.subtitle, required this.imageUrl});
}

class BigNews extends StatelessWidget {
  final BigNewsModel big ;
  BigNews({required this.big});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              big.imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            big.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (big.subtitle.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                big.subtitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class News_list extends StatelessWidget {
  News_list({super.key,});
  final List<BigNewsModel> Big = [
    BigNewsModel(title: 'اكتشاف بقايا معبد فرعوني جديد في الأقصر', subtitle: 'علماء الآثار يكتشفون معبداً قديماً يعود إلى عصر الدولة الحديثة', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqPO818rL6Mnyj1483ohslm3vzpHc28WdtMgMU1g8PlvfxnWKjmgfMFi8f9KY073YUad8&usqp=CAU'),
    BigNewsModel(title: 'إطلاق أول قمر صناعي مصري لمراقبة البيئة', subtitle: 'مشروع جديد لتعزيز المراقبة البيئية والمناخية عبر الأقمار الصناعية', imageUrl: 'https://i0.wp.com/pharostudies.com/wp-content/uploads/2022/08/inbound1019003016661478441.webp?resize=1024%2C675&ssl=1'),
    BigNewsModel(title: 'افتتاح أكبر محطة طاقة شمسية في الشرق الأوسط', subtitle: 'مصر تخطو خطوة جديدة نحو الطاقة النظيفة والاستدامة', imageUrl: 'https://images.unsplash.com/photo-1509395176047-4a66953fd231?w=600&auto=format&fit=crop&q=60'),
    BigNewsModel(title: 'الزراعة الذكية: استخدام الذكاء الاصطناعي لتحسين المحاصيل', subtitle: 'مشروع تجريبي في وادي النيل لتطوير الإنتاج الزراعي باستخدام التكنولوجيا', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm5NojHusggEEO8VAbXK-kKv4OR83Xd_XRYw&s'),
    BigNewsModel(title: 'ارتفاع أعداد السياح في مصر بنسبة 25%', subtitle: 'المعالم السياحية تشهد إقبالاً متزايداً مع تحسن الأوضاع الاقتصادية', imageUrl: 'https://vid.alarabiya.net/images/2024/08/22/4a922e74-905e-4c4d-a99c-8471bbf20f7d/4a922e74-905e-4c4d-a99c-8471bbf20f7d.jpeg?crop=4:3&width=1200'),
    BigNewsModel(title: 'تطوير جديد في مجال السيارات الكهربائية', subtitle: 'شركات مصرية تعلن عن أول سيارة كهربائية محلية الصنع', imageUrl: 'https://images.unsplash.com/photo-1549923746-c502d488b3ea?w=600&auto=format&fit=crop&q=60'),
    BigNewsModel(title: 'افتتاح أول جامعة متخصصة في الذكاء الاصطناعي', subtitle: 'خطوة غير مسبوقة نحو مستقبل رقمي متطور في التعليم العالي', imageUrl: 'https://images.unsplash.com/photo-1580584126903-c17d41830450?w=600&auto=format&fit=crop&q=60'),
    BigNewsModel(title: 'توسعة قناة السويس لزيادة حركة التجارة العالمية', subtitle: 'مشروع عملاق يعزز مكانة مصر كمركز لوجستي عالمي', imageUrl: 'https://i0.wp.com/www.asswak-alarab.com/wp-content/uploads/2015/10/3164_0.jpg?fit=1041%2C1126&ssl=1'),
    BigNewsModel(title: 'إطلاق مشروع المدن الذكية في مصر', subtitle: 'خطط طموحة لتطوير مجتمعات سكنية تعتمد على التكنولوجيا الخضراء', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvQAEiwIMfgiSZ4MslkOV9FlBtdyjCvmbZtw&s'),
    BigNewsModel(title: 'مهرجان القاهرة السينمائي يكرم كبار الفنانين', subtitle: 'حضور عالمي مميز وفعاليات فنية متنوعة في الدورة الجديدة', imageUrl: 'https://i.ytimg.com/vi/vTnfJzwhXZw/maxresdefault.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: Big.length,
        itemBuilder: (context, index) {
          return BigNews(big: Big[index]);
        }
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


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'News',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Cloud',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
            children:
            [
              custom_category_listview(),
              Expanded(child: News_list())
            ]
        ),
      ),
    );
  }
}