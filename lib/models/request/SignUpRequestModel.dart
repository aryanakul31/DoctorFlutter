/// name : "Nakul"
/// email : "asv"
/// password : ""

class SignUpRequestModel {
  SignUpRequestModel({
      String? name, 
      String? email, 
      String? password,}){
    _name = name;
    _email = email;
    _password = password;
}

  SignUpRequestModel.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _password = json['password'];
  }
  String? _name;
  String? _email;
  String? _password;

  String? get name => _name;
  String? get email => _email;
  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['password'] = _password;
    return map;
  }

}