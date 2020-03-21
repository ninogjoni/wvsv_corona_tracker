class PhoneNumber {
  String number;
  String region_code;

  PhoneNumber(String _number, String _country_code) {
    number = _number;
    //print(_country_code); TODO: Locale always giving back en-US
    region_code = "49";
  }

  String get_number() {
    return number;
  }

  String normalize() {
    if(number.length > 2) {
      if(number[0] == "0" && number[1] == "0") {
        //print("replacing 00 with +");
        number = number.substring(2, number.length);
        number = "+" + number;
      } else if(number[0] == "0") {
        //print("replacing 0 with +<region_code>");
        number = number.substring(1, number.length);
        number = "+" + region_code + number;
      } else if(number[0] == "+") {
        //print("number already in right format");
      } else {
        //print("adding prefix to number");
        number = "+" + region_code + number;
      }
    }
    return number;
  }
}