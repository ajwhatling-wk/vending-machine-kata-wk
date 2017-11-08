part of vending_machine;

class VendingMachineStore extends Store {
  final VendingMachineActions _actions;

  String _lastProductDispensed;
  String get lastProductDispensed => _lastProductDispensed;

  String _displayError;
  String get displayError => _displayError;

  List<String> _products = [];

  VendingMachineStore(this._actions);

  void setUpProducts(List<String> products) {
    _products = products;
  }

  void beginListening() {
    triggerOnAction(_actions.productSelected, _whenProductSelected);
  }

  void _whenProductSelected(String product) {
    _lastProductDispensed = product;

    if (!_products.contains(product)) {
      _lastProductDispensed = null;
      _displayError = '"${product}" not found';
    }
  }
}