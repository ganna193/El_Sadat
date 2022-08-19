class UsersListModel{
  List<UserModel>? userList;


  UsersListModel.fromJson(Map<String, dynamic> json){
    userList = [];
    json['data'].forEach((element) {
      userList!.add(UserModel.fromJson(element));
    });
  }
}

class UserModel {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }
}
