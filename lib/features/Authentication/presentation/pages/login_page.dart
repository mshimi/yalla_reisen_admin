import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/custom_text_formfield.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/data/models/login_request/login_request.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/presentation/bloc/login_bloc.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {
              showLoadingDialog(context: context);
            },
          );
        },
        listenWhen: (previous, current) =>
            current.maybeMap(loading: (value) => true, orElse: () => false),
        builder: (context, state) {
          return Scaffold(
              body: BlocListener<LoginBloc, LoginState>(
            listenWhen: (previous, current) =>
                current.maybeMap(orElse: () => false, failed: (a) => true),
            listener: (context, state) {
              context.pop();
              state.whenOrNull(
                failed: () {
                  Scaffold.of(context).showBottomSheet(
                    (context) => Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text('Server Error'),
                            Gap(20),
                            ElevatedButton(
                              child: const Text('Close'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    "assests/photos/background.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Container(
                    width: 400,
                    height: MediaQuery.of(context).size.height * 0.7,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(22)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                            child: Hero(
                                tag: "logo",
                                child:
                                    Image.asset("assests/photos/logo2.png"))),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Welcome Back !",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(color: Colors.white),
                              ),
                              SizedBox(
                                height: 70,
                              ),
                              _LoginForm(formKey: _formKey),
                              FilledButton.tonal(
                                  onPressed: () {
                                    if (_formKey.currentState!
                                        .saveAndValidate()) {
                                      String password = _formKey
                                          .currentState!.value["password"];

                                      String email =
                                          _formKey.currentState!.value["email"];

                                      LoginRequest loginRequest = LoginRequest(
                                          email: email, password: password);

                                      BlocProvider.of<LoginBloc>(context).add(
                                          LoginEvent.tryLogin(
                                              loginRequest: loginRequest));
                                    }
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ));
        },
      ),
    );
  }

  void showLoadingDialog({required BuildContext context}) {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  color: Colors.transparent),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        });
  }

  void showFailedDialog({required BuildContext context}) {
    showAdaptiveDialog(
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              children: [Text('Wrong Email or Password')],
            ),
          );
        });
  }
}

class _LoginForm extends StatefulWidget {
  GlobalKey<FormBuilderState> formKey;
  _LoginForm({super.key, required this.formKey});

  @override
  State<_LoginForm> createState() => __LoginFormState();
}

class __LoginFormState extends State<_LoginForm> {
  bool isPasswordHidden = true;
  bool rememberLoign = true;

  @override
  void setState(VoidCallback fn) {
    widget.formKey.currentState!.save();
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: widget.formKey,
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FormBuilderTextField(
              name: "email",
              validator: FormBuilderValidators.compose(
                [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(errorText: "Invalid Email"),
                ],
              ),
              decoration: const InputDecoration(
                label: Text("Email"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            FormBuilderTextField(
              name: "password",
              validator: FormBuilderValidators.compose(
                [
                  FormBuilderValidators.required(),
                ],
              ),
              obscureText: isPasswordHidden,
              decoration: InputDecoration(
                label: const Text("password"),
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordHidden = !isPasswordHidden;
                      });
                    },
                    icon: Icon(isPasswordHidden
                        ? Icons.visibility
                        : Icons.visibility_off)),
              ),
            ),
            FormBuilderCheckbox(
              name: "rememberlogin",
              title: const Text("remember login"),
              initialValue: rememberLoign,
              onChanged: (v) {
                rememberLoign = v!;
              },
            )
          ]),
    );
  }
}
