import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10,end: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cart',style: TextStyle(
                      color: Color(0xff474559),
                      fontSize: 20
                  ),),

                  TextButton(onPressed: (){}, child: Icon(Icons.search_rounded,   color: Color(0xff474559),))
                ],
              ),
            ),

    Expanded(
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsetsDirectional.only(),
            child: Container(
              margin: EdgeInsetsDirectional.only(start: 13,end: 13,top: 30),
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Row(
                children: [
                  // IconButton(onPressed: (){}, icon:Icon(Icons.delete_forever,color: Colors.red,size: 36,)),
                  Image.asset('images/i.png'),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Handbag',style: TextStyle(
                            color: Colors.black,
                            fontSize: 16
                        ),),
                        SizedBox(height: 10,),
                        Text('The best kind of products',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13
                        ),),
                        SizedBox(height: 0,),

                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon:Icon(Icons.monetization_on_outlined,color: Colors.grey,)),
                            Text('100',style: TextStyle(
                                color: Colors.black,
                                fontSize: 18
                            ),),
                            SizedBox(width: 150,),
                            IconButton(onPressed: (){}, icon:Icon(Icons.delete_forever, color: Color(0xff6A90F2),size: 36,))
                          ],
                        ),

                      ],
                    ),
                  ),


                ],
              ),
            ),
          );
        }),
    ),


            Padding(
              padding: const EdgeInsetsDirectional.only(start: 12,end: 12),
              child: Text('ADD  PRODUCR',style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20,end: 20),
              child: ElevatedButton(
                child: Text('Add Product',style: TextStyle(
                  fontSize: 18,
                ),),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(double.infinity, 60),
                  primary:  Color(0xff6A90F2),
                ),
              ),
            ),
            SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}
