import 'package:flutter/material.dart';

class ContentWidget extends StatefulWidget {
  final String titleAppBar;
  // final String contentLeftBottom;
  // final String contentRightBottom;
  final Widget theoryWidget;
  final Widget exercisesWidget;
  
  const ContentWidget({Key? key, required this.titleAppBar, required this.theoryWidget, required this.exercisesWidget,}) : super(key: key);

  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget>  with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    //  Color appBarColor = Colors.black.withOpacity(0.85);
    TabController controller = TabController(vsync: this, length: 2);
    TextStyle labelTabStyle = const TextStyle(
      fontSize: 14,
      letterSpacing: 0.8,
    );
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.black.withOpacity(0.85),
      // toolbarHeight: 0,
      title: Text(
        widget.titleAppBar,
        style: const TextStyle(fontSize: 18),
      ),
      actions: [
        IconButton(
          onPressed: () {}, // colocar aqui outras referencias
          icon: const Icon(Icons.info_outline),
        ),
      ],
      bottom: TabBar(
        indicatorWeight: 2,
        isScrollable: false,
        physics: const NeverScrollableScrollPhysics(),
        labelColor: Colors.yellowAccent,
        labelPadding: const EdgeInsets.all(0),
        unselectedLabelColor: Colors.white,
        indicatorColor: Colors.yellowAccent,
        controller: controller,
        tabs: [
          Tab(
            iconMargin: EdgeInsets.zero,
            child: Text(
              'TEORIA',
              style: labelTabStyle,
            ),
          ),
          Tab(
            iconMargin: EdgeInsets.zero,
            child: Text(
              'EXERCÍCIOS',
              style: labelTabStyle,
            ),
          ),
        ],
      ),
    ),
     body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: <Widget>[
          widget.theoryWidget,
          widget.exercisesWidget,
        ],
      ),
    );
  }
}