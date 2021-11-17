class OrderData {
  String name;
  double price;
  String date;
  String status;
  int id;
  OrderData({
    this.name,
    this.price,
    this.status,
    this.date,
    this.id,
  });
  OrderData.fromLoginJson(Map<String, dynamic> json) {
    name = json['name'];
    price = double.parse('${json['id']}');
    status = json['role_id'];
    date = json['image'];
    id = int.parse('${json['id']}');
  }
}

List<OrderData> orderExamples = [
  OrderData(
      id: 506,
      name: "Leuka Pizza",
      date: "March 17th 2021 8:50 pm",
      status: "Prepared",
      price: 74),
  OrderData(
      id: 501,
      name: "Leuka Pizza",
      date: "March 17th 2021 2:50 pm",
      status: "Prepared",
      price: 75),
  OrderData(
      id: 502,
      name: "Leuka Pizza",
      date: "March 17th 2021 7:50 pm",
      status: "Prepared",
      price: 74),
  OrderData(
      id: 503,
      name: "Leuka Pizza",
      date: "March 17th 2021 5:50 pm",
      status: "Prepared",
      price: 74),
  OrderData(
      id: 502,
      name: "Leuka Pizza",
      date: "March 17th 2021 7:50 pm",
      status: "Prepared",
      price: 74),
  OrderData(
      id: 503,
      name: "Leuka Pizza",
      date: "March 17th 2021 5:50 pm",
      status: "Prepared",
      price: 74)
];

/// Sign up
