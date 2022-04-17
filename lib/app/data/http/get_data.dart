import 'dart:convert';
import 'package:http/http.dart';

import '../model/product_model.dart';

class GetData {
  static const String _url =
      'https://mocki.io/v1/02e91d9f-4d8c-4eb4-a4f9-bb4a60ffdaf9';

  static Future<Product> getProduct(Client _client) async {
    Uri _uri = Uri.parse(_url);
    var _response = await _client.get(_uri);

    if (_response.statusCode == 200) {
      var _json = _response.body;
      Product _product = Product.fromJson(jsonDecode(_json));
      return _product;
    } else {
      throw Exception('Failed to load post');
    }
  }
}
