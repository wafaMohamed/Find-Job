import 'package:dio/dio.dart';
import 'package:find_job_amit/data_layer/repositry/endpoints.dart';


//Dio Helper That's Connect and Talk to API.
class DioHelper {
  static late Dio dio;
  //Here The Initialize of Dio and Start Connect to API Using baseUrl.
  static init() {
    dio = Dio(
      BaseOptions(
        //Here the URL of API.
        baseUrl: EndPoints.baseUrl,
        receiveDataWhenStatusError: true,
        //Here we Put The Headers Needed in The API.
        headers: {
          'Content-Type': 'application/json',
          'lang':getLang()
        },
      ),
    );
  }

  //This Function to call API and get Some Data based on url(End Points) and Headers needed in API to get the Specific Data.
  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? queryParameters,
    ProgressCallback? onReceiveProgress,
    String? token,
  }) async {
    try {
      dio.options.headers = {
        'Authorization': 'Bearer ${token ?? ''}',
        'lang':getLang()

      };
      print("///////////lang//////////");
      print(getLang());
      print("//////////lang///////////////////");
      final Response response = await dio.get(
        url,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
  static Future<Response> getRequest({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    ProgressCallback? onReceiveProgress,
    String? token,
  }) async {
    try {
      dio.options.headers = {
        'Authorization': 'Bearer ${token ?? ''}',
        'lang':getLang()

      };
      final Response response = await dio.request(
        url,
        data: body,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  //This Function that's Used To Post Data to API based on URL(End Points) and Headers.
  static Future<Response> postData({
    required String url,
    required  data,
    //bool files = false,
    String? token,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      dio.options.headers =
      {
        'Authorization': 'Bearer ${token ?? ''}',
        'Content-Type': 'application/json',
        'lang':getLang()


      };
      final Response response = await dio.post(
        url,
        data: data,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  //This Function That's Used to Update Some Date based on URL(End Points) and Send what's you need to Update as Map.
  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
    String? token,
    //bool files = false,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      dio.options.headers = {
        'Authorization': 'Bearer ${token ?? ''}',
        'lang':getLang()

      };

      final Response response = await dio.put(
        url,
        data: data,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }

  }

  //This Function That's Used to Update Some Date based on URL(End Points) and Send what's you need to Update as Map.
  static Future<Response> patchData({
    required String url,
    required Map<String, dynamic> data,
    required String token,
    bool files = false,
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
      'lang':getLang()

    };
    return await dio.patch(
      url,
      data: data,
    );
  }

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? data,
    String? token,
  }) async {
    try {
      dio.options.headers = {
        'Authorization': 'Bearer $token',
        'lang':getLang()

      };
      final Response response = await dio.delete(
        url,
        data: data,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static getLang() {}
}

// class DioHelper {
//   static late Dio dio;
//
//   static init() {
//     dio = Dio(
//       BaseOptions(
//         baseUrl: EndPoints.baseUrl,
//       ),
//     );
//   }
// }


/*import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'endpoints.dart';

class DioHelper {
  static late Dio dio;
  static String? token;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        headers: {
          'Authorization': 'Bearer ${token ?? ''}',
          'Accept': 'application/json',
          'Content-Type': "application/json",
          'lang': 'en',
        },
      ),
    );
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: false,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await dio.get(
        url,
        queryParameters: queryParameters,
      );
      print(response.data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> postData(
      {required String url,
      required dynamic data,
      String? token,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      dio.options.headers = {'Authorization': 'Bearer ${token ?? ''}'};
      dio.options.contentType = Headers.formUrlEncodedContentType;
      final Response response = await dio.post(
        url,
        data: data,
        options: Options(
            followRedirects: false,
            validateStatus: (status) => (status ?? 0) < 500,
            contentType: "application/json"),
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
      );
      print(response.data);
      return response;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? data,
    required String token,
  }) async {
    try {
      dio.options.headers = {'Authorization': 'Bearer $token'};
      final Response response = await dio.delete(
        url,
        data: data,
      );
      return response;
    } catch (e) {
      throw Exception('Failed to delete data: $e');
    }
  }
}
// class DioHelper {
//   static late Dio dio;
//
//   static init() {
//     dio = Dio(
//       BaseOptions(
//         baseUrl: EndPoints.baseUrl,
//       ),
//     );
//   }
// }
*/