import 'package:grocery_ui/data/datasources/remote_data_source.dart';
import 'package:grocery_ui/domain/repositories/product_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([
  RemoteDataSource,
  ProductRepository,
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
