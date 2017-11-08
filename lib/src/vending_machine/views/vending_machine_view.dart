part of vending_machine;

@Factory()
UiFactory<VendingMachineViewProps> VendingMachineView;

@Props()
class VendingMachineViewProps extends FluxUiProps<VendingMachineActions, VendingMachineStore> {
}

@Component()
class VendingMachineViewComponent extends FluxUiComponent<VendingMachineViewProps> {
  @override
  render() {
    var containerBuilder = Dom.p()..className = 'vending-machine-view';

    var productSelector = (Dom.button()
      ..className = 'product-selector'
      ..onClick = (_) {
        props.actions.productSelected('pepsi');
      }
      )();

    var productDispenser = (Dom.div()..className='product-dispenser')(this.props.store.lastProductDispensed);

    return containerBuilder(productSelector, productDispenser);
  }
}
