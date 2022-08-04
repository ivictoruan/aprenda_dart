import 'package:aprenda_dart/src/shared/constants.dart';
import 'package:flutter/material.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      backgroundColor: Colors.transparent.withOpacity(0.81),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              // BackdropFilter(filter: filter)
              // Image.network(
              //     'https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
              //     // height: 200,
              //     fit: BoxFit.fill,
              //     color: const Color.fromRGBO(255, 255, 255, 0.7),
              //     colorBlendMode: BlendMode.modulate),
              Padding(
                padding: EdgeInsets.only( top: size.height * 0.05),
                child: Image.network(
                  'https://seeklogo.com/images/D/dart-logo-FDA1939EC4-seeklogo.com.png',
                  width: size.width * 0.22,
                ),
              ),
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:18.0),
            child: Text(
                  'Aprenda Dart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
          ),
          SafeArea(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: drawerContent.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {}, // acessar link externo
                child: ListTile(
                  textColor: Colors.white,
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: size.width * 0.04,
                    child: Icon(
                      drawerContent[index]['icon'] as IconData,
                      size: size.width * 0.085,
                      // color: Colors.white,
                    ),
                  ),
                  title: Text(
                    drawerContent[index]['titleContent'] as String,
                    style: TextStyle(
                      fontSize: size.width * 0.048,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.8,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
