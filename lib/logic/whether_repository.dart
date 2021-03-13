import 'package:flutter_bloc_counter/logic/whether_api.dart';
import 'package:flutter_bloc_counter/model/whether.dart';

class WhetherRepository {
  WhetherApi whetherApi = WhetherApi();

  WhetherData getWhetherByCityName(String cityName) {
    return WhetherData.fromJson(whetherApi.fetchWhetherDataFromApi(cityName));
  }
}
