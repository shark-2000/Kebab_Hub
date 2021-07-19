import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Tile extends StatefulWidget {
  Tile(
      {required this.name,
      required this.ROM,
      required this.Download,
      required this.Group});
  final String ROM;
  final String name;
  final String Download;
  final String Group;

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      margin: EdgeInsets.symmetric(vertical: 45.0, horizontal: 40.0),
      child: ExpansionTile(
        leading: Icon(FontAwesomeIcons.android),
        iconColor: Colors.white,
        title: Center(
            child: Text(
          widget.ROM,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        )),
        children: [
          const Divider(
            height: 60,
            thickness: 90,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Column(
                  children: [
                    ListTile(
                      title: Column(
                        children: [
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              TextButton.icon(
                                  onPressed: () async {
                                    {
                                      {
                                        const url =
                                            'https://wiki.pixelexperience.org/devices/kebab/install/';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch';
                                        }
                                      }
                                    }
                                  },
                                  icon: Icon(FontAwesomeIcons.info,
                                      color: Colors.white),
                                  label: Text('How to flash',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ))),
                            ],
                          ),
                          ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: [
                                TextButton.icon(
                                    onPressed: () async {
                                      {
                                        {
                                          final url = widget.Download;
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          } else {
                                            throw 'Could not launch';
                                          }
                                        }
                                      }
                                    },
                                    icon: Icon(FontAwesomeIcons.fileDownload,
                                        color: Colors.white),
                                    label: Text('Downloads',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ))),
                              ]),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: TextButton.icon(
                                    onPressed: () {},
                                    icon: Icon(FontAwesomeIcons.user,
                                        color: Colors.white),
                                    label: Text(
                                        'maintained by' + " @" + widget.name,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ))),
                              ),
                            ],
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              TextButton.icon(
                                  onPressed: () async {
                                    {
                                      {
                                        final url = widget.Group;
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch';
                                        }
                                      }
                                    }
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.telegram,
                                    color: Colors.white,
                                  ),
                                  label: Text('support',
                                      style: TextStyle(
                                        color: Colors.white,
                                      )))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
