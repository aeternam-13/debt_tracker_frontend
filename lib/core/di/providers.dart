import 'package:debttracker/core/domain/services/api_service.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiServiceProvider = Provider<APIService>((ref) {
  return APIService();
});
