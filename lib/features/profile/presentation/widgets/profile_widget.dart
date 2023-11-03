import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/profile/presentation/contents/detail_profile_content.dart';
import 'package:valotod_app/features/profile/presentation/contents/header_profile_content.dart';
import 'package:valotod_app/features/profile/presentation/cubit/profile_cubit.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final _scrollController = ScrollController();
  final _isScrolled = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      _isScrolled.value = _scrollController.offset > 0;
    });

    return ValueListenableBuilder<bool>(
      valueListenable: _isScrolled,
      builder: (context, value, _) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor:
                _isScrolled.value ? Palette.black : Colors.transparent,
            title: Text(
              'Profile',
              style:
                  ValoTypoGraph.heading2.black.copyWith(color: Palette.white),
            ),
          ),
          body: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              if (state is ProfileSuccess) {
                final result = state.result;
                final img = result.imageProfile;

                final joindate = result.createdAt;
                final email = result.email;
                final username = result.username;

                final fullName = result.fullname;
                return CustomScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: _scrollController,
                  slivers: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Column(
                        children: [
                          HeaderProfileContent(
                            imgProfile: img,
                            fullName: fullName,
                          ),
                          Expanded(
                            child: DetailProfileContent(
                              fullname: fullName,
                              username: username,
                              email: email,
                              joindate: joindate,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
              return Container();
            },
          ),
        );
      },
    );
  }
}
