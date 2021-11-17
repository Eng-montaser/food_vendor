import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_vendor/models/OrderData.dart';
import 'package:food_vendor/utils/FCITextStyles.dart';

class OrderCard extends StatefulWidget {
  final OrderData orderData;
  const OrderCard({
    Key key,
    this.orderData,
  }) : super(key: key);
  @override
  _OrderCardState createState() => _OrderCardState(this.orderData);
}

class _OrderCardState extends State<OrderCard> {
  OrderData orderData;
  _OrderCardState(this.orderData);
  String data = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          top: ScreenUtil().setHeight(10),
          left: ScreenUtil().setWidth(10),
          right: ScreenUtil().setWidth(10)),
      padding: EdgeInsets.symmetric(
          vertical: ScreenUtil().setHeight(5),
          horizontal: ScreenUtil().setWidth(10)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
                blurRadius: .5,
                spreadRadius: .5,
                offset: Offset(0, 0),
                color: Colors.grey.withOpacity(.5))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("#${orderData.id} ${orderData.name}"),
          Text(
            "Created: ${orderData.date}",
            style: FCITextStyle(color: Colors.grey[400])
                .normal16()
                .copyWith(fontFamily: '', height: 1.5),
          ),
          Text("Status: ${orderData.status}",
              style: FCITextStyle(color: Colors.grey[400])
                  .normal16()
                  .copyWith(fontFamily: '', height: 1.5)),
          Text("${orderData.price}\$"),
          SizedBox(
            height: ScreenUtil().setHeight(10),
          )
        ],
      ),
    );
  }
}
