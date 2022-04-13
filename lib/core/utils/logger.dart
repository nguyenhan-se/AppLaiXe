// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

Logger logger(Type type) => Logger(
      printer: _CustomerPrinter(type.toString()),
      level: Level.verbose,
    );

class RiverpodLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final log = logger(RiverpodLogger);
    log.i('[${provider.name ?? provider.runtimeType}] value: $newValue');
  }
}

class _CustomerPrinter extends LogPrinter {
  final String className;

  _CustomerPrinter(this.className);
  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.levelColors[event.level];
    final emoji = PrettyPrinter.levelEmojis[event.level];
    final message = event.message;

    return [color!('$emoji: $message')];
  }
}
