class Result {
  final double _bmi;
  final String _result;
  final String _conclusion;

  Result(this._bmi, this._result, this._conclusion);

  String get conclusion => _conclusion;

  String get result => _result;

  String get bmi => _bmi.toStringAsFixed(1);
}
