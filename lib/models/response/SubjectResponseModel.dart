/// name : ""
/// image : ""
/// color : ""

class SubjectResponseModel {
  SubjectResponseModel({
    required String name,
    required String image,
    required String color,
  }) {
    _name = name;
    _image = image;
    _color = color;
  }

  SubjectResponseModel.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _color = json['color'];
  }

  String _name = "";
  String _image = "";
  String _color = "";

  String get name => _name;

  String get image => _image;

  String get color => _color;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['color'] = _color;
    return map;
  }
}
