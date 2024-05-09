import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

enum State {
  initial,
  loading,
  success
}

@riverpod
class ProviderA extends _$ProviderA {

  @override
  State build() => State.initial;

  Future<void> change() async {
    state = State.loading;
    
    await Future.delayed(const Duration(seconds: 3));

    state = State.success;
  }
}