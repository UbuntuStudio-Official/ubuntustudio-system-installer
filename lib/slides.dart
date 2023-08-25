import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'l10n.dart';

const headerStyle = TextStyle(color: Colors.white, fontSize: 32);
const bodyStyle = TextStyle(color: Colors.white, fontSize: 18);

final installationSlides = [
  _buildWelcomeSlide,
  _buildDesktopSlide,
  _buildBrowserSlide,
  _buildOfficeSlide,
  _buildPhotoSlide,
  _buildMediaSlide,
  _buildSoftwareSlide,
  _buildGetHelpSlide,
];

Widget _buildWelcomeSlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/ub_background.png'),
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

Widget _buildDesktopSlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/ub_background.png'),
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
                  context.l10n.desktopSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 448,
                  height: 304,
                  child: Image.asset('assets/slides/desktop.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}


Widget _buildBrowserSlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/ub_background.png'),
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
                  context.l10n.browseSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 448,
                  height: 304,
                  child: Image.asset('assets/slides/browse.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildOfficeSlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/ub_background.png'),
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
                  context.l10n.officeSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 448,
                  height: 304,
                  child: Image.asset('assets/slides/office.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildMediaSlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/ub_background.png'),
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
                  context.l10n.mediaSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 448,
                  height: 304,
                  child: Image.asset('assets/slides/media.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildPhotoSlide(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/slides/ub_background.png'),
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
                  context.l10n.photosSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 448,
                  height: 304,
                  child: Image.asset('assets/slides/photos.png'),
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
      Image.asset('assets/slides/ub_background.png'),
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
                  width: 448,
                  height: 304,
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
      Image.asset('assets/slides/ub_background.png'),
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
