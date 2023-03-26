
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:qr_code/qr%20screen/qr_code_screen.dart';

class ScanScreen extends StatefulWidget {


  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  var qrstr='Click The Button Bellow To Start Scan QR Code';
  var height;
  var width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: ()
          {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>qrCodeProject()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Scanning QR Code',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            Text(
                qrstr,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: scanQr,
                child: Text(
                  'Scan Now',
                ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            ),
            SizedBox(width: height,)
          ],
        ),
      ),
    );
  }
  Future<void>scanQr() async
  {
    try{
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'Cancel', true, ScanMode.QR).then((value) {
        setState(() {
          qrstr=value;
        });
      });
    }catch(e){
      setState(() {
        qrstr='unable to reading';
      });
    }
  }
}
