import '/flutter_flow/flutter_flow_util.dart';
import 'test_d_widget.dart' show TestDWidget;
import 'package:flutter/material.dart';

class TestDModel extends FlutterFlowModel<TestDWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
