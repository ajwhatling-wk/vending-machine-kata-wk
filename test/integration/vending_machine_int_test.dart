@TestOn('browser')
library vending_machine_int_test;

import 'dart:async';
import 'dart:html';
import 'package:over_react/over_react.dart';
import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import 'package:vending_machine_kata/src/vending_machine/vending_machine.dart';

main() {
  group('Vending Machine Integration Tests', () {
    HtmlElement root;

    VendingMachineActions actions;;
    VendingMachineStore store;

    setUp(() {
      actions = new VendingMachineActions();
      store = new VendingMachineStore(actions);
      store.beginListening();

      VendingMachineViewProps vendingMachineBuilder = VendingMachineView()
        ..actions = actions
        ..store = store;
      ReactElement vendingMachineComponent = vendingMachineBuilder();

      store.setUpProducts(['pepsi']);

      render(vendingMachineComponent, container: document.body);

      root = document.querySelector('.vending-machine-view');
    });

    test(
        'root element should exist and have a css class of "vending-machine-chrome"',
        () {
      expect(root, isNotNull);
    });

    test('when I click a product, it dispenses it in the dispense slot', () async {
      Element productButton = document.querySelector('.product-selector');

      click(productButton);
      await new Future.delayed(new Duration(seconds: 0));

      Element dispenser = document.querySelector('.product-dispenser');

      expect(dispenser.text, contains('pepsi'));
    });
  });
}
