import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'components/side_panel.dart';
import 'package:portfolio/responsive/responsive.dart';

class MainScreen extends StatelessWidget {
  static const String id = 'main_screen';
  MainScreen({required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              elevation: 0,
              leading: Builder(builder: (context1) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context1).openDrawer();
                  },
                  icon: Icon(Icons.format_list_bulleted),
                );
              }),
            ),
      drawer: SidePanel(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              if (Responsive.isDesktop(context))
                Expanded(flex: 2, child: SidePanel()),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: children,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
