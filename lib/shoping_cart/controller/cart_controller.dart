
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:somescreen/shoping_cart/model/product_model.dart';

class CartController extends GetxController {
  // add a dict to store the selected food  in the cart
  Map products = {}.obs;


  @override
  void onInit() {
    products.clear();

    // TODO: implement onInit
    super.onInit();
  }

  void addProduct(Product product) {
    if (products.containsKey(product)) {

      // products[product] = products[product]+1;
      products[product] += 1;

    } else {
      products[product] = 1;
    }
    Get.snackbar(
        "Product addes", "you have added the ${product.name} to the cart",
        snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
  }



  get _products => products;

  void deleteProduct(Product product) {
    if (products.containsKey(product) && products[product] == 1) {
      products.removeWhere((key, value) => key == product);
    } else {
      products[product] -= 1;
    }
  }

  get total => products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element);

}
