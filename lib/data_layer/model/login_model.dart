class LoginResponse {
  User? user;
  String? token;
  bool? status;

  LoginResponse({this.user, this.token, this.status});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() => {
    'user': user?.toJson(),
    'token': token,
    'status': status,
  };
}

class User {
  int? id;
  String? name;
  String? otp;
  bool? twoStep;
  String? email;
  String? emailVerifiedAt;

  String? createdAt;
  String? updatedAt;

  User({
    this.id,
    this.name,
    this.otp,
    this.twoStep,
    this.email,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    otp = json['otp'];
    twoStep = json['two_step'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'otp': otp,
    'two_step': twoStep,
    'email': email,
    'email_verified_at': emailVerifiedAt,
    'created_at': createdAt,
    'updated_at': updatedAt,
  };
}
