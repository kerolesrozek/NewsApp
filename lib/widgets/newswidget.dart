
import 'package:flutter/material.dart';
import 'package:newsapp/models/newsmodel.dart';


class NewsWidget extends StatelessWidget {
   NewsWidget({
    super.key,
required this.model
  });
  NewsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
         model.image??   'https://tse1.mm.bing.net/th?id=OIP.2n9pSOt_WgRRBGrJMdDr8gHaFX&pid=Api&P=0&h=220',
            width: double.infinity,
            height: 250,
            fit: BoxFit.fill,
          ),
        ),
        Text(
     model.title??   '',
          style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        ),
    
        Text(
       model.description??  '',
          style: TextStyle(color: Colors.grey,fontSize: 16),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
