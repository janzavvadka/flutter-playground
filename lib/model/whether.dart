class WhetherData {
  String main;
  String description;
  double temperature;

  WhetherData({this.main, this.description, this.temperature});

  factory WhetherData.fromJson(dynamic json) {
    return WhetherData(
        main: json['weather']['main'],
        description: json['weather']['description'],
        temperature: json['main']['temp'] + 273.15);
  }
}
