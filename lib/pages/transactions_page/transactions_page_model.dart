import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'transactions_page_widget.dart' show TransactionsPageWidget;
import 'package:flutter/material.dart';

class TransactionsPageModel extends FlutterFlowModel<TransactionsPageWidget> {
  ///  Local state fields for this page.

  String? laundryTypeFilter;

  String? laundryStatusFilter;

  String? paymentStatusFilter;

  bool isFilterCardVisible = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<TransactionsRecord> simpleSearchResults = [];
  // State field(s) for LaundryTypeChips widget.
  FormFieldController<List<String>>? laundryTypeChipsValueController;
  String? get laundryTypeChipsValue =>
      laundryTypeChipsValueController?.value?.firstOrNull;
  set laundryTypeChipsValue(String? val) =>
      laundryTypeChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for LaundryStatusChips widget.
  FormFieldController<List<String>>? laundryStatusChipsValueController;
  String? get laundryStatusChipsValue =>
      laundryStatusChipsValueController?.value?.firstOrNull;
  set laundryStatusChipsValue(String? val) =>
      laundryStatusChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for PaymentStatusChips widget.
  FormFieldController<List<String>>? paymentStatusChipsValueController;
  String? get paymentStatusChipsValue =>
      paymentStatusChipsValueController?.value?.firstOrNull;
  set paymentStatusChipsValue(String? val) =>
      paymentStatusChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<TransactionsRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
  }
}
