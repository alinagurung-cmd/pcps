import 'package:flutter/material.dart';
import 'package:newapp/controller/apicall.dart';
import 'package:newapp/pages/detailpage.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => dashboardState();
}

class dashboardState extends State<dashboard> {

  horizontalitem(size, String title, url, date ){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) => detailpage(),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 8),
            height:size.height/5,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            width: size.width/1.1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(url,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Positioned(bottom: 40, left: 30,
              child: Container(width: size.width/2,
                  child: Text(title,
                    overflow: TextOverflow.ellipsis, maxLines: 2,
                    style: TextStyle(color: Colors.black),))
          ),
          Positioned(bottom: 20, left: 30,
              child: Container(width: size.width/2,
                  child: Text(date,
                    overflow: TextOverflow.ellipsis, maxLines: 1,
                    style: TextStyle(color: Colors.black),))
          ),
          Positioned(bottom: 20, right: 30,
              child: Container(
                  child: Icon(Icons.play_circle, color: Colors.black, size: 30,)
              ))
        ],
      ),
    );
  }

  static verticallistitem(size, String title, url, date, source){
    return
      Container(
        margin: EdgeInsets.all(15),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(20),
                    child: Image.network(fit: BoxFit.cover,
                        url),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  child: Center(
                    child: Icon(Icons.play_circle_fill_rounded, size: 50,
                      color: Colors.white,),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text(title, maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                Container(
                  margin: EdgeInsets.all(15),
                  width: size.width/2.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 15,
                              right: 15, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadiusGeometry.circular(20),
                          ),
                          child: Text(source, style: TextStyle(color: Colors.white),
                          )
                      ),
                      Text(date, style: TextStyle(color: Colors.black),)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );
  }

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    Apicall().getnewsapi();
  }
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Column(
        children: [

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                horizontalitem(size, "NanaStones", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrbqdO4D5tXlzwHtDKNEiYz7M4ZrpyzUqXz7Ja4gy6PgDL4grRjqzDPiYW&s=10" , "02 Feb 2026"),
                horizontalitem(size, "YoYOo", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrbqdO4D5tXlzwHtDKNEiYz7M4ZrpyzUqXz7Ja4gy6PgDL4grRjqzDPiYW&s=10" , "02 Feb 2026"),
                horizontalitem(size, "ItadakiMasu!!!", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrbqdO4D5tXlzwHtDKNEiYz7M4ZrpyzUqXz7Ja4gy6PgDL4grRjqzDPiYW&s=10" , "02 Feb 2026"),
                horizontalitem(size, "Wowowowoow", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrbqdO4D5tXlzwHtDKNEiYz7M4ZrpyzUqXz7Ja4gy6PgDL4grRjqzDPiYW&s=10" , "02 Feb 2026"),
                horizontalitem(size, "Heyyyooo", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrbqdO4D5tXlzwHtDKNEiYz7M4ZrpyzUqXz7Ja4gy6PgDL4grRjqzDPiYW&s=10" , "02 Feb 2026"),

              ],
            ),
          ),
          //Vertical List
          Container(
            height: size.height/1.65,
            child: SingleChildScrollView(
              child: Column(
                children: [
                 verticallistitem(size, "Dashain Celebration", "https://www.redbubble.com/i/sticker/NANA-Ren-Lotus-Flower-Tattoo-by-Blank-Infinity/97027450/7sgk", "02 Feb 2026", "Dashain.com"),
                 verticallistitem(size, "Tihar Celebration", "https://ntb.gov.np/tihar", "25 Oct 2026", "Tihar.com"),
                 verticallistitem(size, "Holi Celebration", "https://www.britannica.com/story/holi-festival-of-colors", "02 Nov 2026", "Holi.com"),
                 verticallistitem(size, "Chhat Celebration", "https://www.diwasfashion.com/en-in/blogs/chhath-puja-story-indian-history.html", "28 December 2026", "Chhath.com"),
                 verticallistitem(size, "Lhoshar", "https://thehimalayantimes.com/multimedia/lhoshar-celebrations", "30 January 2026", "Lhoshar.com"),

                ],
              ),
            ),
          )

        ],
      )
    );
  }
}
