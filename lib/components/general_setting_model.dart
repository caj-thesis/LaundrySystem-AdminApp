import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'general_setting_widget.dart' show GeneralSettingWidget;
import 'package:flutter/material.dart';

class GeneralSettingModel extends FlutterFlowModel<GeneralSettingWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for laundryShopNameField widget.
  FocusNode? laundryShopNameFieldFocusNode;
  TextEditingController? laundryShopNameFieldTextController;
  String? Function(BuildContext, String?)?
      laundryShopNameFieldTextControllerValidator;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    laundryShopNameFieldFocusNode?.dispose();
    laundryShopNameFieldTextController?.dispose();
  }
}
