import 'package:aprenda_dart/src/shared/constants.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    basicContent[index]['contentWidget'] as Widget),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.transparent,
              child: Image.network(
                basicContent[index]['icon'] as String,
              ),
            ),
            title: Text(basicContent[index]['titleContent'] as String),
          ),
        ),
      ),
      itemCount: basicContent.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 0,
      ),
    );
  }
}
