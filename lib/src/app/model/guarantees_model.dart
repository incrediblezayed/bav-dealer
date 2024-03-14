///Data Model for Guarantees
class Guarantees{
  ///Image Field Output Default Constructor
  Guarantees({
    this.id,
    this.name,
  });

  ///From Json Method to create new constructor with data
  factory Guarantees.fromJson(Map<String, dynamic> json) {
    return Guarantees(
      id: json['id'],
      name: json['name'],
    );
  }

  ///Guarantees Id
  final String? id;

  ///Guarantees name
  final String? name;
}
