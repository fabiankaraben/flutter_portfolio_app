import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blue_trade_app/data/models/project.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.init() = DashboardStateInit;
  const factory DashboardState.loading() = DashboardStateLoading;
  const factory DashboardState.data({required List<Project> projects}) =
      DashboardStateData;
  const factory DashboardState.error({required String msg}) =
      DashboardStateError;
}
