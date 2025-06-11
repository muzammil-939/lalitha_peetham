// phone_utils.dart
class PhoneUtils {
  // Indian phone number validation
  static bool isValidIndianPhoneNumber(String phoneNumber) {
    // Remove all non-digit characters
    String digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Check if it's 10 digits and starts with valid prefixes
    if (digitsOnly.length == 10) {
      // Valid Indian mobile prefixes
      List<String> validPrefixes = [
        '6', '7', '8', '9', // Indian mobile numbers start with 6, 7, 8, or 9
      ];

      return validPrefixes.contains(digitsOnly[0]);
    }

    // Also accept 11 digits starting with 0 (with leading zero)
    if (digitsOnly.length == 11 && digitsOnly.startsWith('0')) {
      String withoutLeadingZero = digitsOnly.substring(1);
      List<String> validPrefixes = ['6', '7', '8', '9'];
      return validPrefixes.contains(withoutLeadingZero[0]);
    }

    return false;
  }

  // Format phone number for display
  static String formatPhoneNumber(String phoneNumber) {
    String digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.length == 10) {
      return '+91 ${digitsOnly.substring(0, 5)} ${digitsOnly.substring(5)}';
    }

    return phoneNumber;
  }

  // Format phone number for Firebase (international format)
  static String formatForFirebase(String phoneNumber) {
    String digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.length == 10) {
      return '+91$digitsOnly';
    } else if (digitsOnly.length == 11 && digitsOnly.startsWith('0')) {
      return '+91${digitsOnly.substring(1)}';
    } else if (digitsOnly.length == 13 && digitsOnly.startsWith('91')) {
      return '+$digitsOnly';
    } else if (phoneNumber.startsWith('+91') && digitsOnly.length == 12) {
      return phoneNumber;
    }

    return '+91$digitsOnly'; // Default fallback
  }

  // Clean phone number (remove formatting)
  static String cleanPhoneNumber(String phoneNumber) {
    return phoneNumber.replaceAll(RegExp(r'\D'), '');
  }

  // Mask phone number for display (e.g., +91 98765 ***21)
  static String maskPhoneNumber(String phoneNumber) {
    String formatted = formatPhoneNumber(phoneNumber);

    if (formatted.startsWith('+91')) {
      String digits = formatted.replaceAll(RegExp(r'\D'), '');
      if (digits.length >= 10) {
        String countryCode = '+91';
        String prefix = digits.substring(2, 5);
        String suffix = digits.substring(8);
        return '$countryCode $prefix ***$suffix';
      }
    }

    return phoneNumber;
  }

  // Validate OTP
  static bool isValidOTP(String otp) {
    return otp.length == 6 && RegExp(r'^\d{6}$').hasMatch(otp);
  }

  // Get country code from phone number
  static String getCountryCode(String phoneNumber) {
    if (phoneNumber.startsWith('+91')) {
      return '+91';
    } else if (phoneNumber.startsWith('91') && phoneNumber.length > 10) {
      return '+91';
    }
    return '+91'; // Default to India
  }

  // Remove country code from phone number
  static String removeCountryCode(String phoneNumber) {
    String digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.startsWith('91') && digitsOnly.length == 12) {
      return digitsOnly.substring(2);
    } else if (digitsOnly.length == 10) {
      return digitsOnly;
    }

    return phoneNumber;
  }
}

// Extension methods for String
extension PhoneNumberExtension on String {
  bool get isValidIndianPhone => PhoneUtils.isValidIndianPhoneNumber(this);
  String get formatPhone => PhoneUtils.formatPhoneNumber(this);
  String get formatForFirebase => PhoneUtils.formatForFirebase(this);
  String get cleanPhone => PhoneUtils.cleanPhoneNumber(this);
  String get maskPhone => PhoneUtils.maskPhoneNumber(this);
  bool get isValidOTP => PhoneUtils.isValidOTP(this);
}
