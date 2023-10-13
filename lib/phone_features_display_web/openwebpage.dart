import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class OpenWebPAge extends StatefulWidget {
  const OpenWebPAge({super.key});

  @override
  State<OpenWebPAge> createState() => _OpenWebPAgeState();
}

class _OpenWebPAgeState extends State<OpenWebPAge> {
  openWebPage() async {
    var url = "https://blog.logrocket.com";
    await launchUrl(Uri.parse(url));
  }

  calltoNumber() async {
    String telephoneNumber = '8129625023';
    String telephoneUrl = "tel:$telephoneNumber";
    await launchUrl(Uri.parse(telephoneUrl));
  }

  smstoNumber() async {
    String telephoneNumber = '8129625023';
    String telephoneUrl = "sms:$telephoneNumber";
    await launchUrl(Uri.parse(telephoneUrl));
  }

  composeMail() async {
    String email = 'akashvs64731@gmail.com';
    String subject = 'This is a test email';
    String body = 'This is a test email body';

    String emailUrl = "mailto:$email?subject=$subject&body=$body";
    await launchUrl(Uri.parse(emailUrl));
  }

  getMap() async {
    const String lat = "9.9640985";
    const String lng = "76.2833322";
    const String mapUrl = "geo:$lat,$lng";
    await launchUrl(Uri.parse(mapUrl));
  }

  var isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    openWebPage();
                  });
                },
                child: Text("LogRocket")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    calltoNumber();
                  });
                },
                child: Text("Phone App")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    smstoNumber();
                  });
                },
                child: Text("SMS App")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    composeMail();
                  });
                },
                child: Text("Email App")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    getMap();
                  });
                },
                child: Text("Map")),
            CircularProgressIndicator(),
            isLoading ? LinearProgressIndicator() : Text("Data")
          ],
        ),
      ),
    );
  }
}
