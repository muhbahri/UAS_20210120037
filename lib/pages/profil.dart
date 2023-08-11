import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFEDEDED),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            backgroundColor: const Color(0xFFEDEDED),
            automaticallyImplyLeading: true,
            centerTitle: true,
            elevation: 0,
            title: Text(
              "Profil Anda",
              style: TextStyle(
                  color: Color(0xFF4B39EF), fontWeight: FontWeight.w500),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFEDEDED),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/logo/logo-profil-kosong.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Redmi Note 9 (Perangkat)',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF4B39EF),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 22,
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        popUpTransparan(context);
                                      },
                                      icon: const FaIcon(
                                        FontAwesomeIcons.google,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                      label: Text("Masuk dengan Google",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.normal)),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF4B39EF),
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 15, 0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(1, -1),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                            child: FaIcon(
                              FontAwesomeIcons.pen,
                              color: Color(0xFF4B39EF),
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(23, 15, 20, 0),
                  child: Center(
                    child: Text(
                      'Pengaturan Perangkat',
                      style: TextStyle(
                        color: Color(0x6F14181B),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: screenWidth,
                          height: 50,
                          margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Umum',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.blueGrey,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: screenWidth,
                          height: 50,
                          margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Antarmuka',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.blueGrey,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: screenWidth,
                          height: 50,
                          margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Pembersihan Lanjutan',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.blueGrey,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: screenWidth,
                          height: 50,
                          margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Berkas Pribadi',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.blueGrey,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(23, 15, 20, 0),
                  child: Center(
                    child: Text(
                      'Tentang',
                      style: TextStyle(
                        color: Color(0x6F14181B),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: screenWidth,
                        height: 50,
                        margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Pusat Bantuan',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.blueGrey,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth,
                        height: 50,
                        margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Ketentuan dan Kebijakan Privasi',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.blueGrey,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth,
                        height: 50,
                        margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Info Aplikasi',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.blueGrey,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
