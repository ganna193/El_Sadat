
import 'dart:io';

main()
{
  double? sum;
  print("Enter the salary : ");
  var salary= double.parse(stdin.readLineSync()!);

  print("Enter the overtime in hours : ");
  var overtime = double.parse(stdin.readLineSync()!);

  if ((salary >5000) && (overtime>1))
    {
      print('the taxes will be 10%');
      print('the salary will increase by 100');
      sum = (salary +(salary *0.1)) + 100 ;
      print ('the final salary = ');
      print(sum);
    }
  else if ((salary <5000) && (overtime<1)) {
    print('try your best!');
  }
}

