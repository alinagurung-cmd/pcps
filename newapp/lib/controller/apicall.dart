import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../core/static.dart';


class Apicall {
  //https: //newsapi.org
  // /v2/everything
  // ?q= apple
  //&sortBy= popularity
  //&apiKey= 790894b9cca043aabb6972e4860bd571
  getnewsapi() async{
    try{
      var url = Uri.https(Static.baseurl, Static.path,{
            'q':'apple',
            'sortBy': 'popularity',
            'apiKey': Static.apikey
        }
      );

      var response =await http.get(url);

      if (kDebugMode) {
        print(response.body);
      }
    }catch(e){
      if (kDebugMode){
        print(e);
      }
    }
  }
}