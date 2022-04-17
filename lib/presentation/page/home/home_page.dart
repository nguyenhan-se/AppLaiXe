// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_riverpod/core/route/route.dart';
// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        CarBookingTab(),
        HistoryTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.airport_shuttle_outlined),
              label: 'Đặt xe',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Danh sách vé',
            ),
          ],
        );
      },
    );
  }
}
