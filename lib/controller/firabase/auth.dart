import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hour/view/widgets/snackBars.dart';

class LoginController {
  void register(context, String name, String email, String senha) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: senha)
        .then((res) {
      FirebaseFirestore.instance.collection('users').doc(res.user!.uid).set({
        "name": name,
        "uid": res.user!.uid,
      });

      success(context, 'Usuário cadastrado com sucesso.');
      Navigator.of(context).pop();
      Navigator.pushNamed(
        context,
        'home',
      );
    }).catchError((e) {
      switch (e.code) {
        case 'invalid-email':
          error(context, 'O formato do email é inválido.');
          break;
        case 'email-already-in-use':
          error(context, 'O email já está em uso.');
          break;
        case 'weak-password':
          error(context, 'A senha deve ter no mínimo 6 caracteres.');
          break;
        default:
          error(context, e.code.toString());
      }
    });
  }
  
  Future<UserCredential> signInGoogle(context) async {
  
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    
    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  void login(context, String email, String senha) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: senha)
        .then((res) {
      success(context, 'Usuário autenticado com sucesso.');
      Navigator.of(context).pop();
      Navigator.pushNamed(
        context,
        'home',
      );
    }).catchError((e) {
      switch (e.code) {
        case 'invalid-email':
          error(context, 'O formato do email é inválido.');
          break;
        case 'user-not-found':
          error(context, 'Usuário não encontrado.');
          break;
        case 'wrong-password':
          error(context, 'Senha incorreta.');
          break;
        default:
          error(context, e.code.toString());
      }
    });
  }

  Future<void> forgetPassword(String email, context) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email).then((value) {
      success(context, 'E-mail de recuperação de senha enviado com sucesso');
    }).catchError((e) {
      error(context, 'Ocorreu um erro ao enviar seu e-mail de recuperação de senha: ${e.code.toString()}');
    });

    Navigator.of(context).pop();
    Navigator.pushNamed(
      context,
      'presentation',
    );
  }

  Future<void> logout(context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    if (googleSignIn.clientId != null) {
      await googleSignIn.signOut();
    }
    
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pop();
    Navigator.pushNamed(
      context,
      'presentation',
    );
  }

  Future<dynamic> userLogin() async {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    dynamic res = '';
    await FirebaseFirestore.instance
        .collection('users')
        .where('uid', isEqualTo: uid)
        .get()
        .then(
      (q) {
        if (q.docs.isNotEmpty) {
          res = q.docs[0];
          return res;
        } else {
          res = null;
        }
      },
    ).catchError((e) {
      res = null;
    });

    return res;
  }
}