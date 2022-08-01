import 'package:aprenda_dart/src/screens/advanced/advanced_page.dart';
import 'package:aprenda_dart/src/screens/basic/basic_page.dart';
import 'package:aprenda_dart/src/screens/home/about/about_widget.dart';
import 'package:aprenda_dart/src/screens/home/drawer/custom_drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    Color appBarColor = Colors.black.withOpacity(0.85);
    TabController controller = TabController(vsync: this, length: 2);
    TextStyle labelTabStyle = const TextStyle(
      fontSize: 14,
      letterSpacing: 0.8,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        // toolbarHeight: 0,
        title: const Text(
          'Aprenda Dart',
          style: TextStyle(fontSize: 18),
        ),
        // centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const AboutWidget()),
          );
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
        bottom: TabBar(
          // indicatorSize: 1
          indicatorWeight: 2,
          isScrollable: false,
          physics: const NeverScrollableScrollPhysics(),
          labelColor: Colors.yellowAccent,
          labelPadding: const EdgeInsets.all(0),
          unselectedLabelColor: Colors.white,
          indicatorColor: Colors.yellowAccent,
          // indicator: const BoxDecoration(
          //   // shape: BoxShape.rectangle,
          //   // backgroundBlendMode: BlendMode,
          //   borderRadius: BorderRadius.all(Radius.zero),
          //   color: Colors.white, //
          //   // color: controller.index == 3 ? Colors.red : Colors.white,
          // ),
          onTap: (controllerIndex) {
            // if (controllerIndex == 0) {
            //   debugPrint(
            //       'mudando cor para cancelamento fechar caixa: $controllerIndex');
            // } else if (controllerIndex == 1) {
            //   debugPrint('mudando cor para vendas: $controllerIndex');
            // }
          },
          splashBorderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          controller: controller,
          tabs: [
            Tab(
              iconMargin: EdgeInsets.zero,
              child: Text(
                'BÁSICO ',
                style: labelTabStyle,
              ),
            ),
            Tab(
              iconMargin: EdgeInsets.zero,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    'AVANÇADO',
                    style: labelTabStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: const CustomDrawerWidget(),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: const <Widget>[
          BasicPage(),
          AdvancedPage(),
        ],
      ),
    );
  }
}
