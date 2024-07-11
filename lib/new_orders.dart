import 'package:flutter/material.dart';
import 'styles.dart';

class NewOrdersScreen extends StatelessWidget {
  // final int itemCount; на будущее

  const NewOrdersScreen({
    super.key,
    // required this.itemCount
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(250, 253, 255, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32.0,
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Image.asset('assets/images/logo.png'),
            const SizedBox(height: 16),
            const TitleNewOrders(),
            const SizedBox(height: 24),
            // ListView.separated(
            //   itemBuilder: (BuildContext context, int index) {
            //     return ListTile(
            //       title: Text('Item $index'),
            //     );
            //   },
            //   separatorBuilder: (BuildContext context, int index) {
            //     return const Divider();
            //   },
            //   itemCount: 10,
            // ),
          ],
        ),
      ),
    );
  }
}

class TitleNewOrders extends StatelessWidget {
  const TitleNewOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 297,
      child: Text(
        'Новые заказы',
        textAlign: TextAlign.center,
        softWrap: true,
        style: newOrdersTitle,
      ),
    );
  }
}

class OrderUnit extends StatefulWidget {
  final String title;
  final String number;
  final String time;
  const OrderUnit(
      {super.key,
      required this.title,
      required this.number,
      required this.time});

  @override
  State<OrderUnit> createState() => _OrderUnitState();
}

class _OrderUnitState extends State<OrderUnit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: ordersHeaderText,
                    ),
                    Text(
                      widget.number,
                      style: ordersHeaderText,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: Container()),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: Text(
                  widget.time,
                  style: ordersTime,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
