class City {
  bool isselected;
  final String city;
  final String country;
  final bool isdefault;

  City({
    required this.isselected,
    required this.city,
    required this.country,
    required this.isdefault,
  });
  static List<City> citylist = [
    City(
      isselected: false,
      city: 'Berlin',
      country: "Germany",
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Berlin',
      country: 'Germany',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Munich',
      country: 'Germany',
      isdefault: false,
    ),
    City(isselected: false, city: 'Paris', country: 'France', isdefault: false),
    City(
      isselected: false,
      city: 'Marseille',
      country: 'France',
      isdefault: false,
    ),
    City(isselected: false, city: 'New York', country: 'USA', isdefault: false),
    City(isselected: false, city: 'Chicago', country: 'USA', isdefault: false),
    City(isselected: false, city: 'Tokyo', country: 'Japan', isdefault: false),
    City(isselected: false, city: 'Kyoto', country: 'Japan', isdefault: false),
    City(
      isselected: false,
      city: 'Beijing',
      country: 'China',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Shanghai',
      country: 'China',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Moscow',
      country: 'Russia',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Saint Petersburg',
      country: 'Russia',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'London',
      country: 'United Kingdom',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Manchester',
      country: 'United Kingdom',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Sydney',
      country: 'Australia',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Brisbane',
      country: 'Australia',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Toronto',
      country: 'Canada',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Montreal',
      country: 'Canada',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Surat',
      country: 'India',
      isdefault: true,
    ),
    City(isselected: false, city: 'Mumbai', country: 'India', isdefault: false),
    City(
      isselected: false,
      city: 'Bangalore',
      country: 'India',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'São Paulo',
      country: 'Brazil',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Rio de Janeiro',
      country: 'Brazil',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Johannesburg',
      country: 'South Africa',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Durban',
      country: 'South Africa',
      isdefault: false,
    ),
    City(isselected: false, city: 'Cairo', country: 'Egypt', isdefault: false),
    City(
      isselected: false,
      city: 'Alexandria',
      country: 'Egypt',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Istanbul',
      country: 'Turkey',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Ankara',
      country: 'Turkey',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Seoul',
      country: 'South Korea',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Busan',
      country: 'South Korea',
      isdefault: false,
    ),
    City(isselected: false, city: 'Madrid', country: 'Spain', isdefault: false),
    City(
      isselected: false,
      city: 'Barcelona',
      country: 'Spain',
      isdefault: false,
    ),
    City(isselected: false, city: 'Rome', country: 'Italy', isdefault: false),
    City(isselected: false, city: 'Milan', country: 'Italy', isdefault: false),
    City(
      isselected: false,
      city: 'Buenos Aires',
      country: 'Argentina',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Córdoba',
      country: 'Argentina',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Bangkok',
      country: 'Thailand',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Chiang Mai',
      country: 'Thailand',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Lagos',
      country: 'Nigeria',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Abuja',
      country: 'Nigeria',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Kuala Lumpur',
      country: 'Malaysia',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'George Town',
      country: 'Malaysia',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Hanoi',
      country: 'Vietnam',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Ho Chi Minh City',
      country: 'Vietnam',
      isdefault: false,
    ),
    City(isselected: false, city: 'Tehran', country: 'Iran', isdefault: false),
    City(isselected: false, city: 'Mashhad', country: 'Iran', isdefault: false),
    City(isselected: false, city: 'Baghdad', country: 'Iraq', isdefault: false),
    City(isselected: false, city: 'Basra', country: 'Iraq', isdefault: false),
    City(
      isselected: false,
      city: 'Jakarta',
      country: 'Indonesia',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Surabaya',
      country: 'Indonesia',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Nairobi',
      country: 'Kenya',
      isdefault: false,
    ),
    City(
      isselected: false,
      city: 'Mombasa',
      country: 'Kenya',
      isdefault: false,
    ),
  ];

  static List<City> getselectedlist(){
    List<City> selectedcity = City.citylist;
    return selectedcity.where((city) => city.isselected == true).toList(); 

  }



}
