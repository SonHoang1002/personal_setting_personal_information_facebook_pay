import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateBaseScaffold extends StatelessWidget {
  final Widget titleWidget;
  final Widget body;
  final Widget suffixAppBarIcon;

  const CreateBaseScaffold(
      {super.key,
      required this.titleWidget,
      required this.body,
      required this.suffixAppBarIcon});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          // automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //
              titleWidget,
              suffixAppBarIcon
            ],
          )),
      body: body,
    );
  }
}
