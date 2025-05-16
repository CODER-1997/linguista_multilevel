class CompanyUser {
  final String name;
  final String surname;
  final String phone;

  CompanyUser({
    required this.name,
    required this.surname,
    required this.phone,

  });

// Convert the object to a map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'surname': surname,
      'phone': phone,
    };
  }
}
