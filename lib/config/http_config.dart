import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myburgo_test/model/ChallangeModel.dart';

class HttpConfig {
  String challangeAPiUrl =
      "http://api.myburgo.com/home/workshop/filter?tags=Challenges";
  String recoredVideoApiUrl =
      "http://api.myburgo.com/home/workshop/filter?type=2";
  String liveWorkshoupAPIUrl =
      "http://api.myburgo.com/home/workshop/filter?type=1";

  Future<List<ChallangeData>> getChallangesAPI() async {
    List<ChallangeData> challangeModelList = [];
    var request = http.Request('GET', Uri.parse(challangeAPiUrl));
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var parsed = jsonDecode(await response.stream.bytesToString());
      ChallangeModel challangeModel = ChallangeModel.fromJson(parsed);

      for (int i = 0; i < challangeModel.data!.length; i++) {
        challangeModelList.add(challangeModel.data![i]);
      }
      return challangeModelList;
    } else {
      print(response.reasonPhrase);

      throw Exception(response.reasonPhrase);
    }
  }

  Future<List<ChallangeData>> getRecordedVideo() async {
    List<ChallangeData> recodedVideoList = [];
    var request = http.Request('GET', Uri.parse(recoredVideoApiUrl));
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var parsed = jsonDecode(await response.stream.bytesToString());
      ChallangeModel challangeModel = ChallangeModel.fromJson(parsed);
      for (int i = 0; i < challangeModel.data.length; i++) {
        recodedVideoList.add(challangeModel.data[i]);
      }
      return recodedVideoList;
    } else {
      print(response.reasonPhrase);

      throw Exception(response.reasonPhrase);
    }
  }

  Future<List<ChallangeData>> getLiveVideo() async {
    List<ChallangeData> liveWorkShopList = [];
    var request = http.Request('GET', Uri.parse(liveWorkshoupAPIUrl));
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var parsed = jsonDecode(await response.stream.bytesToString());
      ChallangeModel challangeModel = ChallangeModel.fromJson(parsed);
      for (int i = 0; i < challangeModel.data!.length; i++) {
        liveWorkShopList.add(challangeModel.data![i]);
      }
      return liveWorkShopList;
    } else {
      print(response.reasonPhrase);

      throw Exception(response.reasonPhrase);
    }
  }
}
