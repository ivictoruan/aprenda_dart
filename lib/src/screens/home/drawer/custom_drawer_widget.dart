

import 'package:aprenda_dart/src/shared/constants.dart';
import 'package:flutter/material.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
        backgroundColor: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
                  // height: 200,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 60),
                  child: Image.network(
                    'https://seeklogo.com/images/D/dart-logo-FDA1939EC4-seeklogo.com.png',
                    width: size.width * 0.22,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18, top: 140),
                  child: Text(
                    'Aprenda Dart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SafeArea(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: drawerContent.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: ListTile(
                      // tileColor: Colors.
                      textColor: Colors.white,
                      
                      leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        // foregroundColor: Colors.white,
                        child: Icon(Icons.eco_rounded),
                      ),
                      title:  Text('Conteúdos sobre Dart'),
                    ),
                  ),
                ),
              ),
            ),
            // ListView(),
          ],
        ),
      );
  }
}