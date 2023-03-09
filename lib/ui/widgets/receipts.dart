import 'package:ceresmobile/ui/receipts/cash.dart';
import 'package:ceresmobile/ui/receipts/general.dart';
import 'package:ceresmobile/ui/receipts/invoice.dart';
import 'package:ceresmobile/ui/receipts/proforma.dart';
import 'package:flutter/material.dart';

class Receipt extends StatelessWidget {
  String text;
  IconData icon;
  Receipt({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: const Color.fromARGB(255, 0, 103, 134),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReceiptMenu extends StatefulWidget {
  const ReceiptMenu({super.key});

  @override
  State<ReceiptMenu> createState() => _ReceiptMenuState();
}

class _ReceiptMenuState extends State<ReceiptMenu>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receipts'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Cash Receipt'),
            Tab(text: 'Invoice'),
            Tab(text: 'Proforma'),
            Tab(text: 'General Receipt'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          CashList(),
          Invoice(),
          Proforma(),
          General(),
        ],
      ),
    );
  }
}
