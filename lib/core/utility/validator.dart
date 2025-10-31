class Validator {
  static String? phoneValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone Number is required";
    } else if (value.length != 11) {
      return "Enter 11 digits of the phone number";
    } else if (!RegExp(r'^(?:\+964|0)?7\d{9}$').hasMatch(value)) {
      return "Enter a phone number start with 07";
    } else {
      return null;
    }
  }

  static String? validateOtp(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter the OTP";
    }
    if (value.length < 4) {
      return "OTP must be 4 digits";
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'OTP must contain only digits';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Name is required";
    }
    value = value.trim();
    final nameRegex = RegExp(r"^[a-zA-Zà-ÿÀ-ÿ'\-\s]+$");
    if (!nameRegex.hasMatch(value)) {
      return 'Please enter a valid name';
    }
    if (value.length < 2) {
      return 'Name is too short';
    }
    return null;
  }

  static String? validateCard(String? value) {
    if (value == null || value.isEmpty) {
      return 'Card number is required';
    }

    value = value.replaceAll(RegExp(r'\s+'), '');

    if (value.length < 13 || value.length > 19) {
      return 'Card number must be between 13 and 19 digits';
    }

    int prefix1 = int.tryParse(value.substring(0, 1)) ?? 0;
    int prefix2 = int.tryParse(value.substring(0, 2)) ?? 0;
    int prefix4 = int.tryParse(value.substring(0, 4)) ?? 0;

    bool isVisa = prefix1 == 4 && (value.length == 13 || value.length == 16 || value.length == 19);
    bool isMasterCard = (prefix2 >= 51 && prefix2 <= 55) || (prefix4 >= 2221 && prefix4 <= 2720);

    if (!isVisa && !isMasterCard) {
      return 'Not a valid Visa or MasterCard number';
    }

    if (!_passesLuhnCheck(value)) {
      return 'Invalid card number';
    }

    return null;
  }

  static bool _passesLuhnCheck(String number) {
    int sum = 0;
    bool alternate = false;

    for (int i = number.length - 1; i >= 0; i--) {
      int n = int.parse(number[i]);
      if (alternate) {
        n *= 2;
        if (n > 9) n -= 9;
      }
      sum += n;
      alternate = !alternate;
    }

    return sum % 10 == 0;
  }

  static String? validateCVV(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "CVV is required";
    }
    value = value.trim();
    final cvvRegex = RegExp(r'^[0-9]+$');
    if (!cvvRegex.hasMatch(value)) {
      return 'CVV must contain only digits';
    }
    if (value.length < 3 || value.length > 4) {
      return 'CVV must be 3 or 4 digits';
    }
    return null;
  }

  static String? validateExpiryDate(DateTime? value) {
    if (value == null) {
      return 'Please select the expiry date';
    }

    final now = DateTime.now();
    final selectedMonth = DateTime(value.year, value.month);
    final currentMonth = DateTime(now.year, now.month);

    if (selectedMonth.isBefore(currentMonth)) {
      return 'Card has already expired';
    }

    if (value.year > now.year + 15) {
      return 'Invalid expiry date';
    }

    return null;
  }

  static String? validatorDropDownZone(String? value) {
    if (value == null || value.isEmpty) {
      return "Please select a Zone";
    }
    return null;
  }

  static String? validatorDropDownArea(String? value) {
    if (value == null || value.isEmpty) {
      return "Please select an Area";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
      return 'Password must contain lowercase letters';
    }
    if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
      return 'Password must contain uppercase letters';
    }
    if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
      return 'Password must contain numbers';
    }
    if (!RegExp(r'(?=.*[@!%*?&])').hasMatch(value)) {
      return 'Password must contain special characters';
    }
    return null;
  }

  static String? usernameValidation(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Username is required';
    }

    if (value.length < 3) {
      return 'Username must be at least 3 characters long';
    }

    if (value.length > 20) {
      return 'Username must not exceed 20 characters';
    }

    final regex = RegExp(r'^[a-zA-Z0-9_]+$');
    if (!regex.hasMatch(value)) {
      return 'Username can only contain letters, numbers, and underscores';
    }

    return null;
  }
}
