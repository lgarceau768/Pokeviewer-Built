import 'package:flutter/material.dart';
import 'package:website/components/Heading.dart';

class BModal extends StatelessWidget {
  final Widget content;
  final String title;
  final List<Widget> actions;
  const BModal({Key key, this.content, this.title, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Heading(text: title),
      actions: actions,
      content: content,
    );
  }
}