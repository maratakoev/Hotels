import 'package:flutter/material.dart';
import 'styles.dart';

class Order {
  final String title;
  final String number;
  final String time;
  final String orderHeaderOne;
  final String orderHeaderTwo;

  Order({
    required this.orderHeaderTwo,
    required this.title,
    required this.number,
    required this.time,
    required this.orderHeaderOne,
  });
}

// вся страница новых заказов
class NewOrdersScreen extends StatefulWidget {
  const NewOrdersScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NewOrdersScreenState createState() => _NewOrdersScreenState();
}

class _NewOrdersScreenState extends State<NewOrdersScreen> {
  Order? _selectedOrder;

  void _onOrderTap(Order order) {
    setState(() {
      _selectedOrder = order;
    });
  }

  void _onBack() {
    setState(() {
      _selectedOrder = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final orders = [
      Order(
          title: 'Провести полную уборку',
          number: '№306',
          time: '21:56',
          orderHeaderOne: 'Протереть пыль',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
      Order(
          title: 'Тапочки и халат (белые)',
          number: '№307',
          time: '22:30',
          orderHeaderOne: 'Застелить кровать',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
      Order(
          title: 'Фен (Bosh)',
          number: '№308',
          time: '23:15',
          orderHeaderOne: 'Новые тапочки',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
      Order(
          title: 'Зубная щетка (1шт.)',
          number: '№309',
          time: '08:45',
          orderHeaderOne: 'Помыть пол',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
      Order(
          title: 'Дополнительное одеяло (розовое)',
          number: '№310',
          time: '09:20',
          orderHeaderOne: 'Окна помыть',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
      Order(
          title: 'Зарядное устройство (ios/android)',
          number: '№311',
          time: '10:00',
          orderHeaderOne: 'Вынести мусор',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
      Order(
          title: 'Покраска потолка',
          number: '№361',
          time: '11:20',
          orderHeaderOne: 'Протереть пыль',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
      Order(
          title: 'Провести полную уборку',
          number: '№306',
          time: '21:56',
          orderHeaderOne: 'Протереть пыль',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
      Order(
          title: 'Проверить сантехнику',
          number: '№307',
          time: '22:30',
          orderHeaderOne: 'Протереть пыль',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
      Order(
          title: 'Ремонт кондиционера',
          number: '№308',
          time: '23:15',
          orderHeaderOne: 'Протереть пыль',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
      Order(
          title: 'Замена лампочек',
          number: '№309',
          time: '08:45',
          orderHeaderOne: 'Протереть пыль',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
      Order(
          title: 'Установка розеток',
          number: '№310',
          time: '09:20',
          orderHeaderOne: 'Протереть пыль',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
      Order(
          title: 'Покраска стен',
          number: '№311',
          time: '10:00',
          orderHeaderOne: 'Протереть пыль',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
      Order(
          title: 'Покраска потолка',
          number: '№361',
          time: '11:20',
          orderHeaderOne: 'Протереть пыль',
          orderHeaderTwo: 'Новые Полотенца (белые)'),
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
            TitleNewOrders(showDetails: _selectedOrder != null),
            const SizedBox(height: 24),
            if (_selectedOrder == null)
              SizedBox(
                height: 649,
                child: OrdersList(
                  orders: orders,
                  onOrderTap: _onOrderTap,
                ),
              )
            else
              Expanded(
                child: OrderDetails(
                  title: _selectedOrder!.title,
                  number: _selectedOrder!.number,
                  time: _selectedOrder!.time,
                  orderHeaderOne: _selectedOrder!.orderHeaderOne,
                  orderHeaderTwo: _selectedOrder!.orderHeaderTwo,
                  onBack: _onBack,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// Заголовок страницы
class TitleNewOrders extends StatelessWidget {
  final bool showDetails;
  const TitleNewOrders({super.key, required this.showDetails});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 297,
      child: Text(
        showDetails ? 'Детали заказа' : 'Новые заказы',
        textAlign: TextAlign.center,
        softWrap: true,
        style: newOrdersTitle,
      ),
    );
  }
}

// Контейнер заказа одного
class OrderUnit extends StatelessWidget {
  final Order order;
  final VoidCallback onTap;
  const OrderUnit({super.key, required this.order, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
            border: Border.symmetric(
                vertical: BorderSide(color: Color.fromRGBO(244, 244, 244, 1)),
                horizontal:
                    BorderSide(color: Color.fromRGBO(244, 244, 244, 1))),
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
                        order.title,
                        style: ordersHeaderText,
                      ),
                      Text(
                        order.number,
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
                    order.time,
                    style: ordersTime,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Список заказов
class OrdersList extends StatelessWidget {
  final List<Order> orders;
  final Function(Order) onOrderTap;
  const OrdersList({super.key, required this.orders, required this.onOrderTap});

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
        return OrderUnit(
          order: order,
          onTap: () => onOrderTap(order),
        );
      },
    );
  }
}

// Детали заказа
class OrderDetails extends StatelessWidget {
  final String title;
  final String number;
  final String time;
  final String orderHeaderOne;
  final String orderHeaderTwo;
  final VoidCallback onBack;
  const OrderDetails(
      {super.key,
      required this.title,
      required this.number,
      required this.time,
      required this.onBack,
      required this.orderHeaderOne,
      required this.orderHeaderTwo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 326,
          height: 235,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromRGBO(244, 244, 244, 1),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 134.0, top: 16),
                        child: Text(
                          number,
                          style: roomNumberInOrderDetails,
                        ),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, right: 16),
                        child: SizedBox(
                          width: 30,
                          child:
                              Image.asset('assets/images/NewOrdersGreen.png'),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Text(
                          title,
                          style: roomTitleInOrderDetails,
                        ),
                        Container(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Text(
                          orderHeaderOne,
                          style: roomOrderHeaderDetails,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Text(
                          orderHeaderTwo,
                          style: roomOrderHeaderDetails,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Row(
                      children: [
                        const Text(
                          'Время подачи',
                          style: roomTimesDetails,
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            time,
                            style: roomTimesDetails,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        const Text(
                          'Время принятия',
                          style: roomTimesDetails,
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            time,
                            style: roomTimesDetails,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        const Text(
                          'Время завершения',
                          style: roomTimesDetails,
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            time,
                            style: roomTimesDetails,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 73,
                          height: 25,
                          decoration: commonButtonStyle,
                          child: Padding(
                            padding: const EdgeInsets.all(0),
                            child: TextButton(
                                style: ButtonStyle(
                                    padding:
                                        WidgetStateProperty.all<EdgeInsets>(
                                      const EdgeInsets.symmetric(
                                          horizontal: 2,
                                          vertical: 1), // Отступы внутри кнопки
                                    ),
                                    shape: const WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(24))))),
                                onPressed: onBack,
                                child: const Text('Принять',
                                    style: buttonTextDetails)),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          width: 86,
                          height: 25,
                          decoration: commonButtonStyleRed,
                          child: Padding(
                            padding: const EdgeInsets.all(0),
                            child: TextButton(
                                style: ButtonStyle(
                                    padding:
                                        WidgetStateProperty.all<EdgeInsets>(
                                      const EdgeInsets.symmetric(
                                          horizontal: 2,
                                          vertical: 1), // Отступы внутри кнопки
                                    ),
                                    shape: const WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(24))))),
                                onPressed: onBack,
                                child: const Text('Отклонить',
                                    style: buttonTextDetails)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
