import 'package:flutter_portfolio_app/data/services/project_service_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Providers are declared globally and specify how to create a state
final projectStreamProvider = StreamProvider(
  (ref) {
    final projectService = ProjectServiceFirestore();
    return projectService.watchAll();
  },
);
