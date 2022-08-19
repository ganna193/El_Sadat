main() {
  List myList = [8, 12, 18, 20, 24, 26, 30];
  /*for(var i=4;i<6;i++)
    {
      print(myList[i]);
    }*/

  var first = myList.getRange(4, 6).toList();
  print(first);

  ///////////////////////////////////////////////////////////////////////

  List mylist = [10, 20, 30, 40, 50, 55, 65, 75];
  List mylist2 = [20, 25, 35, 65, 50, 55, 75, 80];
  var newList = mylist + mylist2;
  var Newlist = newList.toSet().toList();
  print(Newlist);

  ////////////////////////////////////////////////////////////////////////
}

main()
{
  coordinates c1 = new coordinates ();
  c1.show();

}
abstract class Coordinates
{
  var latitude = 50 ;
  var longitude = 60;
}
class coordinates extends Coordinates
{
  void show()
  {
    print (latitude);
    print (longitude);
  }
}
////////////////////////////////////////////////////////////

import 'dart:io';

main()
{
  String ? email;
  print('Enter the email : ');
  email = stdin.readLineSync();
  if (email == 'email@email.com')
  {
    print('it is true');
  }
  else
  {
    print('it is wrong');
  }
}




