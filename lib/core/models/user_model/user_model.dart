class UserModel {
  UserModel({
    required this.email,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.avatar,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    email: json['email'],
    name: json['name'],
    phoneNumber: json['phoneNumber'],
    address: json['address'],
    avatar: json['avatar'],
  );
  String email;
  String name;
  String phoneNumber;
  List<String> address;
  String avatar;

  Map<String, dynamic> toJson() => {
    'email': email,
    'name': name,
    'phoneNumber': phoneNumber,
    'address': address,
    'avatar': avatar,
  };
}
