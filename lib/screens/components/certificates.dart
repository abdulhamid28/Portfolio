import 'package:flutter/material.dart';
import '../../functions/certificate_container.dart';

class Certificates extends StatelessWidget {
  const Certificates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: funct(),
      ),
    );
  }
}
