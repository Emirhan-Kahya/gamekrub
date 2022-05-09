class UserModel {
  String name, email, created;

  UserModel({required this.email, required this.name, required this.created});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      created: json['created_at'],
    );
  }
}
