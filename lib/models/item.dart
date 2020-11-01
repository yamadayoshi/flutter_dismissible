class Item {
  final String _name;
  final String _description;
  final String _urlImage;

  Item(this._name, this._description, this._urlImage);

  String get name => _name;
  String get urlImage => _urlImage;
  String get description => _description;
}
