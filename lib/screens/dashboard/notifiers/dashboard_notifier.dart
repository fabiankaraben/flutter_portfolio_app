import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blue_trade_app/data/models/project.dart';
import 'package:blue_trade_app/data/providers/project_stream_provider.dart';
import 'package:blue_trade_app/screens/dashboard/states/dashboard_state.dart';
// import 'package:chat_count/chat/model/chat_model.dart';
// import 'package:chat_count/chat/service/chat_service.dart';
// import 'package:chat_count/chat/chat_message/state/chat_message_state.dart';

///
final dashboardNotifierProvider =
    StateNotifierProvider.autoDispose<DashboardNotifier, DashboardState>(
  (ref) {
    final notifier = DashboardNotifier(
      // chatService: ref.watch(chatServiceProvider),
      ref: ref,
    );
    // notifier._init();
    return notifier;
  },
);

///
class DashboardNotifier extends StateNotifier<DashboardState> {
  ///
  DashboardNotifier({
    // required this.chatService,
    required this.ref,
  }) : super(const DashboardState.init());

  ///
  final Ref ref;
  // final ChatService chatService;

  // Future<void> _init() async {
  //   state = const DashboardState.loading();
  //   final messages = await chatService.getChatModels();
  //   state = DashboardState.data(messages: messages);
  // }

  ///
  Stream<List<Project>> projectStream() {
    return ref.watch(projectStreamProvider.stream);
  }
}
