import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget{

 List imglist =[
 "Bags",
 "Black Pant",
 "Black T-Shirt",
 "Laptop",
 "Mobile",
 "Warm Jacket",
 "Watch",
 ];

  @override
  Widget build (BuildContext context){
    return Column(
      children: [
        for(int i =0; i<imglist.length; i++)
        Container(
          height: 110,
          margin: EdgeInsets.symmetric(vertical: 15),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
         child: Row(
          children: [
            Checkbox(
              activeColor: Color(0xFFFD725A),
              value: true,
             onChanged: (value){},
            ),
            Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(225, 224, 224, 224),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("images/{imgList[i]}.png"),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  imglist[i],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Text(
                  "\tk300",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFD725A),
                  ),
                ),
              ],
            ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.delete,
                    color: Colors.redAccent,
                  ),
                  Row(children: [
                    Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFF7F8FA),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  CupertinoIcons.minus,
                  size: 18,
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(width: 8),
              Text(
                "01",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width:5),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFF7F8FA),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  CupertinoIcons.plus,
                  size: 18,
                  color: Colors.redAccent,
                ),
              ),
                  ],
                  ),
                ],
              )
               ),
          ],
         ),
        ),
      ],
    );
  }
}
