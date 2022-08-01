import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatefulWidget {
  final String titleAppBar;
  final String contentRightBottom;
  final String contentLeftBottom;
  const CustomAppBarWidget(
      {Key? key,
      required this.titleAppBar,
      required this.contentRightBottom,
      required this.contentLeftBottom})
      : super(key: key);

  @override
  State<CustomAppBarWidget> createState() => _CustomAppBarWidgetState();
}

class _CustomAppBarWidgetState extends State<CustomAppBarWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Color appBarColor = Colors.black.withOpacity(0.85);
    TabController controller = TabController(vsync: this, length: 2);
    TextStyle labelTabStyle = const TextStyle(
      fontSize: 14,
      letterSpacing: 0.8,
    );
    return AppBar(
      elevation: 0,
      backgroundColor: appBarColor,
      // toolbarHeight: 0,
      title: Text(
        widget.titleAppBar,
        style: const TextStyle(fontSize: 18),
      ),
      actions: [
        IconButton(
          onPressed: () {},
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
              widget.contentLeftBottom,
              style: labelTabStyle,
            ),
          ),
          Tab(
            iconMargin: EdgeInsets.zero,
            child: Text(
              widget.contentRightBottom,
              style: labelTabStyle,
            ),
          ),
        ],
      ),
    );
  }
}
