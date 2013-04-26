part of specification;

typedef bool Predicate<T>(T candidate);

class PredicateSpecification<T> extends Specification<T> {
  
  final Predicate<T> _predicate;
  
  PredicateSpecification(this._predicate);
  
  bool isSatisfiedBy(T candidate) => _predicate(candidate);
  
  int get hashCode => _predicate.hashCode;
  
  bool operator ==(other) {
    if (identical(this, other)) return true;
    if (other is PredicateSpecification<T> == false) return false;
    return this._predicate == (other as PredicateSpecification<T>)._predicate;
  }
}