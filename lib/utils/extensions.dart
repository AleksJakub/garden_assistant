extension StringExtensions on String {
  /// Capitalizes the first letter, leaves the rest unchanged.
  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }
}
