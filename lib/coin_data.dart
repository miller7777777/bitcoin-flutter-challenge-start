import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

// const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const coinAPIURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker/BTCUSD';
const apiKey = 'YzhjZGQ2M2M1ZWI5NGNkY2FiMTg0ZmNmZmM1MDkxZmI';

class CoinData {
  CoinData();

  Future getCoinData() async {
    http.Response response =
        await http.get(coinAPIURL, headers: {'x-ba-key': '$apiKey'});

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
