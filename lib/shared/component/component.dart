
import 'package:flutter/material.dart';
import 'package:newsapp/module/webview.dart';

Widget cardItem(list,context){
  return InkWell(
    onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WebViewScreen(url:'${list['url']}',))),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).primaryColor,
        ),
        child: Row(
          children: [
            Container(
                height: 120,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft:  Radius.circular(20),
                  ),
                  child:
                  Image.network('${list['urlToImage']}',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace,)=>Icon(
                        Icons.error_outline_outlined,size: 50,color: Colors.red,),
                  ),
                )),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                height: 120,
                padding: EdgeInsetsDirectional.only(
                  end: 10
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(flex: 3,child: Text('${list['title']}'.trim(),
                      maxLines: 3,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        letterSpacing: 1,
                      ),
                      overflow: TextOverflow.ellipsis,
                    softWrap: true,),),
                    Expanded(flex: 1,child: Text('${list['publishedAt']}'))
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    ),
  );
}

Widget buildList(list){
  return ListView.separated(
    physics: BouncingScrollPhysics(),
    separatorBuilder: (context,index)=>Container(
      color: Colors.deepOrange,
      height: 0.4,
    ),
    itemCount: list.length,
    itemBuilder: (context,index)=> cardItem(list[index],context),
  );
}

Widget buildCardNews(context,{
  required String url,
  required String urlImage,
  required String name,
}){
  return InkWell(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WebViewScreen(url: url,name: name,)));
    },
    child: Container(
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,

          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: NetworkImage(urlImage),
          )
      ),

    ),
  );
}