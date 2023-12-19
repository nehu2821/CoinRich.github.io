import 'package:flutter/material.dart';

class CoinItem {
  // Define properties based on API response
}

class CoinItemWidget extends StatelessWidget {
  final CoinItem coinItem;

  CoinItemWidget(this.coinItem);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // Customize the UI as per your design
      title: Text(coinItem.name),
      subtitle: Text('Price: \$${coinItem.price}'),
      leading: CircleAvatar(
        // Add icon or image here
      ),
      // Add more details as needed
    );
  }
}
