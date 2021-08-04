import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Tarjetas"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [_cardTipo1()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Image.asset('assets/images/user.png'),
            ),
            title: Text('Titulo de Tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('OK'))
            ],
          )
        ],
      ),
    );
  }
}
