import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/core/helper/extentions.dart';
import 'package:marketi/features/auth/view_model/cubit/login_cubit/login_cubit.dart';
import 'package:marketi/features/auth/view_model/cubit/login_cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous,current)=>current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: (){
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: Colors.lightBlue,
                ),

              ),
            );
          },
          success: (loginResponse){
            context.pop();
            context.pushNamed(Routes.home);
          },
          error: (error ){
            setupErrorState(context,error);
            print('$error');
          }
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style:TextStyle(
            fontSize: 15,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyle(
                fontSize: 14,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
