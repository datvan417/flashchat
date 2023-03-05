import 'dart:convert';

Item itemFromJson(String str) => Item.fromJson(json.decode(str));

String itemToJson(Item data) => json.encode(data.toJson());

class Item {
  Item({
    required this.sender,
    required this.text,
  });

  String sender;
  String text;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        sender: json["sender"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "sender": sender,
        "text": text,
      };
}
