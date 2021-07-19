import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(Ins());

class Ins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Instructions for unlocking")),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "warning:THIS WILL ERASE YOUR DATA\n\n For the ROMs without their groups you may join the common group for device.\n\n1.Enable developer options by going to settings-About Phone and then keep tapping build number until a dialogue comes saying developer options are enabled.\n\n2.Go to Developer options by \"Settings>system>Developer options.\"\n\n3.Enable OEM Unlocking.\n\n4.Enable USB debugging.\n\n5. Now be on ur PC.\n\n6.Install latest adb and fastboot drivers.\n\n7. Make a adb folder in local disk of ur PC and paste the fastboot drivers there.\n\n8. Reboot ur OP8T to bootloader after shutting down ur phone by holding power button+ both the volume buttons.\n\n9. Open command prompt in ur PC and connect ur OP8T to ur PC via a USB cable and enter fastboot.\n\n10.Type \"fastboot devces\"\n\n11.If u see a random serial number after executing pt 10 type\"fastboot oem unlock\"\n\n12. It will ask for confirmation press unlock bootloader on phone and voila enjoy ur unlocked bootloader",
              style: GoogleFonts.openSans(
                  fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          )),
        ),
      ),
    );
  }
}
