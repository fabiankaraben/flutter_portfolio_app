import 'package:beamer/beamer.dart';
import 'package:blue_trade_app/app/providers/app_provider.dart';
import 'package:blue_trade_app/data/models/project.dart';
import 'package:blue_trade_app/screens/dashboard/notifiers/dashboard_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutterfire_ui/auth.dart';

/// Dashboard Screen
class DashboardScreen extends ConsumerWidget {
  /// Dashboard Screen
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final projectsStream = ref.watch(projectStreamProvider.stream);
    final dashNotifier = ref.watch(dashboardNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        // Consumer is a widget that allows you reading providers.
        child: Column(
          children: [
            const SizedBox(height: 80),
            Consumer(
              builder: (context, ref, _) {
                final count = ref.watch(counterProvider.state).state;
                return Text('$count');
              },
            ),
            const SizedBox(height: 80),
            const SizedBox(height: 80),
            ElevatedButton(
              onPressed: () {
                context.beamToNamed('/settings');
              },
              child: const Text('To Settings'),
            ),
            const SizedBox(height: 80),
            StreamBuilder<List<Project>>(
              stream: dashNotifier.projectStream(),
              builder: (_, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.first.name);
                } else {
                  return const Text('Nada');
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // The read method is a utility to read a provider
        // without listening to it
        onPressed: () => ref.read(counterProvider.state).state++,
        child: const Icon(Icons.add),
      ),
    );
    // return FutureBuilder<bool>(
    //   initialData: false,
    //   future: Future.delayed(const Duration(seconds: 1), () => true),
    //   builder: (context, snapshot) {
    //     if (snapshot.data!) {
    //       return const ProfileScreen(
    //         avatarSize: 24,
    //       );
    //     } else {
    //       return Container();
    //     }
    //   },
    // );
  }
}
