//
// import 'package:flutter/material.dart';
// import '../../../controller/data/local/shared.dart';
// import '../../../utilities/enums/enums.dart';
// import '../../widgets/default_form_field.dart';
// import '../../widgets/main_button.dart';
//
// class LoginPage extends StatelessWidget {
//    LoginPage({Key? key}) : super(key: key);
// TextEditingController emailController = TextEditingController(
//     text: MyCache.getString(key: MyCacheKey.email )
// );
// var passwordController = TextEditingController(
//   text: MyCache.getString(key: MyCacheKey.password )
// );
// var formKey =GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Form(
//           key: formKey,
//           child: Column(
//             children: [
//               DefaultFormField(
//                 validator: (value){
//                   if(value!.isEmpty){
//                     return "please enter email";
//                   }
//                 },
//                 controller: emailController,
//                 keyboardType: TextInputType.emailAddress,
//                 labelText: "Email",
//                 height: 100,
//                 hintText: "enter your mail",
//               ),
//               DefaultFormField(
//                 validator: (value){
//                   if(value!.isEmpty){
//                     return "please enter email";
//                   }
//                 },
//                 controller: passwordController,
//                 keyboardType: TextInputType.emailAddress,
//                 labelText: "password",
//                 height: 100,
//                 hintText: "enter your password",
//               ),
//               MainButton(
//                 Onpressed: () {
//                   if(formKey.currentState!.validate()){
//                     MyCache.putString(key: MyCacheKey.email, value: emailController.text);
//                     MyCache.putString(key: MyCacheKey.password, value: passwordController.text);
//
//                   }
//                 },
//                 text: 'Login',
//                 Height: 60,
//               )
//
//
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
