import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{
   String userName;

   UserProvider({
      this.userName= 'Atharva',
});

   void changeUsername( {
   required String newUserName,
}) async{
      userName = newUserName;
      notifyListeners();
   }
}