import 'package:flutter/material.dart';
class Profial extends StatefulWidget {
  const Profial({Key? key}) : super(key: key);

  @override
  State<Profial> createState() => _ProfialState();
}

class _ProfialState extends State<Profial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6A90F2),
        title: Text('Profial'),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, '/TabView');
          }, icon:Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 50,),
          CircleAvatar(
            backgroundImage: ExactAssetImage('images/Bg.png'),
            radius: 60,
          ),
          SizedBox(height: 20,),
          Text('John Deo', style: TextStyle(
              color: Color(0xff444657),
              fontSize: 20
          ),
            textAlign: TextAlign.center,), SizedBox(height: 10,),
          Text('johndeo@yourmail.com', style: TextStyle(
              color: Color(0xff87879D),
              fontSize: 15
          ),
            textAlign: TextAlign.center,),

          SizedBox(height: 35,),
          Divider(),



          Padding(
            padding: const EdgeInsetsDirectional.only(start: 15,end: 15),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 15),
                    child: Row(
                      children: [
                        TextButton(onPressed: (){}, child:Icon(Icons.offline_pin,color: Color(0xff6A90F2),)),
                        Spacer(),
                        Text('البيانات',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
Divider(color: Colors.grey,),

SizedBox(height: 20,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.black,
                      enabled: false,
                      decoration: InputDecoration(

                        enabled: true,
                        labelText: 'khalil emad hothot',
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // focusColor: Colors.red,
                        constraints: BoxConstraints(
                          maxWidth: 400,
                          maxHeight: 50,
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
                        prefixIcon: Icon(Icons.person,color: Color(0xff5D5D5D ),),
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black,
                      enabled: false,
                      decoration: InputDecoration(

                        enabled: true,
                        labelText: 'hthtkhlyl24@gmail.com',
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // focusColor: Colors.red,
                        constraints: BoxConstraints(
                          maxWidth: 400,
                          maxHeight: 50,
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
                        prefixIcon: Icon(Icons.email,color: Color(0xff5D5D5D ),),
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),

    );
  }
}