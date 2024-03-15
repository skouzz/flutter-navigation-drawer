import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Drawer(
        child:ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.black12,
                          Colors.blueAccent,
                        ]
                    )

                ),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Oussama.png"),
                    radius: 100,
                  ),
                )
            ),
            Divider(height: 5, color: Colors.grey,),
            ListTile(
              title: Text("Home", style: TextStyle(fontSize: 26),),
              leading: Icon(Icons.home,color: Colors.blueAccent),
              trailing: Icon(Icons.arrow_right,color: Colors.grey,),
              onTap: (){

              },
            ),
            Divider(height: 5, color: Colors.grey,),
            ListTile(
              title: Text("Profile", style: TextStyle(fontSize: 26),),
              leading: Icon(Icons.person,color: Colors.blueAccent),
              trailing: Icon(Icons.arrow_right,color: Colors.grey,),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.pushNamed(context,"/profile");
              },
            ),
            Divider(height: 5, color: Colors.grey,),
            ListTile(
              title: Text("Settings", style: TextStyle(fontSize: 26),),
              leading: Icon(Icons.settings,color: Colors.blueAccent),
              trailing: Icon(Icons.arrow_right,color: Colors.grey,),
              onTap: (){

              },
            ),
            Divider(height: 5, color: Colors.grey,),
            ListTile(
              title: Text("Logout", style: TextStyle(fontSize: 26),),
              leading: Icon(Icons.logout,color: Colors.blueAccent),
              onTap: (){

              },
            ),
            Divider(height: 5, color: Colors.grey,),
          ],
        )
    );
  }
}
