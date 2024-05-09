import '/flutter_flow/flutter_flow_util.dart';
import 'organism_details2_widget.dart' show OrganismDetails2Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class OrganismDetails2Model extends FlutterFlowModel<OrganismDetails2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableExpandableController.dispose();
  }
}
