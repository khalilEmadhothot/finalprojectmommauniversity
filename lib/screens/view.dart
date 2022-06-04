import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../firebase/fb_auth_controller.dart';
import '../firebase/fb_fire_store_controller.dart';
import '../modle/product.dart';
import '../utils/helpers.dart';
import '../widget/page_view_home.dart';
import 'add_product.dart';
class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View>with Helpers {
  late PageController _pageController;
  int _cuurentpage=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

backgroundColor: Color(0xfff4f4f4),

appBar: AppBar(

  toolbarHeight: 100,
  backgroundColor: Colors.transparent,
  elevation: 0,
  // title:Text('View product',style: TextStyle(
  //     color: Color(0xff474559),
  //     fontSize: 20
  // ),),


  actions: [

    //
    //
    // TextButton(onPressed: ()async{
    //   await FbAuthController().Singout();
    //   Navigator.pushReplacementNamed(context,'/SingIN');
    // }, child: Icon(Icons.logout,   color: Color(0xff474559),)),
    //
    //
    //
    //
    // IconButton(
    //   onPressed: () {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => AddProduct(),
    //       ),
    //     );
    //   },
    //   icon: Icon(Icons.note_add,color: Colors.black,),
    // ),


  ],
),

       body:SafeArea(

         child: Column(

           children: [


 SizedBox(height: 0,),


             Expanded(
               child: PageView(
                 controller: _pageController,
                 scrollDirection: Axis.horizontal,
                 onPageChanged: (int page){
                   setState(() {

                     _cuurentpage=page;
                   });
                 },
                 children: [
                   page_view_home(image: 'images/imagepageview1.png',),
                   page_view_home(image: 'images/imagepageview1.png',),
                   page_view_home(image: 'images/imagepageview1.png',),
                 ],
               ),
             ),

 Row(
   mainAxisAlignment: MainAxisAlignment.center,
   children: [
 TabPageSelectorIndicator(backgroundColor:_cuurentpage==0 ? Colors.blue : Colors.grey, borderColor: Colors.grey, size: 10),
     TabPageSelectorIndicator(backgroundColor:_cuurentpage==1 ? Colors.blue : Colors.grey, borderColor: Colors.grey, size: 10),
     TabPageSelectorIndicator(backgroundColor:_cuurentpage==2 ? Colors.blue : Colors.grey, borderColor: Colors.grey, size: 10),
   ],
 ),
 SizedBox(height: 35,),
 // Expanded(
 //   child:   GridView(
 //     scrollDirection: Axis.horizontal,
 //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
 //
 //     crossAxisCount: 1,
 //
 //   ),
 //   children: [
 //     Image.asset('images/imagepageview1.png'),
 //   ],),
 // ),


             // Expanded(
             //   child: Padding(
             //     padding: const EdgeInsetsDirectional.only(start: 12,end: 12),
             //     child: GridView.builder(
             //
             //         shrinkWrap: true,
             //         // physics: NeverScrollableScrollPhysics(),
             //         itemCount: 20,
             //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             //           crossAxisSpacing: 13,
             //
             //           mainAxisSpacing: 13,
             //           childAspectRatio: 120/160,
             //           crossAxisCount: 2,
             //         ),
             //         itemBuilder: (context,index){
             //       return    Container(
             //
             //         decoration: BoxDecoration(
             //           color: Colors.white,
             //           borderRadius: BorderRadius.circular(15),
             //         ),
             //         child: Column(
             //           children: [
             //             SizedBox(height: 1),
             //             Image.asset('images/im1.png'),
             //             SizedBox(height: 10,),
             //             Padding(
             //               padding: const EdgeInsetsDirectional.only(start: 20),
             //               child: Align(
             //                 alignment: AlignmentDirectional.center,
             //                 child: Text('Bagpack',style: TextStyle(
             //                   color: Color(0xff474559),
             //                   fontSize: 20,
             //                 ),),
             //               ),
             //             ),
             //             SizedBox(height: 10,),
             //           // Padding(
             //           //     padding: const EdgeInsetsDirectional.only(start: 20),
             //           //     child: Align(
             //           //       alignment: AlignmentDirectional.topStart,
             //           //       child: Text('10.00',style: TextStyle(
             //           //         color: Color(0xff9E9DB0),
             //           //         fontSize: 15,
             //           //       ),),
             //           //     ),
             //           //   ),
             //             Row(
             //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             //               children: [
             //                 Text('10.00',style: TextStyle(
             //                   color: Color(0xff9E9DB0),
             //                   fontSize: 15,
             //                 ),),
             //                 IconButton(onPressed:(){}, icon:Icon(Icons.add_shopping_cart_outlined,
             //                   color: Color(0xff474559),)),
             //               ],
             //             ),
             //           ],
             //         ),
             //       );
             //     }),
             //   ),
             // ),


             // StreamBuilder<QuerySnapshot<Note>>(
             //     stream: FbFirestoreController().read(),
             //     builder: (context, snapshot) {
             //       if (snapshot.connectionState == ConnectionState.waiting) {
             //         return Center(child: CircularProgressIndicator());
             //       } else if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
             //         return ListView.builder(
             //           itemCount: snapshot.data!.docs.length,
             //           itemBuilder: (context, index) {
             //             return ListTile(
             //               onTap: () {
             //                 navigateToUpdateNoteScreen(snapshot, index);
             //               },
             //               leading: Icon(Icons.note),
             //               title: Text(snapshot.data!.docs[index].data().title),
             //               subtitle: Text(snapshot.data!.docs[index].data().info),
             //               trailing: IconButton(
             //                 onPressed: () async =>
             //                 await _deleteNote(snapshot.data!.docs[index].id),
             //                 icon: Icon(Icons.delete),
             //               ),
             //             );
             //           },
             //         );
             //       } else {
             //         return Center(
             //           child: Text("NO DATA"),
             //         );
             //       }
             //     }),
             //
             //


             StreamBuilder<QuerySnapshot<Product>>(
               stream:FbFireStoreController().read(),
               builder: (context, snapshot) {
                 if(snapshot.connectionState==ConnectionState.waiting){
                   return Center(
                     child: CircularProgressIndicator(),
                   );
                 }else if(snapshot.hasData&&snapshot.data!.docs.isNotEmpty){

                   return   Expanded(
                     child: Padding(
                       padding: const EdgeInsetsDirectional.only(start: 12,end: 12),
                       child: GridView.builder(

                           shrinkWrap: true,
                           // physics: NeverScrollableScrollPhysics(),
                           itemCount:snapshot.data!.docs.length,
                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisSpacing: 13,

                             mainAxisSpacing: 13,
                             childAspectRatio: 100/160,
                             crossAxisCount: 2,
                           ),
                           itemBuilder: (context,index){
                             return    Container(
                               decoration: BoxDecoration(

                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(15),
                               ),
                               child: Column(
                                 children: [
                                   SizedBox(height: 1),
                                   Image.asset('images/im1.png',),
                                   SizedBox(height: 10,),
                                   Padding(
                                     padding: const EdgeInsetsDirectional.only(start: 20),
                                     child: Text(snapshot.data!.docs[index].data().title,style: TextStyle(
                                       color: Color(0xff474559),
                                       fontSize: 20,
                                     ),),
                                   ),
                                   SizedBox(height: 10,),
                                   // Padding(
                                   //     padding: const EdgeInsetsDirectional.only(start: 20),
                                   //     child: Align(
                                   //       alignment: AlignmentDirectional.topStart,
                                   //       child: Text('10.00',style: TextStyle(
                                   //         color: Color(0xff9E9DB0),
                                   //         fontSize: 15,
                                   //       ),),
                                   //     ),
                                   //   ),
                                   Padding(
                                     padding: const EdgeInsetsDirectional.only(start: 20,end: 20),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children: [
                                         Text(snapshot.data!.docs[index].data().price,style: TextStyle(
                                           color: Color(0xff9E9DB0),
                                           fontSize: 15,
                                         ),),
                                         Spacer(),
                                         IconButton(onPressed:()async{
                                           _deleteProduct(snapshot.data!.docs[index].id);
                                         }, icon:Icon(Icons.delete,
                                           color: Color(0xffDD2828),)),
                                         // IconButton(onPressed:()async{
                                         //  navigateToUpdateNoteScreen(snapshot, index);
                                         // }, icon:Icon(Icons.update,
                                         //   color: Color(0xff474559),),),
                                         IconButton(
                                           onPressed: ()async{
                                           navigateToUpdateNoteScreen(snapshot, index);
                                         }, icon:Image.asset('images/update.png'),),
                                       ],
                                     ),
                                   ),
                                 ],
                               ),
                             );
                           }),
                     ),
                   ) ;
     } else {
     return Center(
     child: Text("NO DATA"),
     );
     }
   }
             ),


           ],
         ),
       ),
    // body: StreamBuilder<QuerySnapshot<Product>>(
    //  stream: FbFireStoreController().read(),
    //  builder: (context, snapshot) {
    //  if (snapshot.connectionState == ConnectionState.waiting) {
    //  return Center(child: CircularProgressIndicator());
    //  } else if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
    //  return ListView.builder(
    //  itemCount: snapshot.data!.docs.length,
    //  itemBuilder: (context, index) {
    //  return ListTile(
    //  onTap: () {
    //  navigateToUpdateNoteScreen(snapshot, index);
    //  },
    //  leading: Icon(Icons.note),
    //  title: Text(snapshot.data!.docs[index].data().title),
    //  subtitle: Text(snapshot.data!.docs[index].data().price),
    //  trailing: IconButton(
    //  onPressed: () async =>
    //  await _deleteProduct(snapshot.data!.docs[index].id),
    //  icon: Icon(Icons.delete),
    //  ),
    //  );
    //  },
    //  );
    //  } else {
    //  return Center(
    //  child: Text("NO DATA"),
    //  );
    //  }
    //  }),
    );
  }
  void navigateToUpdateNoteScreen(
      AsyncSnapshot<QuerySnapshot<Product>> snapshot, int index) {
    QueryDocumentSnapshot<Product> noteSnapshot = snapshot.data!.docs[index];
    Product product = noteSnapshot.data();
    product.id = noteSnapshot.id;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddProduct(
          product: product,
        ),
      ),
    );
  }
  Future<void> _deleteProduct(String id) async {
    bool deleted = await FbFireStoreController().delete(path: id);
    String message =
    deleted ? 'Note deleted successfully' : 'Note delete failed!';
    showSnackBar(context, message: message, error: !deleted);
  }
}


