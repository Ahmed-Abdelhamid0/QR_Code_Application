import 'package:flutter/material.dart';
import 'package:qr_code/screens/read_qr.dart';
import 'package:qr_code/screens/scanner_qr.dart';

class qrCodeProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'QR Scanner',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            ElevatedButton(

               onPressed: ()
               {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CreateScreen()));
                  print('created');
               },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
               child: Text(
                 'Create QR Code'
               ),
           ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(

              onPressed: ()
              {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanScreen()));
                   // print('Read QR Code');
              },

              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              child: Text(
                  'Read QR Code'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
