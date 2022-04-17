// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_riverpod/core/route/route.dart';
import 'package:flutter_boilerplate_riverpod/presentation/presenters/presenters.dart'
    show appConfigProvider, authProvider, todosProvider;
// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterProvider = StateProvider((ref) => 0);

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    ref.read(todosProvider.notifier).todoLoaded();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        const MainsTab(),
        SettingsTab(),
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

class TodosResponse extends HookConsumerWidget {
  const TodosResponse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoProvider = ref.watch(todosProvider);
    return todoProvider.state.when(
      error: (err, sr) => const Text('err.message'),
      loading: () => const CircularProgressIndicator(),
      data: (data) => ListView.separated(
        itemBuilder: (_, index) => Text(data[index].title),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: data.length,
      ),
    );
  }
}
