import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginStateInitial extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginStateLoading extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginStateSuccess extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginStateFailure extends LoginState {
  final String error;
  LoginStateFailure(this.error);
  @override
  List<Object?> get props => [];
}
