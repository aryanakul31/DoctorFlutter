/// status : 200
/// message : "Hello"
/// data : null

class CustomBaseResponse {
  CustomBaseResponse({
    required int status,
    required String message,
    Map<String, dynamic>? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  CustomBaseResponse.fromJson(Map<String, dynamic> responseData) {
    _status = responseData['status'];
    _message = responseData['message'];
    _data = responseData['response'];
  }

  int _status = 0;
  String _message = "";
  Map<String, dynamic>? _data = {};

  int get status => _status;

  String get message => _message;

  Map<String, dynamic>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    map['data'] = _data;
    return map;
  }
}
