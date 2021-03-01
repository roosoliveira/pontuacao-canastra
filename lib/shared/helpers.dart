bool not(bool value) {
  return !value;
}

bool isNull(value) {
  return value == null;
}

bool isNotNull(value) {
  return not(isNull(value));
}

bool isNotEmpty(dynamic value) {
  if (value is String || value is Iterable) {
    return value.isNotEmpty;
  }
  return isNotNull(value);
}
