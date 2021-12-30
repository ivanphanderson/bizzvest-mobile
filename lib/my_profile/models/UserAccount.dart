import 'dart:ui';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/gestures.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import '../screens/EditingPage.dart';
import '../screens/ProfilePage.dart';
import '../api/api_my_profile.dart';
import '../widgets/main_drawer.dart';

import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

 
class User {

  final String csrfToken;
  final String namaLengkap;
  final String nomorTelepon ;
  final String jenisKelamin;
  final String username;
  final String email;
  final String deskripsi;
  final String statusVerifikasi;
  final String alamat;
  final String photoProfile;



  User(
    {
      required this.namaLengkap, 
      required this.nomorTelepon, 
      required this.jenisKelamin, 
      required this.username, 
      required this.email, 
      required this.deskripsi,
      required this.csrfToken,
      required this.alamat,
      required this.statusVerifikasi,
      required this.photoProfile
      }
      );

  factory User.fromJson(Map<String, dynamic> parsedJson) {
    return User(
      namaLengkap:  parsedJson['nama_lengkap'],
      nomorTelepon: parsedJson["phone_number"],
      jenisKelamin: parsedJson["jenis_kelamin"],
      username: parsedJson["username"],
      email: parsedJson["email"],
      deskripsi: parsedJson["deskripsi_diri"],
      csrfToken: parsedJson["csrf_token"],
      alamat: parsedJson["alamat"],
      statusVerifikasi : parsedJson["status_verifikasi"],
      photoProfile: parsedJson["photo_profile"]

    );
  }



}



