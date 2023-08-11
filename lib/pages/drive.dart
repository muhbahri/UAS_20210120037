import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrivePage extends StatelessWidget {
  const DrivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0xFFEDEDED),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBar(
              backgroundColor: const Color(0xFFEDEDED),
              automaticallyImplyLeading: true,
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
                        mouseCursor: MouseCursor.defer,
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
                          child: const Icon(
                            Icons.cloud_rounded,
                            color: Color(0xFF4B39EF),
                            size: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: InkWell(
                          onTap: () {},
                          mouseCursor: MouseCursor.defer,
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
                            child: const Icon(
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
              centerTitle: true,
              elevation: 0,
            ),
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 390,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEDEDED),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            "assets/logo/logo-login.png",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 10),
                        child: Text(
                          'Kelola, Bagikan, dan Akses Berkas\nAnda dengan Mudah!\n',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Color(0xFF4B39EF),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'Masuk dan Sambungkan berkasmu dengan Cloud\nuntuk mendapatkan 100 GB penyimpanan Gratis!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Color(0xFF4B39EF),
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 390,
                  height: 171,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEDEDED),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'Masuk dengan :',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              color: Color(0xFF4B39EF),
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: SizedBox(
                              height: 40,
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  _showFeatureDialog(context);
                                },
                                icon: const FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.white,
                                ),
                                label: Text("Google",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF4B39EF),
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

void _showFeatureDialog(BuildContext context) {
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
