// ignore: file_names
class TimeDate {
  String convertIsoTime(DateTime dateTime) {
    var isoTime = "";
    if (dateTime.hour <= 9) {
      if (dateTime.minute <= 9) {
        isoTime = "T0" +
            dateTime.hour.toString() +
            ":0" +
            dateTime.minute.toString() +
            ":06.004Z";
      } else {
        isoTime = "T0" +
            dateTime.hour.toString() +
            ":" +
            dateTime.minute.toString() +
            ":06.004Z";
      }
    } else {
      if (dateTime.minute <= 9) {
        isoTime = "T" +
            dateTime.hour.toString() +
            ":0" +
            dateTime.minute.toString() +
            ":06.004Z";
      } else {
        isoTime = "T" +
            dateTime.hour.toString() +
            ":" +
            dateTime.minute.toString() +
            ":06.004Z";
      }
    }
    return isoTime;
  }

  String convertIsoDate(DateTime dateTime) {
    var isoDate = "";
    if (dateTime.month <= 9) {
      if (dateTime.day <= 9) {
        isoDate = dateTime.year.toString() +
            "-0" +
            dateTime.month.toString() +
            "-0" +
            dateTime.day.toString();
      } else {
        isoDate = dateTime.year.toString() +
            "-0" +
            dateTime.month.toString() +
            "-" +
            dateTime.day.toString();
      }
    } else {
      if (dateTime.day <= 9) {
        isoDate = dateTime.year.toString() +
            "-" +
            dateTime.month.toString() +
            "-0" +
            dateTime.day.toString();
      } else {
        isoDate = dateTime.year.toString() +
            "-" +
            dateTime.month.toString() +
            "-" +
            dateTime.day.toString();
      }
    }
    return isoDate;
  }
}
