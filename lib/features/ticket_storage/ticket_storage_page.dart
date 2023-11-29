import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Хранение билетов'),
      ),
      body: SlidingUpPanel(
        panel: Center(
          child: Text(
            'Здесь пока ничего нет',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        collapsed: const Center(
          child: Text(
            'Панель скрыта',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        minHeight: 100,
        maxHeight: 500,
        body: Column(
          children: [
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Введите url',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Добавить'),
            )
          ],
        ),
      ),
    );
  }
}
