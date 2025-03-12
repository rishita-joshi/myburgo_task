import 'package:mobx/mobx.dart';
import 'package:myburgo_test/config/http_config.dart';
import 'package:myburgo_test/model/ChallangeModel.dart';

part 'AppStore.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  ObservableList<ChallangeData> liveWorkshopList =
      ObservableList<ChallangeData>();

  ObservableList<ChallangeData> videoRecordedList =
      ObservableList<ChallangeData>();

  ObservableList<ChallangeData> challengeList = ObservableList<ChallangeData>();

  getChallangesList() async {
    List<ChallangeData> l1 = await HttpConfig().getChallangesAPI();
    challengeList.addAll(l1);
  }

  getLiveList() {}
  getWorkShopList() {}
}
