// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/gen/l10n.dart';
import 'package:flutter_boilerplate_riverpod/core/provider/app_config/app_config_provider.dart';
import 'package:flutter_boilerplate_riverpod/core/provider/authentication/auth_provider.dart';
import 'provider/todos/todos_provider.dart';

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
    final appConfigNotifier = ref.watch(appConfigProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter example'),
        automaticallyImplyLeading: false,
      ),
      body: WillPopScope(
        onWillPop: () async => false,
        child: Center(
          child: Column(
            children: [
              Text(S.of(context).simpleText),
              Consumer(builder: (context, ref, _) {
                final appConfigState = ref.watch(appConfigProvider);
                final appConfigEvents = ref.watch(appConfigProvider.notifier);
                return CupertinoSwitch(
                  value: appConfigState.isDarkMode,
                  onChanged: (isDark) => appConfigEvents.themeTogged(isDark),
                );
              }),
              ElevatedButton(
                onPressed: () =>
                    appConfigNotifier.localeChanged(const Locale('en')),
                child: const Text('En'),
              ),
              ElevatedButton(
                onPressed: () {
                  appConfigNotifier.localeChanged(const Locale('vi'));
                },
                child: const Text('Vi'),
              ),
              Consumer(builder: (context, ref, _) {
                final count = ref.watch(counterProvider);
                return Text('$count');
              }),
              Consumer(builder: (context, ref, _) {
                return ElevatedButton(
                  onPressed: () => ref.read(authProvider.notifier).signOut(),
                  child: const Text('Logout'),
                );
              }),
              // const Expanded(child: TodosResponse())
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).state++,
        child: const Icon(Icons.add),
      ),
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
