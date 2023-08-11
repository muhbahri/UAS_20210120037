import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  _buildCard({
    required Config config,
    Color? backgroundColor = Colors.transparent,
    DecorationImage? backgroundImage,
    double height = 152.0,
  }) {
    return Container(
      height: height,
      width: double.infinity,
      child: Card(
        elevation: 12.0,
        margin: EdgeInsets.only(
            right: marginHorizontal, left: marginHorizontal, bottom: 16.0),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: WaveWidget(
          config: config,
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          size: Size(double.infinity, double.infinity),
          waveAmplitude: 0,
        ),
      ),
    );
  }

  double marginHorizontal = 16.0;

  void _launchUrl(url) async {
    if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFEDEDED),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: const Color(0xFFEDEDED),
            automaticallyImplyLeading: true,
            leading: const Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 2, 20),
                child: FaIcon(
                  FontAwesomeIcons.listUl,
                  color: Color(0xFF181818),
                  size: 20,
                ),
              ),
            ),
            title: Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 80,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.transparent,
                            width: 1,
                          ),
                        ),
                        child: Icon(
                          Icons.access_time_filled_rounded,
                          color: Color(0xFF4B39EF),
                          size: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/directory');
                        },
                        child: Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                          child: Icon(
                            Icons.folder_outlined,
                            color: Color(0xFF4B39EF),
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: const [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 24, 13),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              ),
            ],
            centerTitle: true,
            elevation: 0,
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.max, children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                child: Column(
                  children: [
                    SizedBox(
                      width: screenWidth,
                      height: 140,
                      child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            const SizedBox(),
                            _buildCard(
                              backgroundColor: Colors.white,
                              config: CustomConfig(
                                gradients: const [
                                  [Color(0xFF4B39EF), Color(0xAB4B39EF)],
                                  [Color(0xFF4B39EF), Color(0xAB4B39EF)],
                                  [Color(0xFF4B39EF), Color(0xAB4B39EF)],
                                  [Color(0xFF4B39EF), Color(0xAB4B39EF)]
                                ],
                                durations: [35000, 19440, 10800, 6000],
                                heightPercentages: [0.20, 0.23, 0.25, 0.30],
                                gradientBegin: Alignment.bottomLeft,
                                gradientEnd: Alignment.topRight,
                              ),
                            ),
                            const Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.folder_shared_sharp,
                                  color: Color(0xFFEDEDED),
                                  size: 60,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ruang Tersedia',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      '86.15 GB dari 128 GB terpakai',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Folder Saya',
                      style: TextStyle(
                        color: Color(0x6F14181B),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Lebih banyak >',
                      style: TextStyle(
                        color: Color(0x6F14181B),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 6,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 5,
                                  )
                                ],
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF4B39EF),
                                    Color(0xAB4B39EF)
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(0, -1),
                                  end: AlignmentDirectional(0, 1),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.photo_library_rounded,
                                  color: Color(0xFFEDEDED),
                                  size: 40,
                                ),
                                onPressed: () {
                                  popUpTransparan(context);
                                },
                                iconSize: 40,
                                padding: EdgeInsets.all(0),
                                alignment: Alignment.center,
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 6,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 5,
                                  )
                                ],
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF4B39EF),
                                    Color(0xAB4B39EF)
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(0, -1),
                                  end: AlignmentDirectional(0, 1),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.videocam_rounded,
                                  color: Color(0xFFEDEDED),
                                  size: 40,
                                ),
                                onPressed: () {
                                  popUpTransparan(context);
                                },
                                iconSize: 40,
                                padding: EdgeInsets.all(0),
                                alignment: Alignment.center,
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 6,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 5,
                                  )
                                ],
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF4B39EF),
                                    Color(0xAB4B39EF)
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(0, -1),
                                  end: AlignmentDirectional(0, 1),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.content_paste_rounded,
                                  color: Color(0xFFEDEDED),
                                  size: 40,
                                ),
                                onPressed: () {
                                  popUpTransparan(context);
                                },
                                iconSize: 40,
                                padding: EdgeInsets.all(0),
                                alignment: Alignment.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 6,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 5,
                                  )
                                ],
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF4B39EF),
                                    Color(0xAB4B39EF)
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(0, -1),
                                  end: AlignmentDirectional(0, 1),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.music_note_rounded,
                                  color: Color(0xFFEDEDED),
                                  size: 40,
                                ),
                                onPressed: () {
                                  popUpTransparan(context);
                                },
                                iconSize: 40,
                                padding: EdgeInsets.all(0),
                                alignment: Alignment.center,
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 6,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 5,
                                  )
                                ],
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF4B39EF),
                                    Color(0xAB4B39EF)
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(0, -1),
                                  end: AlignmentDirectional(0, 1),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.download_rounded,
                                  color: Color(0xFFEDEDED),
                                  size: 40,
                                ),
                                onPressed: () {
                                  popUpTransparan(context);
                                },
                                iconSize: 40,
                                padding: EdgeInsets.all(0),
                                alignment: Alignment.center,
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 6,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 5,
                                  )
                                ],
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF4B39EF),
                                    Color(0xAB4B39EF)
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(0, -1),
                                  end: AlignmentDirectional(0, 1),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.android_rounded,
                                  color: Color(0xFFEDEDED),
                                  size: 40,
                                ),
                                onPressed: () {
                                  popUpTransparan(context);
                                },
                                iconSize: 40,
                                padding: EdgeInsets.all(0),
                                alignment: Alignment.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              const Divider(
                thickness: 1,
                indent: 40,
                endIndent: 40,
                color: Color(0xFF4B39EF),
              ),
              const Align(
                alignment: AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
                  child: Text(
                    'Terbaru',
                    style: TextStyle(
                      color: Color(0x6F14181B),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: screenWidth * 0.9,
                      height: 70,
                      margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 10,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                            spreadRadius: 5,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 15, 0),
                                  child: Icon(
                                    Icons.videocam_rounded,
                                    color: Color(0xFF4B39EF),
                                    size: 35,
                                  ),
                                ),
                                Text(
                                  'Video',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '2 File ditambahkan',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.blueGrey,
                                  size: 24,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.9,
                      height: 70,
                      margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 10,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                            spreadRadius: 5,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 15, 0),
                                  child: Icon(
                                    Icons.photo_library_rounded,
                                    color: Color(0xFF4B39EF),
                                    size: 35,
                                  ),
                                ),
                                Text(
                                  'Photo',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '5 File ditambahkan',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.blueGrey,
                                  size: 24,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.9,
                      height: 70,
                      margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 10,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                            spreadRadius: 5,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 15, 0),
                                  child: Icon(
                                    Icons.download_rounded,
                                    color: Color(0xFF4B39EF),
                                    size: 35,
                                  ),
                                ),
                                Text(
                                  'Download',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '1 File ditambahkan',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.blueGrey,
                                  size: 24,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

void popUpTransparan(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      Future.delayed(Duration(milliseconds: 800), () {
        Navigator.of(context).pop();
      });

      return const AlertDialog(
        title: Text(
          'Maaf, Fitur ini belum dikembangkan',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        content: SingleChildScrollView(),
      );
    },
  );
}
