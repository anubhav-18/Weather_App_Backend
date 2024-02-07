class WeatherModel {
  late String temp;
  late String city;
  late String desc;

  WeatherModel.fromMap(Map<String, dynamic> json){
        temp = json['main']['temp'].toString();
        city = json['name'];
        desc = json['weather'][0]['description'];
  }
}