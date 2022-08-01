import 'package:aprenda_dart/src/shared/constants.dart';
import 'package:flutter/material.dart';

class AdvancedPage extends StatelessWidget {
  const AdvancedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) => InkWell(
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.network(
                advancedContent[index]['icon']!,
              ),
            ),
            title: Text(advancedContent[index]['titleContent']!),
          ),
        ),
      ),
      itemCount: advancedContent.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 0,
      ),
    );
  }
}
