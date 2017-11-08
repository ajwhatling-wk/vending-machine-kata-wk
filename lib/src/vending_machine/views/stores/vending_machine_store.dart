part of vending_machine;

class VendingMachineStore extends Store {
  final VendingMachineActions _actions;

  String _lastProductDispensed;
  String get lastProductDispensed => _lastProductDispensed;

  VendingMachineStore(this._actions);

  void beginListening() {
    _actions.productSelected.listen(_whenProductSelected);
  }

  void _whenProductSelected(String product) {
    _lastProductDispensed = product;
  }
}