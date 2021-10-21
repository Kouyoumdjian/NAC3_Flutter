class Sisoperacional {
  final String id;
  final String name;

  Sisoperacional(this.id, this.name);

  @override
  int get hashCode => id.hashCode ^ name.hashCode;

  @override
  bool operator ==(other) =>
      other is Sisoperacional && other.id == id && other.name == name;
}
