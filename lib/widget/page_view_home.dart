import 'package:flutter/material.dart';
class page_view_home extends StatelessWidget {
  const page_view_home({

    Key? key,required this.image,
  }) : super(key: key);
final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 20,end: 20),
      child: Container(
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(image,fit: BoxFit.contain,),
      ),
    );
  }
}
// images/imagepageview1.png