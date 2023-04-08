import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colors
var accent = Color(0xFF18A5FD);
var accentLight = Color(0xFF66ACE9);
var heading = Color(0xFF0F1641);
var text = Color(0xFFAAAAAA);
var icon = Color(0xFFBBBCCB);
var background = Color(0xFFF8FAFB);
var white = Color(0xFFFFFFFF);
var black = Color(0xFF000000);

//TextStyles
var heading1 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600, color: heading, fontSize: 20);
var heading2 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600, color: heading, fontSize: 18);
var heading3 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600, color: heading, fontSize: 16);
var heading4 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600, color: heading, fontSize: 14);

TextStyle pBold = GoogleFonts.poppins(
    fontSize: 18, fontWeight: FontWeight.w700, color: white);
TextStyle p1 =
    GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: text);
TextStyle p2 =
    GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: text);
TextStyle p3 =
    GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400, color: text);
TextStyle pLocation = GoogleFonts.poppins(
    fontSize: 10, fontWeight: FontWeight.w400, color: white);

TextStyle pPrice = GoogleFonts.poppins(
    fontSize: 16, fontWeight: FontWeight.w600, color: white);

//Gap
var medium = 30.0;
var small = 16.0;
var xsmall = 10.0;
