import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../firebase/fb_auth_controller.dart';
import '../../modle/fb_response.dart';
import '../utils/helpers.dart';
class SingIN extends StatefulWidget {
  const SingIN({Key? key}) : super(key: key);

  @override
  State<SingIN> createState() => _SingINState();
}

class _SingINState extends State<SingIN>with Helpers {
  bool _obscureText = true;
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(top: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 33),
                  child: Text('Sign In', style: TextStyle(
                      color: Color(0xff23203F),
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 33, bottom: 10),
                  child: Text(
                    'Login to continue your account,', style: TextStyle(
                    color: Color(0xff716F87),
                    fontSize: 16,
                  ),),
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
                  child: TextField(
                    controller: _emailTextController,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(

                      enabled: true,
                      hintText: 'Email ',
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // focusColor: Colors.red,
                      constraints: BoxConstraints(
                        maxWidth: 400,
                        maxHeight: 60,
                      ),
                      // enabledBorder: UnderlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: Colors.black,
                      //     width: 1,
                      //   ),
                      // ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff6A90F2),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.email, color: Color(0xff5D5D5D),),
                    ),

                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
                  child: TextField(
                    controller: _passwordTextController,
                    keyboardType: TextInputType.visiblePassword,
                    obscuringCharacter: '*',
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(

                      enabled: true,
                      hintText: 'Password  ',
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // focusColor: Colors.red,
                      constraints: BoxConstraints(
                        maxWidth: 400,
                        maxHeight: 60,
                      ),
                      // enabledBorder: UnderlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: Colors.black,
                      //     width: 1,
                      //   ),
                      // ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff6A90F2),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.lock, color: Color(0xff5D5D5D),),
                      suffixIcon: Icon(
                        Icons.remove_red_eye, color: Color(0xff5D5D5D),),
                    ),


                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/ForgetPasswordScreen'),
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 35, end: 35),
                  child: ElevatedButton(

                      onPressed: () async => await _performLogin(),

                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minimumSize: Size(328, 60),
                      primary: Color(0xff6A90F2),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 35, end: 35),
                  child: ElevatedButton.icon(
                    onPressed: () {

                    },
                    icon: Icon(Icons.add),
                    //icon data for elevated button
                    label: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 10),
                      child: Text("Login with facebook", style: TextStyle(
                        fontSize: 16,
                      ),),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minimumSize: Size(328, 60),
                      primary: Color(0xff4267B2),
                    ), //label text
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t have an account?', style: TextStyle(
                      color: Color(0xff9391A4),
                    ),),
                    TextButton(
                        onPressed: () => Navigator.pushNamed(context, '/Sign_Up'),
                        child: Text('Sign up',
                      style: TextStyle(
                        color: Color(0xff23203F),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),)),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _performLogin() async {
    if (checkData()) {
      await _login();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }
    showSnackBar(context, message: 'Enter required data!',error: true);
    return false;
  }

  Future<void> _login() async {
    FbResponse fbResponse = await FbAuthController().SignIn(email: _emailTextController.text, password: _passwordTextController.text);
    showSnackBar(context, message: fbResponse.message, error: ! fbResponse.states);
    if(fbResponse.states) {
      Navigator.pushReplacementNamed(context, '/TabView');
    }
  }


}