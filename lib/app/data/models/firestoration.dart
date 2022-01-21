abstract class Firestoration<T, E> {
  final String collectionPath = "";
  Future<E> fetch(T id);
  Future<E> add(E obj);
  Future<E> update(T id, E obj);
  Future<E> delete(T id);
}
