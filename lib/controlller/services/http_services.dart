import 'package:http/http.dart' as http;

import '../../model/product_model.dart';
class HttpService {
  static Future <List<Products>>fetchProducts()async{
    const  String link="https://fakestoreapi.com/products";
    var response=await http.get(Uri.parse(link));
    if(response.statusCode==200){
      var data= response.body;
      return productsFromJson(data);
    }else{
      throw Exception();
    }
  }
}