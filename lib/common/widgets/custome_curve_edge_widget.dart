import 'package:flutter/material.dart';

import 'custome_curved_edge.dart';

class CurvedEdgeWidegt extends StatelessWidget {
  const CurvedEdgeWidegt({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurveEdge(),
      child:child ,
    );
  }
}
