library index_example;

import 'dart:html';

import 'package:react/react_dom.dart' as react_dom;
import 'package:react/react_client.dart' as react_client;
import 'package:vending_machine_kata/vending_machine_kata.dart';

void main() {
  react_client.setClientConfiguration();
  
  var container = document.createElement('div')..id = 'container';
  document.body.append(container);

  List<String> products = ['Pepsi', 'Coke', 'Dr. Pepper'];
  VendingMachineActions actions = new VendingMachineActions();
  VendingMachineStore store = new VendingMachineStore(actions)
    ..setUpProducts(products)
    ..beginListening();

  var vm = (VendingMachineView()
    ..actions = actions
    ..store = store
  )();

  react_dom.render(vm, container);
}

