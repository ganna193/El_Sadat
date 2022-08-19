class userlist{
  List<user>?Userlist;
  userlist.fromJson(Map<String,dynamic>json){
    Userlist = [];
    json['data'].forEach((element) {
      Userlist!.add(user.fromJson(element));
    });
  }
}

class user{
  int? id;
  String? email;
  String? firstname;
  String? lastname;
  String? avatar;


  user.fromJson(Map<String,dynamic>json){
    id =json['id'];
    email =json['email'];
    firstname =json['first_name'];
    lastname =json['last_name'];
    avatar=json['avatar'];
  }
}
/*{

  "id": 7,
  "email": "michael.lawson@reqres.in",
  "first_name": "Michael",
  "last_name": "Lawson",
  "avatar": "https://reqres.in/img/faces/7-image.jpg"
}*/
