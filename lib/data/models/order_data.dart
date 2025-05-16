class OrderData {

  final String deadLine;
  final String id;
  final String status;


  final String where;
  final String CustomerPhone;
  final int price;
  final int beforeMoney;
  final String aboutTask;


  OrderData(
     {
       required  this.deadLine,
       required this.CustomerPhone,
       required this.beforeMoney,
       required this.aboutTask,
       required this.where,
       required this.id,
       required this.price,
       required this.status,

  });

// Convert the object to a map
  Map<String, dynamic> toMap() {
    return {
      'deadLine': deadLine,
      'CustomerPhone': CustomerPhone,
      'beforeMoney': beforeMoney,
      'aboutTask': aboutTask,
      'price': price,
      'where': where,
      'id': id,
      'status': status,
    };
  }
}
