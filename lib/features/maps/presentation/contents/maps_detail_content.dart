import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:photo_view/photo_view.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';

class MapsDetailContent extends StatefulWidget {
  const MapsDetailContent({
    required this.name,
    required this.image,
    required this.icon,
    required this.coordinate,
    required this.tactical,
    required this.narrativeDescription,
    super.key,
  });
  final String name;
  final String image;
  final String icon;
  final String coordinate;
  final String tactical;
  final String narrativeDescription;

  @override
  State<MapsDetailContent> createState() => _MapsDetailContentState();
}

class _MapsDetailContentState extends State<MapsDetailContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(10),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    alignment: Alignment.topRight,
                    padding: const EdgeInsets.symmetric(vertical: 100),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.image),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: IconButton(
                        onPressed: () {
                          showDialog<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: PhotoView(
                                    backgroundDecoration: const BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    imageProvider: NetworkImage(
                                      widget.icon.isEmpty ? '' : widget.icon,
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        icon: Icon(
                          FontAwesomeIcons.cube,
                          color: Palette.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Gap(20),
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            decoration: BoxDecoration(
              color: Palette.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Maps Information',
                  style: ValoTypoGraph.heading3.black
                      .copyWith(color: Palette.white),
                ),
                const Gap(10),
                Text(
                  '${widget.name.isEmpty ? '' : widget.name} | ${widget.tactical.isEmpty ? '' : widget.tactical}',
                  style: ValoTypoGraph.heading2.bold
                      .copyWith(color: Palette.white),
                ),
                const Gap(5),
                Text(
                  'Coordinate ${widget.coordinate}',
                  style:
                      ValoTypoGraph.label2.bold.copyWith(color: Palette.white),
                ),
                const Gap(10),
                Text(
                  widget.narrativeDescription,
                  textAlign: TextAlign.justify,
                  style: ValoTypoGraph.label1.regular
                      .copyWith(color: Palette.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
