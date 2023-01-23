enum LocationCatalog {
  africaLagos("Africa/Lagos", "Lagos", "assets/flags/nigeria.png"),
  africaCairo("Africa/Cairo", "Cairo", "assets/flags/egypt.png"),
  africaNairobi("Africa/Nairobi", "Nairobi", "assets/flags/kenya.png"),
  europeLondon("Europe/London", "London", "assets/flags/uk.png"),
  americaNewYork("America/New_York", "New York", "assets/flags/usa.png"),
  asiaJakarta("Asia/Jakarta", "Jakarta", "assets/flags/indonesia.png"),
  asiaSeoul("Asia/Seoul", "Seoul", "assets/flags/south_korea.png");

  final String timezone;
  final String city;
  final String flag;

  const LocationCatalog(this.timezone, this.city, this.flag);

  static LocationCatalog lookUp(String city) {
    return LocationCatalog
        .values
        .firstWhere((element) => element.city == city);
  }
}