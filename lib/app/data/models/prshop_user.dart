import 'package:eshopee/app/data/models/base_model.dart';

class PRShopUser extends BaseModel {
  String? name;
  String? email;
  String? address;
  PRShopUser(String? id, {this.name, this.email, this.address}) : super(id);
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'address': address,
    };
  }

  PRShopUser.fromJson(Map<String, dynamic>? json) : super(json?['id']) {
    name = json?['name'];
    email = json?['email'];
    address = json?['address'];
  }
}
