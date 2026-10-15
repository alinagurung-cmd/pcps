import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newapp/pages/dashboard.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55,),
            Stack(
              children: [
                Container(
                  height: size.height/4,
                  width: size.width,
                  child: Image.network(fit: BoxFit.cover,"https://www.redbubble.com/i/sticker/NANA-Ren-Lotus-Flower-Tattoo-by-Blank-Infinity/97027450/7sgk"),
                ),
                Container(
                  height: size.height/4,
                  width: size.width,
                  color: Colors.black45,
                ),

              GestureDetector(
                onTap:(){
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back,
                    color: Colors.white, size: 40,),
                ),
              ),
              Positioned(
                right: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.share, color: Colors.white, size: 40,),
                ),
              ),
              Container(
                child: Center(
                  child: Icon(Icons.play_circle_fill,
                    size: 60,
                    color: Colors.white,),
                ),
              ),
             ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Happy Dashain Everyone".toUpperCase(),
              style: TextStyle(fontSize:20), maxLines: 2,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Author Name"),
                  Text("02 02 2026")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Happy Dashain, Happy Dashain, Happy Dashain,"
                  "Happy Dashain, Happy Dashain, Happy Dashain"
                  "Happy Dashain, Happy Dashain, Happy Dashain"
                  "Happy Dashain, Happy Dashain, Happy Dashain"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Related Videos", style: TextStyle(fontSize: 18),),
            ),
            dashboardState.verticallistitem(size,
                "PCPS Dashain Fest",
                "https://i.pinimg.com/736x/0d/54/55/0d5455a5b19b98a63fa4c49446d56bd1.jpg",
                "Oct 13",
                "PCPS.com"),
            dashboardState.verticallistitem(size,
                "PCPS Dashain Fest",
                "https://i.pinimg.com/736x/0d/54/55/0d5455a5b19b98a63fa4c49446d56bd1.jpg",
                "Oct 13",
                "PCPS.com"),
            dashboardState.verticallistitem(size,
                "PCPS Dashain Fest",
                "https://i.pinimg.com/736x/0d/54/55/0d5455a5b19b98a63fa4c49446d56bd1.jpg",
                "Oct 13",
                "PCPS.com"),
            dashboardState.verticallistitem(size,
                "PCPS Dashain Fest",
                "https://i.pinimg.com/736x/0d/54/55/0d5455a5b19b98a63fa4c49446d56bd1.jpg",
                "Oct 13",
                "PCPS.com"),
          ],
        ),
      ),
    );
  }
}
