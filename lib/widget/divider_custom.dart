import 'package:flutter/material.dart';

class DividerCustom extends StatelessWidget {
  final bool short;
  const DividerCustom({Key? key, this.short = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double indent = 0;

    if(short) {
      indent = 100.0;
    }

    return Divider(
      indent: indent,
      endIndent: indent,
      thickness: 1,
      color: Theme.of(context).primaryColor,
    );
  }
}
