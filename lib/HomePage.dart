import 'package:flutter/material.dart';
import 'Cards.dart';

import 'package:google_fonts/google_fonts.dart';
import 'Ins.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Instructions \nand Extras",
                    style: GoogleFonts.openSans(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                decoration: BoxDecoration(color: Colors.grey[900]),
              ),
              ListTile(
                  title: Text('Unlock bootloader'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Ins()));
                  }),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                  title: Text('Unbrick tool-(MSM)'),
                  onTap: () async {
                    {
                      const url =
                          'https://forum.xda-developers.com/t/op8t-oos-kb05aa-ba-da-unbrick-tool-to-restore-your-device-to-oxygenos.4180837/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch';
                      }
                    }
                  }),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                  title: Text('GCam'),
                  onTap: () async {
                    {
                      const url = 'https://t.me/gcamgoodcommunity';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch';
                      }
                    }
                  }),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                  title: const Text('About me'),
                  onTap: () async {
                    {
                      const url = 'https://ks4342.github.io/resume';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch';
                      }
                    }
                  }),
              Divider(
                color: Colors.white,
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Available ROMs",
            style: GoogleFonts.merriweatherSans(
              fontSize: 22.0,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Tile(
                ROM: 'Pixel Experience',
                Download: 'https://download.pixelexperience.org/kebab',
                name: 'ChandraChaganti',
                Group: 'https://t.me/pixelexperianceop8p',
              ),
              Tile(
                ROM: 'PEBS',
                Download: 'http://jabhi1276.wixsite.com/pebsofficial',
                name: 'Nils4Real',
                Group: 'https://t.me/HastyOP8',
              ),
              Tile(
                ROM: 'Droid On Time',
                Group: 'https://t.me/DotOS8T',
                name: 'navinshrinivas',
                Download:
                    'https://mega.nz/file/E1ERCaZZ#YHWcZf4MF9dNnxEyYtfAIWvOvQiBUyhGkLMfxH9Bbpw',
              ),
              Tile(
                ROM: 'Shape Shift Os',
                Download:
                    'https://sourceforge.net/projects/shapeshiftos/files/kebab/',
                name: 'xK4m3l',
                Group: 'https://t.me/ssos8series',
              ),
              Tile(
                ROM: 'Pixel Extended',
                Download:
                    'https://sourceforge.net/projects/pixelextended/files/kebab/',
                name: 'Rounak1619',
                Group: 'https://t.me/oneplus8tdevlopment',
              ),
              Tile(
                ROM: 'Fluid',
                Download: 'https://fluidos.me/downloads',
                name: 'Rounak1619',
                Group: 'https://t.me/oneplus8tdevlopment',
              ),
              Tile(
                ROM: 'YAAP',
                Download: 'https://mirror.codebucket.de/yaap/kebab/',
                name: 'san9lungu',
                Group: 'https://t.me/yaapop8',
              ),
              Tile(
                ROM: 'Havoc',
                Download: 'https://download.havoc-os.com/?dir=kebab',
                name: 'Chandu078',
                Group: 'https://t.me/havoc_oneplus8',
              ),
              Tile(
                ROM: 'Lineage Os',
                Download: 'https://download.lineageos.org/kebab',
                name: 'LuK1337',
                Group: 'https://t.me/OnePlus8T9R',
              ),
              Tile(
                ROM: 'crDroid',
                Download: 'https://crdroid.net/kebab',
                name: 'Firebird11',
                Group: 'https://t.me/crdroidop8',
              ),
              Tile(
                ROM: 'PixelBlaster Os',
                Download:
                    'https://sourceforge.net/projects/pixelblaster-os/files/kebab',
                name: 'V3NK4135H ',
                Group: 'https://t.me/OnePlus8T9R',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
