import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {

  final String title;
  final String subtitle ;
  final String img ;
  final String btnTxt ;
  final Color color;

   CategoryCard({required this.title, required this.color, required this.subtitle, required this.img, required this.btnTxt});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FittedBox(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                 subtitle,
                  style: TextStyle(
                      color: Color(0xff696969),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 36,),
                Container(
                  alignment: Alignment.center,
                  width: Get.width,
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(111),
                      border: Border.all(width: 1,color: Colors.black)
                  ),
                  child: Text(
                      btnTxt.tr.capitalizeFirst!,style: TextStyle(
                    fontSize: 10
                  ),
                  ),)
              ],
            ),
          ),
          SizedBox(width: 9),
          Expanded(
              child: Container(
                child: Image.asset(img,),
              ))
        ],
      ),
    )
    ;
  }
}
