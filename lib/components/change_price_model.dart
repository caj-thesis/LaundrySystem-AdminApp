import '/flutter_flow/flutter_flow_util.dart';
import 'change_price_widget.dart' show ChangePriceWidget;
import 'package:flutter/material.dart';

class ChangePriceModel extends FlutterFlowModel<ChangePriceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for clothesField widget.
  FocusNode? clothesFieldFocusNode;
  TextEditingController? clothesFieldTextController;
  String? Function(BuildContext, String?)? clothesFieldTextControllerValidator;
  // State field(s) for bedSheetsField widget.
  FocusNode? bedSheetsFieldFocusNode;
  TextEditingController? bedSheetsFieldTextController;
  String? Function(BuildContext, String?)?
      bedSheetsFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    clothesFieldFocusNode?.dispose();
    clothesFieldTextController?.dispose();

    bedSheetsFieldFocusNode?.dispose();
    bedSheetsFieldTextController?.dispose();
  }
}
