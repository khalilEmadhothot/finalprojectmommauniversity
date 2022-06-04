import 'package:flutter/material.dart';
class Successful extends StatefulWidget {
  const Successful({Key? key}) : super(key: key);

  @override
  State<Successful> createState() => _SuccessfulState();
}

class _SuccessfulState extends State<Successful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Image.asset('images/Group 2.png')),
          SizedBox(height: 20,),
          Text('Successfully booked !',style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),),
          SizedBox(height: 10,),
          Text('We have emailed you the receipt.',style: TextStyle(
            color: Colors.grey,
          ),),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20,end: 20),
            child: ElevatedButton(
              child: Text('Finish!',style: TextStyle(
                  fontSize: 20,
              ),),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(double.infinity, 60),
                primary: Color(0xff6A90F2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
