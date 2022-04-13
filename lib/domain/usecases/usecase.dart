// Package imports:

/// [UseCase] a busnisses layer for blocs.
/// You should'nt connect directly to repository from bloc, you should use [UseCase].
/// in [UseCase], you can do long term process.
/// [Type] is return type if There is no error.
/// [Params] is parameter type which call method accepts.
/// Example: [MovieBootstartSync] for long term process
abstract class UseCase<T, P> {
  T call({required P params});
}

// This will be used by the code calling the use case whenever the use case
// doesn't accept any parameters.
/// If there is no need for params in the call method. You should use [NoParams] class.
/// Example: [ExampleUseSase<ExampleType, NoParams>]
class NoParams {}
