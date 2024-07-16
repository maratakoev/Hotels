import 'package:flutter/material.dart';
import 'styles.dart';

class Order {
  final String title;
  final String number;
  final String time;

  Order({required this.title, required this.number, required this.time});
}

//вся страница новых заказов ниже
class NewOrdersScreen extends StatelessWidget {
  const NewOrdersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final orders = [
      Order(title: 'Провести полную уборку', number: '306', time: '21:56'),
      Order(title: 'Проверить сантехнику', number: '307', time: '22:30'),
      Order(title: 'Ремонт кондиционера', number: '308', time: '23:15'),
      Order(title: 'Замена лампочек', number: '309', time: '08:45'),
      Order(title: 'Установка розеток', number: '310', time: '09:20'),
      Order(title: 'Покраска стен', number: '311', time: '10:00'),
      Order(title: 'Покраска потолка', number: '361', time: '11:20'),
      Order(title: 'Провести полную уборку', number: '306', time: '21:56'),
      Order(title: 'Проверить сантехнику', number: '307', time: '22:30'),
      Order(title: 'Ремонт кондиционера', number: '308', time: '23:15'),
      Order(title: 'Замена лампочек', number: '309', time: '08:45'),
      Order(title: 'Установка розеток', number: '310', time: '09:20'),
      Order(title: 'Покраска стен', number: '311', time: '10:00'),
      Order(title: 'Покраска потолка', number: '361', time: '11:20'),
    ];
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
            // ignore: prefer_const_constructors
            SizedBox(height: 649, width: 326, child: OrdersList(orders: orders))
          ],
        ),
      ),
    );
  }
}

//заголовок страницы
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

//контейнер заказа одного
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
          border: Border.symmetric(
              vertical: BorderSide(color: Color.fromRGBO(244, 244, 244, 1)),
              horizontal: BorderSide(color: Color.fromRGBO(244, 244, 244, 1))),
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

//список заказов ниже
class OrdersList extends StatelessWidget {
  final List<Order> orders;
  const OrdersList({
    super.key,
    required this.orders,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.zero,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
              height: 20,
            ),
        itemCount: orders.length,
        itemBuilder: (context, i) {
          final order = orders[i];
          return Column(
            children: [
              OrderUnit(
                  title: order.title, number: order.number, time: order.time),
            ],
          );
        });
  }
}
