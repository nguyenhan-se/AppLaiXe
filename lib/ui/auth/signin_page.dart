// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/provider/authentication/auth_provider.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('hello sign in page'),
              Consumer(builder: (context, ref, _) {
                final state = ref.watch<AuthState>(authProvider);
                final handleLogin = state.maybeWhen(
                    orElse: () => () => ref
                        .read(authProvider.notifier)
                        .login('hungnt.se@gmail.com', 'campaign4'),
                    authenticating: () => null);
                return ElevatedButton(
                    onPressed: handleLogin, child: const Text('login'));
              })
            ],
          ),
        ),
      ),
    );
  }
}
