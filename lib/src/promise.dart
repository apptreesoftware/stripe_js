@JS()
library lib.src.es6;

import "package:js/js.dart";

/// Type definitions for es6-shim v0.31.2
/// Project: https://github.com/paulmillr/es6-shim
/// Definitions by: Ron Buckton <https://github.com/rbuckton>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// TypeScript Version: 2.2
@anonymous
@JS()
abstract class PromiseLike<T> {
  /// Attaches callbacks for the resolution and/or rejection of the Promise.
  /*external PromiseLike<TResult> then<TResult>([TResult|PromiseLike<TResult> onfulfilled(T value), TResult|PromiseLike<TResult> onrejected(dynamic reason)]);*/
  /*external PromiseLike<TResult> then<TResult>([TResult|PromiseLike<TResult> onfulfilled(T value), void onrejected(dynamic reason)]);*/
  external PromiseLike<dynamic/*=TResult*/ > then/*<TResult>*/(
      [dynamic /*TResult|PromiseLike<TResult>*/ onfulfilled(T value),
      Function /*Func1<dynamic, TResult|PromiseLike<TResult>>|VoidFunc1<dynamic>*/ onrejected]);
}

/// Represents the completion of an asynchronous operation
@JS("Promise")
abstract class PromiseType<T> {
  /// Attaches callbacks for the resolution and/or rejection of the Promise.
  /*external Promise<TResult> then<TResult>([TResult|PromiseLike<TResult> onfulfilled(T value), TResult|PromiseLike<TResult> onrejected(dynamic reason)]);*/
  /*external Promise<TResult> then<TResult>([TResult|PromiseLike<TResult> onfulfilled(T value), void onrejected(dynamic reason)]);*/
  external PromiseType<dynamic/*=TResult*/ > then/*<TResult>*/(
      [dynamic /*TResult|PromiseLike<TResult>*/ onfulfilled(T value),
      Function /*Func1<dynamic, TResult|PromiseLike<TResult>>|VoidFunc1<dynamic>*/ onrejected]);

  /// Attaches a callback for only the rejection of the Promise.
  /*external Promise<T> JS$catch([T|PromiseLike<T> onrejected(dynamic reason)]);*/
  /*external Promise<T> JS$catch([void onrejected(dynamic reason)]);*/
  external PromiseType<T> JS$catch(
      [Function /*Func1<dynamic, T|PromiseLike<T>>|VoidFunc1<dynamic>*/ onrejected]);
}

@JS("Promise")
abstract class PromiseConstructor {
  /// Creates a new Promise.
  /// a resolve callback used resolve the promise with a value or the result of another promise,
  /// and a reject callback used to reject the promise with a provided reason or error.
  external factory PromiseConstructor(
      void executor(void resolve([dynamic /*T|PromiseLike<T>*/ value]),
          void reject([dynamic reason])));
}

@JS()
external PromiseConstructor get Promise;
@JS()
external set Promise(PromiseConstructor v);

