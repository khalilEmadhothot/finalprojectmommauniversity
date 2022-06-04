import 'package:flutter/material.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor:  Color(0xff6A90F2),
        title: Text('Settings',style: TextStyle(
          color: Colors.white,
        ),),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, '/TabView');
          }, icon:Icon(Icons.arrow_forward_ios))
        ],

      ),

      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60,),
                  Text('Your App Settings',style: TextStyle(
                    color: Color(0xff352641),
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                  ),),
            SizedBox(height: 40,),
    Text('Notifications',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),

            Row(
              children: [
                Text('Receive notifications on latest  offers \n and  store updates',style: TextStyle(
                  fontSize: 14
                ),),
                SizedBox(width: 25,),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 17),
                  child: Switch(
                    //
                    // activeColor: Color(0xffFA4248),

                  inactiveThumbColor: Colors.white,

                      value:isSwitched,  onChanged:(value) {
                    setState(() {
                      isSwitched = value;
                    });
                  }),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Text('Popups',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            Row(
              children: [
                Text('Disable all popups and adverts from \n third party vendors',style: TextStyle(
                    fontSize: 14
                ),),
                SizedBox(width: 25,),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 17,start: 5),
                  child: Switch(
                    // // focusColor: Colors.red,
                    //   activeColor: Color(0xffFA4248),
                      value:isSwitched,  onChanged:(value) {
                    setState(() {
                      isSwitched = value;
                    });
                  }),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Text('Order History',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            Row(
              children: [
                Text('Keep your order history on the app \n unless manually removed',style: TextStyle(
                    fontSize: 14
                ),),
                SizedBox(width: 25,),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 17,start: 10),
                  child: Switch(
                    // focusColor: Colors.red,
                    //   activeColor: Color(0xffFA4248),
                      value:isSwitched,  onChanged:(value) {
                    setState(() {
                      isSwitched = value;
                    });
                  }),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20,end: 20),
              child: ElevatedButton(
                child: Text('UPDATE SETTINGS',style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/TabView');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(double.infinity, 50),
                  primary: Color(0xff6A90F2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
