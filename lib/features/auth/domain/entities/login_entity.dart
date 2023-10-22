import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  const LoginEntity({
    required this.id,
    required this.username,
    required this.email,
    required this.isAdmin,
    required this.imageProfile,
    required this.updatedAt,
    required this.userToken,
  });
  final String id;
  final String username;
  final String email;
  final bool isAdmin;
  final String imageProfile;
  final DateTime updatedAt;
  final String userToken;

  @override
  List<Object?> get props => [
        id,
        username,
        email,
        isAdmin,
        imageProfile,
        updatedAt,
        userToken,
      ];
}
