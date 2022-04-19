// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/presentation/presenters/authentication/auth_provider.dart';

class Background extends HookConsumerWidget {
  final Widget? child;
  const Background({
    Key? key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authenticating = ref
        .watch(authProvider)
        .maybeWhen(orElse: () => false, authenticating: () => true);
    return Container(
      height: double.infinity,
      color: authenticating ? Colors.grey.shade300 : null,
      child: Stack(
        alignment: Alignment.center,
        children: [
          IgnorePointer(
            ignoring: authenticating,
            child: child!,
          ),
          authenticating
              ? const CircularProgressIndicator()
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
