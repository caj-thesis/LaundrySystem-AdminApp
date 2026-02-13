import '/components/change_price_widget.dart';
import '/components/general_setting_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'change_price_page_widget.dart' show ChangePricePageWidget;
import 'package:flutter/material.dart';

class ChangePricePageModel extends FlutterFlowModel<ChangePricePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for GeneralSetting component.
  late GeneralSettingModel generalSettingModel;
  // Model for ChangePrice component.
  late ChangePriceModel changePriceModel;

  @override
  void initState(BuildContext context) {
    generalSettingModel = createModel(context, () => GeneralSettingModel());
    changePriceModel = createModel(context, () => ChangePriceModel());
  }

  @override
  void dispose() {
    generalSettingModel.dispose();
    changePriceModel.dispose();
  }
}
