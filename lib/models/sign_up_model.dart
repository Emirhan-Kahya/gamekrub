class SignUpModel {
  String name, email, password, confirmPassword;

  SignUpModel({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["name"] = this.name;
    data["email"] = this.email;
    data["password"] = this.password;
    data["r_password"] = this.confirmPassword;

    return data;
  }
}
