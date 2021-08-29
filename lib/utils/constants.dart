abstract class Settings {
  static const String WEATHER_API_URL = 'https://api.openweathermap.org/data/2.5';
  static const String WEATHER_API_KEY = '24b5e3414fbc3b088e0d7fc12e820ca9';
  static const String WEATHER_API_IMAGE_URL_x2 = 'http://openweathermap.org/img/wn/%s@2x.png';
  static const String WEATHER_API_IMAGE_URL_x4 = 'http://openweathermap.org/img/wn/%s@4x.png';
  static const String TRANSLATIONS_PATH = 'assets/translations';
}

abstract class Units {
  static const METRIC = 'metric';
}