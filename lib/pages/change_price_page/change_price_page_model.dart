import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'change_price_page_widget.dart' show ChangePricePageWidget;
import 'package:flutter/material.dart';

class ChangePricePageModel extends FlutterFlowModel<ChangePricePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for laundryShopNameField widget.
  FocusNode? laundryShopNameFieldFocusNode;
  TextEditingController? laundryShopNameFieldTextController;
  String? Function(BuildContext, String?)?
      laundryShopNameFieldTextControllerValidator;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
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
    laundryShopNameFieldFocusNode?.dispose();
    laundryShopNameFieldTextController?.dispose();

    clothesFieldFocusNode?.dispose();
    clothesFieldTextController?.dispose();

    bedSheetsFieldFocusNode?.dispose();
    bedSheetsFieldTextController?.dispose();
  }
}
