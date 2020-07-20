import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              children: <Widget>[
                Image.network(
                    'https://4.bp.blogspot.com/-XCgYxKWRi6Q/WTlI8eTFEoI/AAAAAAAAC9c/1BltvqRE8iMoghmBBDv_VDtS2EGduGIAgCLcB/s1600/KISS%2BNew%2BYork%2B-%2BLogo_fundo%2Bbranco.png'),
                Container(
                  height: 50,
                ),
                TextFormField(
                    decoration: const InputDecoration(hintText: 'E-mail'),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    validator: (email) {
                      return null;
                    }),
                TextFormField(
                    decoration: const InputDecoration(hintText: 'Senha'),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    obscureText: true,
                    validator: (pass) {
                      if (pass.isEmpty || pass.length < 6) {
                        return 'Senha inválida';
                        return null;
                      }
                    }),
                const SizedBox(
                  height: 18,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: const Text('Esqueci minha senha'),
                  ),
                ),
                SizedBox(
                  height: 44,
                  child: RaisedButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 156, 27, 49),
                    child: const Text(
                      'ENTRAR',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    textColor: Colors.white,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
