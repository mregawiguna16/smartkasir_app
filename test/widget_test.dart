import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:smartkasir_app/main.dart';

void main() {
  testWidgets('SmartKasir App smoke test', (WidgetTester tester) async {
    // Membangun aplikasi dengan root SmartKasirApp
    await tester.pumpWidget(const SmartKasirApp());

    // Memastikan aplikasi berjalan dan menampilkan judul atau elemen awal dengan benar
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}