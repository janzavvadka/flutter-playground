import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';

class WhetherApi extends DioForNative {
  final _url = 'https://community-open-weather-map.p.rapidapi.com/weather?';

  fetchWhetherDataFromApi(String name) async {
    return await this.get(
      _url + 'lang=pl&q' + name ,
      options: Options(headers: {
        'x-rapidapi-host': 'community-open-weather-map.p.rapidapi.com',
        'x-rapidapi-key': 'xxx',
      }),
    );
  }
}
