import 'package:supabase_flutter/supabase_flutter.dart';

class BaseApiService {
  final SupabaseClient client = Supabase.instance.client;
}