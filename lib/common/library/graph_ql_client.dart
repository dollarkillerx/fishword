import '../../../models/g_response.dart';

abstract class IGraphQLClient {
  Future<GResponse?> gQuery({
    required String graphSQL,
    Map<String, dynamic>? variables,
  });

  Future<GResponse?> gMutate({
    required String graphSQL,
    Map<String, dynamic>? variables,
  });
}