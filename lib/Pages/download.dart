import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          DownloadList(),
          DownloadList(),
          DownloadList(),
          DownloadList(),
          DownloadList(),
          DownloadList(),
          DownloadList(),
          DownloadList(),
          DownloadList(),
          DownloadList(),
          DownloadList(),
          DownloadList(),
          DownloadList(),
          DownloadList(),
          DownloadList(),
        ],
      ),
    );
  }

  Container DownloadList() {
    return Container(
          margin: EdgeInsets.fromLTRB(15, 5, 30, 15),
          height: 85,
          child: Row(
            children: [
              Container(
                child: Image.asset('images/theflash.jpg'),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                            child: Text(
                              "The Flash",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                            child: Text(
                              "1 Episode",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 112, 112, 112)),
                            ),
                          ),
                          Text(
                            "Downloading",
                            style: TextStyle(color: Color.fromARGB(255, 47, 123, 255)),
                          ),
                        ],
                      ),
                      Transform.scale(
                        scaleX: -1,
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
  }
}
