enum LocationCatalog {
  africaLagos("Africa/Lagos", "Lagos", "/image/flag/nigeria.png"),
  unmapped("", "", "");

  final String timezone;
  final String city;
  final String flag;

  const LocationCatalog(this.timezone, this.city, this.flag);

  static LocationCatalog lookUp(String city) {
    LocationCatalog? locationCatalog = LocationCatalog
        .values
        .firstWhere((element) => element.city == city);
    return locationCatalog ?? LocationCatalog.unmapped;
  }
}