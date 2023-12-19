import 'package:flutter/material.dart';
import 'package:your_app_name/api.dart';
import 'package:your_app_name/coin_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<CoinItem> coinItems;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    // Make API call here and populate coinItems
    // Example API call using http package
    // final response = await http.get('API URL', headers: {'X-CMC_PRO_API_KEY': '27ab17d1-215f-49e5-9ca4-afd48810c149'});
    // Parse the response and update coinItems
    // setState(() {
    //   coinItems = parsedData;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CoinRich'),
      ),
      body: coinItems != null
          ? ListView.builder(
              itemCount: coinItems.length,
              itemBuilder: (context, index) {
                return CoinItemWidget(coinItems[index]);
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
