import 'package:http/http.dart' as http;
import '../model/mercado.dart';

class MercadoService {
  Future<List<Mercado>?> getMercados() async{
    var client = http.Client();

    var uri = Uri.parse('https://6394894586829c49e81fafc4.mockapi.io/supermercado');
    var response= await client.get(uri);

    if(response.statusCode == 200){
      var json = response.body;
      return mercadoFromJson(json);
    }

  }
}
