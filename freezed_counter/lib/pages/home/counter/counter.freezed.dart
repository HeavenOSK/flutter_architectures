// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters

part of 'counter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$Counter {
  int get counter;

  Counter copyWith({int counter});
}

class _$_Counter with DiagnosticableTreeMixin implements _Counter {
  const _$_Counter({this.counter});

  @override
  final int counter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Counter(counter: $counter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Counter'))
      ..add(DiagnosticsProperty('counter', counter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Counter &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality().equals(other.counter, counter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(counter);

  @override
  _$_Counter copyWith({
    Object counter = freezed,
  }) {
    return _$_Counter(
      counter: counter == freezed ? this.counter : counter as int,
    );
  }
}

abstract class _Counter implements Counter {
  const factory _Counter({int counter}) = _$_Counter;

  @override
  int get counter;

  @override
  _Counter copyWith({int counter});
}
