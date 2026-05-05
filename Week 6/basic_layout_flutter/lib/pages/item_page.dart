import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item; // Terima data lewat constructor

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Column(
        children: [
          Hero(
            tag: item.name,
            child: Image.network(item.imageUrl, width: double.infinity, height: 300, fit: BoxFit.cover),
          ),
          const SizedBox(height: 20),
          Text(item.name, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          Text('Harga: Rp ${item.price}', style: const TextStyle(fontSize: 22, color: Colors.green)),
          const Divider(),
          Text('Stok: ${item.stock} | Rating: ⭐ ${item.rating}'),
        ],
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Dina Mei Lestari | 244107060105', 
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}