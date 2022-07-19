import 'package:fl_chart/fl_chart.dart';

import '../model/expence_income_model.dart';
import '../model/percentage.dart';
import '../widgets/visa_card/visa_card.dart';

final List monthList = [
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December"
];

final percentageList = [
  const Percentage(categories: "Restaurants", percent: 49, price: 1352),
  const Percentage(categories: "Taxi", percent: 25, price: 452),
  const Percentage(categories: "Media", percent: 18, price: 214),
  const Percentage(categories: "Fast food", percent: 8, price: 14),
];

final spots = [
  [
    const FlSpot(0, 4),
    const FlSpot(1, 6),
    const FlSpot(2, 8),
    const FlSpot(3, 6.2),
    const FlSpot(4, 6),
    const FlSpot(5, 8),
    const FlSpot(6, 9),
    const FlSpot(7, 7),
    const FlSpot(8, 6),
    const FlSpot(9, 7.8),
    const FlSpot(10, 8),
  ],
  [
    const FlSpot(0, 2),
    const FlSpot(1, 4),
    const FlSpot(2, 5),
    const FlSpot(3, 8.2),
    const FlSpot(4, 6),
    const FlSpot(5, 4),
    const FlSpot(6, 9),
    const FlSpot(7, 2),
    const FlSpot(8, 5),
    const FlSpot(9, 7.8),
    const FlSpot(10, 8),
  ],
  [
    const FlSpot(0, 9),
    const FlSpot(1, 3),
    const FlSpot(2, 5),
    const FlSpot(3, 6.2),
    const FlSpot(4, 8),
    const FlSpot(5, 4),
    const FlSpot(6, 1),
    const FlSpot(7, 7),
    const FlSpot(8, 6),
    const FlSpot(9, 7.8),
    const FlSpot(10, 8),
  ],
  [
    const FlSpot(0, 1),
    const FlSpot(1, 6),
    const FlSpot(2, 4),
    const FlSpot(3, 5.2),
    const FlSpot(4, 6),
    const FlSpot(5, 3),
    const FlSpot(6, 7),
    const FlSpot(7, 9),
    const FlSpot(8, 6),
    const FlSpot(9, 6.8),
    const FlSpot(10, 4),
  ],
  [
    const FlSpot(0, 6),
    const FlSpot(1, 3),
    const FlSpot(2, 4),
    const FlSpot(3, 6.2),
    const FlSpot(4, 4),
    const FlSpot(5, 5),
    const FlSpot(6, 7),
    const FlSpot(7, 1),
    const FlSpot(8, 5),
    const FlSpot(9, 6.8),
    const FlSpot(10, 4),
  ],
  [
    const FlSpot(0, 3),
    const FlSpot(1, 8),
    const FlSpot(2, 5),
    const FlSpot(3, 7.2),
    const FlSpot(4, 3),
    const FlSpot(5, 5),
    const FlSpot(6, 7),
    const FlSpot(7, 1),
    const FlSpot(8, 4),
    const FlSpot(9, 6.8),
    const FlSpot(10, 7),
  ],
  [
    const FlSpot(0, 5),
    const FlSpot(1, 8),
    const FlSpot(2, 3),
    const FlSpot(3, 1.2),
    const FlSpot(4, 4),
    const FlSpot(5, 5),
    const FlSpot(6, 8),
    const FlSpot(7, 4),
    const FlSpot(8, 6),
    const FlSpot(9, 2.8),
    const FlSpot(10, 5),
  ],
  [
    const FlSpot(0, 4),
    const FlSpot(1, 1),
    const FlSpot(2, 3),
    const FlSpot(3, 6.2),
    const FlSpot(4, 5),
    const FlSpot(5, 8),
    const FlSpot(6, 7),
    const FlSpot(7, 3),
    const FlSpot(8, 4),
    const FlSpot(9, 7.8),
    const FlSpot(10, 7),
  ]
];

final List<ExpenseIncomeModel> expenseIncomes = [
  ExpenseIncomeModel(expense: '2000.00', income: '3400.00'),
  ExpenseIncomeModel(expense: '2100.00', income: '2800.00'),
  ExpenseIncomeModel(expense: '2800.00', income: '6700.00'),
  ExpenseIncomeModel(expense: '1600.00', income: '1400.00'),
  ExpenseIncomeModel(expense: '3200.00', income: '2200.00'),
  ExpenseIncomeModel(expense: '1500.00', income: '5100.00'),
  ExpenseIncomeModel(expense: '2700.00', income: '2200.00'),
  ExpenseIncomeModel(expense: '5100.00', income: '4000.00'),
  ExpenseIncomeModel(expense: '1300.00', income: '6200.00'),
  ExpenseIncomeModel(expense: '4300.00', income: '3300.00'),
  ExpenseIncomeModel(expense: '5100.00', income: '1500.00'),
  ExpenseIncomeModel(expense: '4300.00', income: '8900.00'),
];

final cards = [
  const VisaCardDesign(
    quarterTurns: 0,
    width: 300,
  ),
  const VisaCardDesign(
    quarterTurns: 0,
    width: 300,
  ),
];
