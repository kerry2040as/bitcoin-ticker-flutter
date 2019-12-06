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
  'ZAR',
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];
const URL = 'https://apiv2.bitcoinaverage.com/indices/global/ticker/';

class CoinData {
  Future getCoinPrice(String coinType, String currency) async {
    final priceData = await http.get('$URL$coinType$currency');
    return jsonDecode(priceData.body)['last'];
  }
}
