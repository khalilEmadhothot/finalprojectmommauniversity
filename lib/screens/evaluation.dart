import 'package:flutter/material.dart';
class Evalution extends StatefulWidget {
  const Evalution({Key? key}) : super(key: key);

  @override
  State<Evalution> createState() => _EvalutionState();
}

class _EvalutionState extends State<Evalution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

      Text('        How was your order \n experiences from it Momma?',style: TextStyle(
        color: Colors.black,
        fontSize: 22,
      ),),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon:Icon(Icons.star,color: Colors.indigoAccent,)),
              SizedBox(width: 10,),
              IconButton(onPressed: (){}, icon:Icon(Icons.star,color: Colors.indigoAccent,)),
              SizedBox(width: 10,),
              IconButton(onPressed: (){}, icon:Icon(Icons.star,color: Colors.indigoAccent,)),
              SizedBox(width: 10,),
              IconButton(onPressed: (){}, icon:Icon(Icons.star,color: Colors.indigoAccent,)),
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20,end: 20),
            child: ElevatedButton(
              child: Text('Submit',style: TextStyle(
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
          SizedBox(height: 20,),
          Text('Not now! May be later',style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
            decoration:TextDecoration.underline,
          ),),
        ],
      ),
    );
  }
}
