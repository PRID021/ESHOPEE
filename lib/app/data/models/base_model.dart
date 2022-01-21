abstract class BaseModel {
  String? id;
  Map<String, dynamic> toJson();
  BaseModel(this.id);
}
