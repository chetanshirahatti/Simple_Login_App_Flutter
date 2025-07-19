class SignupEmailPasswordFailure {
  final String message;

  const SignupEmailPasswordFailure([
    this.message = "An Unknown error occured.",
  ]);

  factory SignupEmailPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignupEmailPasswordFailure('Please enter strong password');
      case 'invalid email':
        return const SignupEmailPasswordFailure('Email is not valid');

      case 'email-already-in-use':
        return const SignupEmailPasswordFailure(
          'An account already exists for that mail',
        );

      case 'operation-not-allowed':
        return const SignupEmailPasswordFailure('Opeation is not allowed');

      case 'user-disabled':
        return const SignupEmailPasswordFailure('User has been disabled');

      default:
        return const SignupEmailPasswordFailure();
    }
  }
}
