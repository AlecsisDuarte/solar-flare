import 'package:flutter/material.dart';
import 'package:solar_flare/src/models/stocks.dart';

class StocksView extends StatelessWidget {
  final TextStyle titleTextStyle =
      TextStyle(color: Colors.black87, fontSize: 18);
  final TextStyle goodGrowth = TextStyle(color: Colors.blue, fontSize: 18);
  final TextStyle badGrowth = TextStyle(color: Colors.red, fontSize: 18);

  final List<Stocks> stocks = [
    Stocks(
        name: "Bitcoin",
        graph: 'assets/graphs/bitcoin_price_graph.png',
        growth: -5.2),
    Stocks(
        name: "Libra",
        graph: 'assets/graphs/libra_price_graph.png',
        growth: -2.4),
    Stocks(
        name: "Ethereum",
        graph: 'assets/graphs/ethereum_price_graph.png',
        growth: 8.4),
        Stocks(
        name: "test",
        graph: 'assets/graphs/ethereum_price_graph.png',
        growth: 8.4),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
            children: stocks
                .map((s) => Card(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              s.name,
                              style: titleTextStyle,
                            ),
                            Image.asset(s.graph, height: 30),
                            Text(
                              "${s.growth > 0 ? "+" : ""}${s.growth}%",
                              style: s.growth > 0 ? goodGrowth : badGrowth,
                            )
                          ],
                        ),
                      ),
                    ))
                .toList())
        // Card(
        //   child: Container(
        //     padding: EdgeInsets.all(16),
        //     child: Row(
        //       children: <Widget>[
        //         Text("Bitcoin",
        //             style: TextStyle(color: Colors.black87, fontSize: 18)),
        //         Image.asset(
        //           'assets/graphs/bitcoin_price_graph.png',
        //           height: 20,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // Card(
        //   child: Container(
        //     padding: EdgeInsets.all(16),
        //     child: Row(
        //       children: <Widget>[
        //         Text("Libra",
        //             style: TextStyle(color: Colors.black87, fontSize: 18)),
        //         Image.asset(
        //           'assets/graphs/libra_price_graph.png',
        //           height: 20,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // Card(
        //   child: Container(
        //     padding: EdgeInsets.all(16),
        //     child: Row(
        //       children: <Widget>[
        //         Text("Ethereum",
        //             style: TextStyle(color: Colors.black87, fontSize: 18)),
        //         Image.asset(
        //           'assets/graphs/ethereum_price_graph.png',
        //           height: 20,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
