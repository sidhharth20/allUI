import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherExample extends StatelessWidget {
  const UrlLauncherExample({Key? key}) : super(key: key);

// Function to launch a URL
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  // Future<void> _launchURL(String url) async {
  //   final Uri uri = Uri.parse(url);
  //   if(!await launchUrl(uri, mode: LaunchMode.externalApplication)){
  //     throw 'Cannot launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('URL Launcher Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _launchURL('https://flutter.dev'),
              child: const Text('Open Flutter Website'),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: () => _launchURL('mailto:example@example.com'),
              child: const Text('Send Email'),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: () => _launchURL('tel:+919307695769'),
              child: const Text('Make a Phone Call'),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: () => _launchURL('geo:37.7749,-122.4194'),
              child: const Text('Open Map Location'),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: () => _launchURL('geo:47.7745, -123.5689'),
                child: Text("Send location")),
          ],
        ),
      ),
    );
  }
}

