import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finalprojectmommauniversity/screens/view.dart';
import 'package:flutter/material.dart';



import '../firebase/fb_auth_controller.dart';
import '../firebase/fb_fire_store_controller.dart';
import '../modle/product.dart';
import '../utils/helpers.dart';
import 'add_product.dart';
import 'cart.dart';
class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin, Helpers  {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6A90F2),
        bottom: TabBar(
          labelColor: Colors.white,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          indicatorColor: Colors.white,
          indicatorWeight: 2,
          unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal
          ),
          controller: _tabController,
          onTap: (int index){
            setState(() {
              _tabController.index=index;
            });
          },
          tabs: [
            Tab(text: 'View product',),
            Tab(text: 'Cart product',),
          ],
        ),

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              // arrowColor: Color(0xff6A90F2),
              decoration: BoxDecoration(
                color:Color(0xff6A90F2),
              ),
              accountName: Text('khalil'),
              accountEmail: Text('khalilEmadothoht@gmail.com'),
              currentAccountPicture: CircleAvatar(
      // child: Image.asset('images/'),
              ),
              currentAccountPictureSize: Size(80,80),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Color(0xff4267B2),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xff4267B2),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xff4267B2),
                ),
              ],
            ),

            ListTile(
              onTap: (){
                Navigator.pushReplacementNamed(context, '/TabView');
              },
              leading: Icon(Icons.home,color: Color(0xff5D5D5D ),),
              title: Text('Home',style: TextStyle(
                color: Color(0xff87879D),
              ),),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              onTap: (){
                Navigator.pushReplacementNamed(context, '/Profial');
              },
              leading: Icon(Icons.person,color: Color(0xff5D5D5D ),),
              title: Text('My Profile',style: TextStyle(
                color: Color(0xff87879D),
              ),),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              onTap: (){
                Navigator.pushReplacementNamed(context, '/Settings');
              },
              leading: Icon(Icons.settings,color: Color(0xff5D5D5D ),),
              title: Text('Settings',style: TextStyle(
                color: Color(0xff87879D),
              ),),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              onTap: (){
                Navigator.pushReplacementNamed(context, '/Profial');
              },
              leading: Icon(Icons.account_box_outlined,color: Color(0xff5D5D5D ),),
              title: Text('About',style: TextStyle(
                color: Color(0xff87879D),
              ),),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddProduct(),
                  ),
                );
              },
              leading: Icon(Icons.note_add_outlined,color: Color(0xff5D5D5D ),),
              title: Text('Add Product',style: TextStyle(
                color: Color(0xff87879D),
              ),),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              onTap: ()async{
                await FbAuthController().Singout();
                Navigator.pushReplacementNamed(context,'/SingIN');
              },
              leading: Icon(Icons.logout,color: Color(0xff5D5D5D ),),
              title: Text('Logout',style: TextStyle(
                color: Color(0xff87879D),
              ),),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          View(),
          AddProduct(),

        ],
      ),
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
