import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'l10n.dart';

const headerStyle = TextStyle(color: Colors.white, fontSize: 32);
const bodyStyle = TextStyle(color: Colors.white, fontSize: 18);

final installationSlides = [
  _buildWelcomeSlide,
  _buildAudioSlide,
  _buildVideoSlide,
  _buildGraphicsSlide,
  _buildPhotographySlide,
  _buildSoftwareSlide,
  _buildGetHelpSlide,
];

Widget _buildWelcomeSlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/us_background.png'),
      Padding(
        padding: const EdgeInsets.all(40),
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(context.l10n.welcomeSlideHeader, style: headerStyle),
              const SizedBox(height: 20),
              Expanded(
                child: Text(context.l10n.welcomeSlideBody, style: bodyStyle),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget _buildAudioSlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/us_background.png'),
      Padding(
        padding: const EdgeInsets.all(60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  context.l10n.audioSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 450,
                  height: 410,
                  child: Image.asset('assets/slides/audio.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}


Widget _buildVideoSlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/us_background.png'),
      Padding(
        padding: const EdgeInsets.all(60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  context.l10n.videoSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 450,
                  height: 410,
                  child: Image.asset('assets/slides/video.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildGraphicsSlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/us_background.png'),
      Padding(
        padding: const EdgeInsets.all(60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  context.l10n.graphicsSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 450,
                  height: 410,
                  child: Image.asset('assets/slides/graphics.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildPhotographySlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/us_background.png'),
      Padding(
        padding: const EdgeInsets.all(60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  context.l10n.photographySlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 450,
                  height: 410,
                  child: Image.asset('assets/slides/photography.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildSoftwareSlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/us_background.png'),
      Padding(
        padding: const EdgeInsets.all(60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  context.l10n.softwareSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 450,
                  height: 410,
                  child: Image.asset('assets/slides/software.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildGetHelpSlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/us_background.png'),
      Center(
        child: Html(
          shrinkWrap: true,
          data: context.l10n.gethelpSlideBody,
          style: {
            'body': Style(
              color: Colors.white,
              fontSize: FontSize(24),
            ),
          },
          onAnchorTap: (url, _, __) => launchUrlString(url!),
        ),
      ),
    ],
  );
}
