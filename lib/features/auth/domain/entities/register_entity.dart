import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable {
  const RegisterEntity({
    required this.username,
    required this.email,
    required this.password,
    required this.isAdmin,
    required this.imageProfile,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });
  final String username;
  final String email;
  final String password;
  final bool isAdmin;
  final String imageProfile;
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;
  @override
  List<Object?> get props => [
        username,
        email,
        password,
        id,
        isAdmin,
        imageProfile,
        updatedAt,
        createdAt,
      ];
}
