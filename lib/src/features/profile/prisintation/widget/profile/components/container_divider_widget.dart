import 'package:flutter/material.dart';

class ContainerDividerWidget extends StatelessWidget {
  const ContainerDividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: double.infinity,
      color: Colors.black.withOpacity(0.65),
    );
  }
}
