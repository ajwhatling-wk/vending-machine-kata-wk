part of vending_machine;

@Factory()
UiFactory<VendingMachineViewProps> VendingMachineView;

@Props()
class VendingMachineViewProps
    extends FluxUiProps<VendingMachineActions, VendingMachineStore> {}

@Component()
class VendingMachineViewComponent
    extends FluxUiComponent<VendingMachineViewProps> {
  @override
  render() {
    DomProps containerBuilder = Dom.div()..className = 'vending-machine-view';

    ReactElement productSelector = (Dom.button()
      ..className = 'product-selector'
      ..onClick = (_) {
        props.actions.productSelected('pepsi');
      })();

    ReactElement productDispenser = (ProductDispenserView()
      ..dispensedProduct = props.store.lastProductDispensed)();

    return containerBuilder(productSelector, productDispenser);
  }
}
