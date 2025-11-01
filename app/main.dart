import 'package:flutter/material.dart';

void main() {
  runApp(const AliPsxScanner());
}

class AliPsxScanner extends StatelessWidget {
  const AliPsxScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ali PSX Scanner',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> stocks = [
    {'symbol': 'OGDC', 'price': 94.3, 'signal': 'BUY', 'tp': 99.0, 'sl': 91.5},
    {'symbol': 'HBL', 'price': 131.2, 'signal': 'SELL', 'tp': 125.0, 'sl': 134.5},
    {'symbol': 'LUCK', 'price': 460.5, 'signal': 'BUY', 'tp': 478.0, 'sl': 449.0},
    {'symbol': 'PSO', 'price': 157.8, 'signal': 'BUY', 'tp': 165.0, 'sl': 153.5},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ali PSX Scanner 📈')),
      body: ListView.builder(
        itemCount: stocks.length,
        itemBuilder: (context, index) {
          final stock = stocks[index];
          return Card(
            margin: const EdgeInsets.all(10),
            color: stock['signal'] == 'BUY' ? Colors.green[800] : Colors.red[800],
            child: ListTile(
              title: Text('${stock['symbol']} — ${stock['signal']}'),
              subtitle: Text(
                  'Price: ${stock['price']}  |  TP: ${stock['tp']}  |  SL: ${stock['sl']}'),
            ),
          );
        },
      ),
    );
  }
}
