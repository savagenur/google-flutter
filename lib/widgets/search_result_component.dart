import 'package:flutter/material.dart';
import 'package:google_flutter/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SearchResultComponent extends StatefulWidget {
  final String link;
  final String text;
  final String linkToGo;
  final String description;
  const SearchResultComponent(
      {Key? key,
      required this.link,
      required this.text,
      required this.linkToGo,
      required this.description})
      : super(key: key);

  @override
  State<SearchResultComponent> createState() => _SearchResultComponentState();
}

class _SearchResultComponentState extends State<SearchResultComponent> {
  bool _showUnderLine = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.link),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () async {
              if (await canLaunchUrlString(widget.linkToGo)) {
                await launchUrlString(widget.linkToGo);
              }
            },
            onHover: (hovering) {
              setState(() {
                _showUnderLine = hovering;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.link,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(
                      0xFF202124,
                    ),
                  ),
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 20,
                    color: blueColor,
                    decoration: _showUnderLine
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          widget.description,
          style: TextStyle(
            fontSize: 14,
            color: primaryColor,
          ),
        ),
        SizedBox(height: 10,),
        
      ],
    );
  }
}
