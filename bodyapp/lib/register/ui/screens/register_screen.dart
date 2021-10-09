import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 120,
                  height: 120,
                  decoration: new BoxDecoration(
                    color: Color.fromRGBO(228, 228, 228, 1),
                    shape: BoxShape.circle,
                  ),
                  child: new Icon(
                    Icons.account_circle_rounded,
                    size: 100,
                    color: Colors.teal,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: TextFormField(
                            style:
                                TextStyle(fontSize: 22.0, color: Colors.black),
                            decoration: const InputDecoration(
                              hintText: 'Nome',
                              filled: true,
                              fillColor: Color.fromRGBO(228, 228, 228, 1),
                              border: InputBorder.none,
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.person_outline,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Insira seu nome';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: TextFormField(
                            style:
                                TextStyle(fontSize: 22.0, color: Colors.black),
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              filled: true,
                              fillColor: Color.fromRGBO(228, 228, 228, 1),
                              border: InputBorder.none,
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.email_outlined,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Insira seu e-mail';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: TextFormField(
                            style:
                                TextStyle(fontSize: 22.0, color: Colors.black),
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: 'Senha',
                              filled: true,
                              fillColor: Color.fromRGBO(228, 228, 228, 1),
                              border: InputBorder.none,
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.lock_outline,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Insira sua senha';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: TextField(
                            style:
                                TextStyle(fontSize: 22.0, color: Colors.black),
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: 'Confirme sua Senha',
                              filled: true,
                              fillColor: Color.fromRGBO(228, 228, 228, 1),
                              border: InputBorder.none,
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.lock_outline,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {}
                                },
                                child: Text(
                                  'Criar Conta',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.teal),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,  
                          children:[
                            Image.network('https://3.bp.blogspot.com/-xsCcFCkQtpA/VueeGZN5YEI/AAAAAAAAAuU/j9-DlKELJ6QEjm1aMjFwejO5HJjV_FqQw/s400/google-chrome_49.0.2623.87.png',
                          width: 100,
                          height: 100
                          ),
                            Image.network('https://img.freepik.com/icones-gratis/logotipo-facebook-com-cantos-arredondados_318-9850.jpg?size=338&ext=jpg',
                          width: 100,
                          height: 100
                            )
                          ] 

                        ),
            ],
          ),
        ),
      ),
    ),
  );
  }
}