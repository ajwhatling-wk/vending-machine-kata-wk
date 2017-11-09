part of vending_machine;

@Factory()
UiFactory<Null> ProductDispenserView;

@Props()
class ProductDispenserProps extends UiProps {
  String dispensedProduct;
}

@Component()
class ProductDispenserViewComponent extends UiComponent<ProductDispenserProps> {
  @override
  render() {
    return (Dom.div()
      ..className = 'product-dispenser')(this.props.dispensedProduct);
  }
}
