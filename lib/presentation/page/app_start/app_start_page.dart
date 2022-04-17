// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/route/route.dart';

import 'package:flutter_boilerplate_riverpod/presentation/presenters/presenters.dart'
    show AuthState, authProvider;

class AppStartPage extends StatefulHookConsumerWidget {
  const AppStartPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppStartPageState();
}

class _AppStartPageState extends ConsumerState<AppStartPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AuthState>(authProvider, (_, state) {
      state.maybeWhen(
        orElse: () => null,
        authenticated: (_) {
          context.router.popUntilRoot();
          context.router.push(const HomeRoute());
        },
        unauthenticated: () {
          context.router.popUntilRoot();
          context.router.push(const LoginRoute());
        },
        failure: (failure) {
          showDialog(
            context: context,
            builder: (context) => CupertinoAlertDialog(
              title: const Text('Error authentication'),
              content: Text(failure.message),
              actions: [
                CupertinoDialogAction(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('ok'),
                )
              ],
            ),
          );
        },
      );
    });
    return const Scaffold(
      body: SizedBox.shrink(),
    );
  }
}
