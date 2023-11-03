import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  const ProfileEntity({
    required this.id,
    required this.username,
    required this.email,
    required this.isAdmin,
    required this.fullname,
    required this.imageProfile,
    required this.updatedAt,
    required this.createdAt,
  });
  final String id;
  final String username;
  final String email;
  final bool isAdmin;
  final String fullname;
  final String imageProfile;
  final DateTime updatedAt;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        id,
        username,
        email,
        isAdmin,
        imageProfile,
        updatedAt,
        createdAt,
      ];
}
