import 'package:eshopee/app/data/models/product.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  Rx<Product?> product = Rx<Product?>(null);
  Rx<int> imageForceIndex = 0.obs;

  Rx<dynamic> colorDropdownSelectedValue = 'Select'.obs;
  RxList<dynamic> colorDropdownvalues = ['Select'].obs;

  Rx<dynamic> ramDropdownSelectedValue = 0.obs;
  RxList<dynamic> ramDropdownvalues = [0].obs;

  Rx<dynamic> storageDropdownSelectedValue = 0.obs;
  RxList<dynamic> storageDropdownvalues = [0].obs;

  @override
  Future<void> onInit() async {
    var intProduct = await Future.delayed(const Duration(seconds: 2)).then((value) {
      var json = Map<String, dynamic>.from({
        'id': 'id1',
        'name': "Iphone 10 Plus 64GB",
        'stars': 3.5,
        'numReviews': 5,
        'saleRate': 5.0,
        'colors': ['black', 'white'],
        'ramCapacity': [8, 4],
        'storageCapacity': [256, 164],
        'sku': "123123",
        'categoryNumber': 1,
        'tags': ["tag1", "tag2"],
        'images': [
          "https://firebasestorage.googleapis.com/v0/b/prshop-f21e3.appspot.com/o/feature-phone-smartphone-mobile-phone-accessories-apple-phone-model-diagram-perspective-6733be866235ffd875905a65f7b39c54.png?alt=media&token=5a854fbd-6d27-488e-901e-e9ad70a8b47d",
          "https://firebasestorage.googleapis.com/v0/b/prshop-f21e3.appspot.com/o/iphone-4-iphone-8-plus-iphone-5-iphone-x-iphone-apple-7d67b766a480604d68cc35a2270328e2.png?alt=media&token=ce2293f6-4ed8-4d45-b573-8007e1a516b9",
          "https://firebasestorage.googleapis.com/v0/b/prshop-f21e3.appspot.com/o/iphone-8-plus-apple-a11-telephone-iphone-x-1c9108d7330b52463c21f37773353179.png?alt=media&token=8d37e960-da41-43a7-8bd5-91304c46ef74"
        ]
      });
      return Product?.fromJson(json);
    });
    product.value = intProduct;
    var temp = product.value?.colors ?? [];
    temp.add('Select');
    colorDropdownvalues.value = temp;

    var temp1 = product.value?.ramCapacity ?? [];
    temp1.add(0);
    ramDropdownvalues.value = temp1;

    var temp2 = product.value?.storageCapacity ?? [];
    temp2.add(0);
    storageDropdownvalues.value = temp2;

    super.onInit();
  }
}
