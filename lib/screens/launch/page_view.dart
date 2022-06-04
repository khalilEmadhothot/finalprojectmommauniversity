import 'package:flutter/material.dart';


import '../../widget/widget_container.dart';
import '../../widget/widget_page_view.dart';
class Page_View extends StatefulWidget {
  const Page_View({Key? key}) : super(key: key);

  @override
  State<Page_View> createState() => _Page_ViewState();
}

class _Page_ViewState extends State<Page_View> {

  late PageController _pageController;
  int _cureent_page=0;
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
 
          children: [
            Visibility(
              visible: _cureent_page!=2,
              replacement: Align(
                alignment: AlignmentDirectional.topEnd,
                child: TextButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, '/SingIN');
                },child: Text('START',style: TextStyle(
                  color: Color(0xff23203F),fontWeight: FontWeight.bold,     fontSize: 16,

                ),),),
              ),
              child: Align(
                alignment: AlignmentDirectional.topEnd,
                child: TextButton(onPressed: (){
                  _pageController.animateToPage(2, duration:Duration(seconds: 1), curve:Curves.bounceIn);
                }, child:Text('SKIP',style: TextStyle(
                  color: Color(0xff23203F),
                  fontSize: 16,

                ),
                ),
                ),

              ),
            ),

Expanded(
  child:   PageView(
    onPageChanged: (int page){
      setState(() {

        _cureent_page=page;
      });
    },
    controller: _pageController,
  scrollDirection: Axis.horizontal,
  children: [
  widget_page_view(subtitle:'Now were up in the big leagues \n gettingour turn at bat. The Brady \n   Bunch that  s the way we  Brady Bunch..     ',
    image: 'images/image1.png', title: 'Welcome!',),
  
    
    
    widget_page_view(subtitle:'Now were up in the big leagues \n gettingour turn at bat. The Brady \n   Bunch that  s the way we  Brady Bunch..     ',
        image: 'images/image2.png', title: 'Add to cart',),
    
    
    widget_page_view(subtitle:'Now were up in the big leagues \n gettingour turn at bat. The Brady \n   Bunch that  s the way we  Brady Bunch..     ',
        image: 'images/image3.png', title: 'Enjoy Purchase!',),
  ],
  ),
),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
   widget_container(Selected:_cureent_page==0, marginEnd: 14),
                SizedBox(width: 15,),
                widget_container(Selected:_cureent_page==1, marginEnd: 14),
                SizedBox(width: 15,),
                widget_container(Selected:_cureent_page==2, marginEnd: 14),
              ],
            ),
SizedBox(height: 80,),
          ],
        ),
      ),
    );
  }
}


