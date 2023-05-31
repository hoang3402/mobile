// ignore_for_file: non_constant_identifier_names

List<City> AllCity = [];

class City {
  final int id;
  final String name;
  final bool active;
  final Country country;

  City(this.id, this.name, this.active, this.country);
}

class Country {
  final String name;
  final String isoCode;
  final String dialingCode;

  Country(
      {required this.name, required this.isoCode, required this.dialingCode});

  static Country VN =
      Country(name: "Việt Nam", isoCode: "VN", dialingCode: "84");
}

class AppSettings {}
