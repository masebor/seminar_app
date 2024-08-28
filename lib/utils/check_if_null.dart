String checkIfNullString(String? val) {
  if (val != null) {
    return val.toString();
  } else {
    return "";
  }
}

bool checkIfSource(String? src) {
  return (src != null) && (src != '');
}
