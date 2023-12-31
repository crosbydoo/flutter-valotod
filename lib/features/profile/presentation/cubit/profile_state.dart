part of 'profile_cubit.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileSuccess extends ProfileState {
  ProfileSuccess(this.result);

  final ProfileEntity result;
}

class ProfileFailure extends ProfileState {
  ProfileFailure(this.message);

  final String message;
}
