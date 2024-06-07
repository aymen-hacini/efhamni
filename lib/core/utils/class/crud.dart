
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:efhamnidz/core/utils/class/requeststatus.dart';
import 'package:efhamnidz/functions/checkinternet.dart';
import 'package:http/http.dart' as http;

class CRUD {
  Future<Either<RequestStatus, Map>> postData(String linkapi, Map data) async {
    if (await checkInternet() != null) {
       var response =  await http.post(Uri.parse(linkapi), body: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responsebody = jsonDecode(response.body);
        return Right(responsebody);
      } else {
        return const Left(RequestStatus.serverfailure);
      }
    } else {
      return const Left(RequestStatus.offlinefailure);
    }
  }
}
 