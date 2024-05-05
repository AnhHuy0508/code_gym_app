import 'package:flutter/material.dart';

class WeightWidget extends StatelessWidget {
  final double currentWeight;
  final double goalWeight;

  WeightWidget({required this.currentWeight, required this.goalWeight});

  @override
  Widget build(BuildContext context) {
    // Tính toán phần trăm tiến trình
    double progress = currentWeight / goalWeight;
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Weight',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Current: ${currentWeight.toStringAsFixed(1)} kg',
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                'Goal: ${goalWeight.toStringAsFixed(1)} kg',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
