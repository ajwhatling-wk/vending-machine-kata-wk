library vending_machine_store_test;

import '../../../tools/rand.dart';
import 'package:test/test.dart';
import 'package:vending_machine_kata/src/vending_machine/vending_machine.dart';

main() {
  group('Vending Machine Store and Actions', () {
    VendingMachineActions actions;
    VendingMachineStore store;
    setUp(() {
      actions = new VendingMachineActions();
      store = new VendingMachineStore(actions);

      store.beginListening();
    });

    group('when a product is selected', () {
      test('the store should dispense the selected product', () async {
        String product = Generators.randomString();
        await actions.productSelected(product);

        expect(store.lastProductDispensed, equals(product));
      });
    });
  });
}