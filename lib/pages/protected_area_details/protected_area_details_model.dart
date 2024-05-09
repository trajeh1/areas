import '/flutter_flow/flutter_flow_util.dart';
import 'protected_area_details_widget.dart' show ProtectedAreaDetailsWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ProtectedAreaDetailsModel
    extends FlutterFlowModel<ProtectedAreaDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
