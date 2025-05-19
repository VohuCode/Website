import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Components {
  static Card topicTitledCard({
    required Icon icon,
    required String title,
    required List<Widget> itemsList,
  }) {
    return Card(
      elevation: 10,
      shadowColor: Colors.grey,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              // spacing: 20,
              children: [
                Expanded(flex: 2, child: icon),
                Expanded(
                  flex: 10,
                  child: AutoSizeText(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: itemsList,
            ),
          ],
        ),
      ),
    );
  }

  static Card titledHyperLink({
    required String title,
    required String text1,
    required String linkText,
    required String link,
    required String text2,
    required Icon icon,
  }) {
    return Card(
      elevation: 10,
      shadowColor: Colors.grey,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 20,
          textBaseline: TextBaseline.ideographic,
          children: <Widget>[
            Expanded(flex: 2, child: FittedBox(child: icon)),
            Expanded(
              flex: 20,
              // TODO make hyperlink titled method
              child: Wrap(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AutoSizeText(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                    minFontSize: 10,
                    maxLines: 1 + 6,
                  ),
                  AutoSizeText(
                    text1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                    minFontSize: 10,
                    maxLines: 1 + 6,
                  ),
                  GestureDetector(
                    child: AutoSizeText(
                      linkText,
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                      minFontSize: 10,
                      maxLines: 1 + 6,
                    ),
                    onTap: () => launchUrlString(link),
                  ),
                  AutoSizeText(
                    text2,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                    minFontSize: 10,
                    maxLines: 1 + 6,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Card hyperLinkCard({
    required String title,
    required String link,
    required Icon icon,
  }) {
    return Card(
      elevation: 10,
      shadowColor: Colors.grey,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon on the left
            FittedBox(child: icon),

            const SizedBox(width: 20), // replaces spacing:20
            // Text on the right
            Flexible(
              // lets the text shrink/wrap to avoid overflow
              child: GestureDetector(
                onTap: () => launchUrlString(link),
                child: AutoSizeText(
                  title,
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                  minFontSize: 10,
                  maxLines: 2, // allow up to 2 lines
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Card horizontalCodingCard({
    required Icon icon,
    required String title,
    required codingCard,
  }) {
    return Card(
      elevation: 10,
      shadowColor: Colors.grey,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          spacing: 20,
          textBaseline: TextBaseline.ideographic,
          children: <Widget>[
            Expanded(flex: 2, child: FittedBox(child: icon)),
            Flexible(
              flex: 10,
              child: AutoSizeText(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
                minFontSize: 10,
                maxLines: 1 + 6,
              ),
            ),
            Flexible(flex: 10, child: codingCard),
          ],
        ),
      ),
    );
  }

  static Card titledCodingCardElevated(Widget titledCodingCard, Icon icon) {
    return Card(
      elevation: 10,
      shadowColor: Colors.grey,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          spacing: 20,
          textBaseline: TextBaseline.ideographic,
          children: <Widget>[
            Expanded(flex: 2, child: FittedBox(child: icon)),
            Expanded(flex: 20, child: titledCodingCard),
          ],
        ),
      ),
    );
  }

  static Column titledCodingCard(String title, String code) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AutoSizeText(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.w600,
          ),
          minFontSize: 10,
          maxLines: 2 + 6,
        ),
        codingCard(code),
      ],
    );
  }

  static Widget codingCard(String textCode) {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.grey[400],
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: SelectableText(textCode, style: TextStyle(fontSize: 20)),
      ),
    );
  }

  static Divider contentDivider() {
    return Divider(color: Colors.grey, height: 20, indent: 20, endIndent: 20);
  }

  static Card optionsCard({
    required String title,
    required String caption,
    required Icon icon,
    required int captionMaxLines,
  }) {
    return Card(
      elevation: 10,
      shadowColor: Colors.grey,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          spacing: 20,
          textBaseline: TextBaseline.ideographic,
          children: <Widget>[
            Expanded(flex: 2, child: FittedBox(child: icon)),
            Expanded(
              flex: 20,
              child: AutoSizeText.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: caption,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                minFontSize: 10,
                maxLines: captionMaxLines,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Card subTitledHorizontalCodingCard({
    required String title,
    required String subtitle,
    required String code,
    required Icon icon,
  }) {
    return Card(
      elevation: 10,
      shadowColor: Colors.grey,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          spacing: 10,
          textBaseline: TextBaseline.ideographic,
          children: <Widget>[
            Expanded(flex: 4, child: FittedBox(child: icon)),
            Expanded(
              flex: 20,
              child: AutoSizeText.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: subtitle,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                minFontSize: 10,
                maxLines: 4,
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              flex: 18,
              child: Card(
                margin: EdgeInsets.zero,
                color: Colors.grey[400],
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SelectableText(code, style: TextStyle(fontSize: 20)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
