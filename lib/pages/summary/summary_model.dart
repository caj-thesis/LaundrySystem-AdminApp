import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'summary_widget.dart' show SummaryWidget;
import 'package:flutter/material.dart';

class SummaryModel extends FlutterFlowModel<SummaryWidget> {
  ///  Local state fields for this page.

  DateTime? startDate;

  String filterType = 'Day';

  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<TransactionsRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
