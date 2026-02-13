import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'record_dashboard_widget.dart' show RecordDashboardWidget;
import 'package:flutter/material.dart';

class RecordDashboardModel extends FlutterFlowModel<RecordDashboardWidget> {
  ///  Local state fields for this page.

  List<TransactionsRecord> transactionLists = [];
  void addToTransactionLists(TransactionsRecord item) =>
      transactionLists.add(item);
  void removeFromTransactionLists(TransactionsRecord item) =>
      transactionLists.remove(item);
  void removeAtIndexFromTransactionLists(int index) =>
      transactionLists.removeAt(index);
  void insertAtIndexInTransactionLists(int index, TransactionsRecord item) =>
      transactionLists.insert(index, item);
  void updateTransactionListsAtIndex(
          int index, Function(TransactionsRecord) updateFn) =>
      transactionLists[index] = updateFn(transactionLists[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in RecordDashboard widget.
  List<TransactionsRecord>? transactionList;
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
