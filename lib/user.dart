


class User{
  String name;
  String email;
  String molibe;
  String gender;
  String course;
  String address;


//<editor-fold desc="Data Methods">

  User({
    required this.name,
    required this.email,
    required this.molibe,
    required this.address,
    required this.gender,
    required this.course,

  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is User &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              email == other.email &&
              molibe == other.molibe &&
              address == other.address &&
              gender == other.gender &&

              course == other.course);

  @override
  int get hashCode =>
      name.hashCode ^
      email.hashCode ^
      molibe.hashCode ^
      address.hashCode ^
      gender.hashCode ^

      course.hashCode;

  @override
  String toString() {
    return 'User{' +
        ' username: $name,' +
        ' email: $email,' +
        ' molibe: $molibe,' +
        ' address: $address,' +
        ' gender: $gender,' +

        ' course: $course,' +
        '}';
  }

  User copyWith({
    String? name,
    String? email,
    String? molibe,
    String? address,
    String? gender,

    String? course,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      molibe: molibe ?? this.molibe,
      address: address ?? this.address,
      gender: gender ?? this.gender,

      course: course ?? this.course,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'email': this.email,
      'molibe': this.molibe,
      'address': this.address,
      'gender': this.gender,

      'course': this.course,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      email: map['email'] as String,
      molibe: map['molibe'] as String,
      address: map['address'] as String,
      gender: map['gender'] as String,

      course: map['course'] as String,
    );
  }

//</editor-fold>
}