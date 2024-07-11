import 'package:flutter/material.dart';
import 'package:hotels/current_orders.dart';
import 'package:hotels/done_orders.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'new_orders.dart';

class PersistenBottomNavBarDemo extends StatelessWidget {
  const PersistenBottomNavBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      avoidBottomPadding: false, //нижний отступ безопасный
      margin: const EdgeInsets.all(20),
      navBarHeight: 74,
      tabs: [
        PersistentTabConfig(
          screen: const NewOrdersScreen(),
          item: ItemConfig(
            icon: Image.asset(height: 30, 'assets/images/NewOrders.png'),
            title: "Новые заказы",
          ),
        ),
        PersistentTabConfig(
          screen: const CurrentOrdersScreen(),
          item: ItemConfig(
            icon: Image.asset(height: 30, 'assets/images/CurrentOrders.png'),
            title: "В процессе",
          ),
        ),
        PersistentTabConfig(
          screen: const DoneOrdersScreen(),
          item: ItemConfig(
            icon: Image.asset(height: 30, 'assets/images/DoneOrders.png'),
            title: "Завершенные",
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) => CustomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}

class YourSecondScreen extends StatelessWidget {
  const YourSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      color: const Color.fromRGBO(250, 253, 255, 1),
    );
  }
}

class YourThirdScreen extends StatelessWidget {
  const YourThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      color: const Color.fromRGBO(250, 253, 255, 1),
    );
  }
}

class CustomNavBar extends StatelessWidget {
  final NavBarConfig navBarConfig;
  final NavBarDecoration navBarDecoration;

  const CustomNavBar({
    super.key,
    required this.navBarConfig,
    this.navBarDecoration = const NavBarDecoration(
        border: Border(
            bottom: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
            left: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
            top: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
            right: BorderSide(
                color: Color.fromRGBO(217, 217, 217,
                    1))), // Border(bottom: BorderSide(color: Color.fromRGBO(214, 19, 19, 1))),
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.all(Radius.circular(20))),
  });

  Widget _buildItem(ItemConfig item, bool isSelected) {
    final title = item.title;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: IconTheme(
            data: IconThemeData(
              size: item.iconSize,
              color: isSelected
                  ? item.activeForegroundColor
                  : item.inactiveForegroundColor,
            ),
            child: isSelected ? item.icon : item.inactiveIcon,
          ),
        ),
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Material(
              type: MaterialType.transparency,
              child: FittedBox(
                child: Text(
                  title,
                  style: item.textStyle.apply(
                    color: isSelected
                        ? item.activeForegroundColor
                        : item.inactiveForegroundColor,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedNavBar(
      decoration: navBarDecoration,
      height: navBarConfig.navBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (final (index, item) in navBarConfig.items.indexed)
            Expanded(
              child: InkWell(
                // This is the most important part. Without this, nothing would happen if you tap on an item.
                onTap: () => navBarConfig.onItemSelected(index),
                child: _buildItem(item, navBarConfig.selectedIndex == index),
              ),
            ),
        ],
      ),
    );
  }
}
