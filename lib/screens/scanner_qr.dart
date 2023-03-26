
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:qr_code/qr%20screen/qr_code_screen.dart';

class CreateScreen extends StatefulWidget {


  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  var qrstr='Add Data';
  @override
  Widget build(BuildContext context) {
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
          'Creating QR Code',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            SizedBox(height: 25.0,),
            BarcodeWidget(
                data: qrstr,
               barcode: Barcode.qrCode(),color: Colors.black,
               width: 250.0,
               height: 250.0,
           ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width*.8,
              child: TextField(
                onChanged: (value)
                {
                  setState(() {
                    qrstr=value;
                  });
                },
                decoration: InputDecoration(
                  labelText: ' QR Name',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide(width: 1.5, color: Colors.black,),
                  ),
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(16.0),
                   borderSide: BorderSide(width: 1.5, color: Colors.black,),
                 ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
