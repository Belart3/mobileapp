import 'package:flutter/material.dart';

class RecentTransactions extends StatelessWidget {
  RecentTransactions({super.key});

  final transactions = [
    {
      'type': 'in',
      'accountName': 'Belawu Enoch',
      'amount': '4,500.00',
      'time': '06 Mar, 2026 11:39pm'
    },
    {
      'type': 'out',
      'accountName': 'Belawu Praise',
      'amount': '45,500.00',
      'time': '07 Mar, 2026 11:39pm'
    },
    {
      'type': 'in',
      'accountName': 'Belawu Enoch',
      'amount': '4,500.00',
      'time': '06 Mar, 2026 11:39pm'
    },
    {
      'type': 'out',
      'accountName': 'Belawu Praise',
      'amount': '4,500.00',
      'time': '06 Mar, 2026 11:39pm'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Transactions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight(600),
                ),
              ),
              TextButton(
                onPressed: () {}, 
                child: Text(
                  'View All',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight(700),
                    color: Color(0xFF6366F1),
                    letterSpacing: -0.32,
                  ),
                )
              ),
            ],
          ),
          // List of transaction cards
          Row(
            children: [
              Expanded(
                child: Column(
                  spacing: 8,
                  children: transactions.map((transaction) {
                    final transferIn = transaction['type'] == 'in';
                    return Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 1,
                          color: Color(0xFFE6E6E6),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFF4F4F4),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    transferIn
                                        ? 'assets/icons/arrow-down-right.png'
                                        : 'assets/icons/arrow-up-right.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              SizedBox(
                                width: 160,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Transfer ${transferIn ? 'from' : 'to'} ${transaction['accountName']}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      transaction['time'] ?? '',
                                      style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '${transferIn ? '+' : '-'}₦${transaction['amount']}',
                            style: TextStyle(
                              color: transferIn ? Color(0xFF00C976) : Color(0xFFEB1919),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}