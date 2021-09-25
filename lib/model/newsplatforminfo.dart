import 'package:flutter/material.dart';

class NewsInfo {
  final String url;
  final String urlImage;
  final String name;

  NewsInfo({@required this.url, @required this.urlImage, @required this.name});
}
List<NewsInfo> date=[
  NewsInfo(url: 'https://news.google.com/topstories?hl=ar&gl=EG&ceid=EG:ar',urlImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKLMuyrObRIU5ww5Q26OG2-KeXBTo1oemlCLxHPceW_kvrDsHzxfkmwTMmoMTbbRghKyI&usqp=CAU',name: 'Google News'),
  NewsInfo(url: 'https://www.skynewsarabia.com/program/menassat-%D9%85%D9%86%D8%B5%D8%A7%D8%AA',urlImage: 'https://starsat.co.za/wp-content/uploads/2020/05/SKY-News.png',name: 'Sky News'),
  NewsInfo(url: 'https://www.skynewsarabia.com/world',urlImage: 'https://img.utdstc.com/icon/b58/955/b589552759e6efe174a6ee80e4501f39dd0061e217ce85e0357096e1ca7bef88:200',name: 'Sky News Arabic'),
  NewsInfo(url: 'https://news.un.org/ar/tags/lmnst-lrqmy',urlImage: 'https://lh3.googleusercontent.com/proxy/jDYeKii64Ft34xgMX6W4H9UxuJCH6HGMXAICI2fcbKGjSbwVf1yaUZcZr0ZDpNWDAywgGkAx2vYXkPPY80OBpq1QhmRNiMuhTpxwPw',name: 'اخبار الامم المتحده'),
  NewsInfo(url: 'https://asharq.com/',urlImage: 'https://api.getray.com/web/v1/media/image?name=cffa67c4da8665e9e21580ee8c25a02c.jpg&size=medium',name: 'الشرق'),
  NewsInfo(url: 'https://www.almasryalyoum.com/news/details/1303717',urlImage: 'https://mediaaws.almasryalyoum.com/news/large/2017/10/24/735167_0.JPG',name: 'المصري اليوم'),
  NewsInfo(url: 'https://www.who.int/ar/news-room/fact-sheets/detail/dementia',urlImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjedVdE2Us3fdgpLS4sCai_uIYjYw9TNSkhl5y_ABV5UfdIP9c2xImD64sgMdAFRyv_w4&usqp=CAU',name: 'منظمه الصحه العالميه'),
  NewsInfo(url: 'https://almashareq.com/ar/articles/cnmi_am/features/2021/08/23/feature-01?gclid=CjwKCAjwhOyJBhA4EiwAEcJdcbVsAAYo0OEzkVYG0Jc6_hU1Ij7RO1_AdWv4tEH8hgurKC6mj7ipDBoChBkQAvD_BwE',urlImage: 'https://telegramchannels.me/storage/media-logo/2011/almashareqarabic.jpg',name: 'المشارق'),
  NewsInfo(url: 'https://aawsat.com/',urlImage: 'https://m.eyeofriyadh.com/directory/images/2021/07/1430f247ba127.jpg',name: 'الشرق الاوسط'),
  NewsInfo(url: 'https://www.alarabiya.net/latest-news',urlImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Al-Arabiya_new_logo.svg/1200px-Al-Arabiya_new_logo.svg.png',name: 'العربيه'),
  NewsInfo(url: 'https://www.masrawy.com/channel/news',urlImage: 'https://media.gemini.media/img/large/2018/3/4/2018_3_4_16_50_17_598.png',name: 'مصراوي'),
  NewsInfo(url: 'https://arabic.rt.com/world/',urlImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRGS_wZ1zRnoWr2IPLxVsgqGswvgpyVDt9J656FY605l8BHBDBEz1DQUJGwV6VCXAnjhA&usqp=CAU',name: 'اسال اكتر'),
];
