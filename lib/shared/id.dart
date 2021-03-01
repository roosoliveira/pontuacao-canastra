enum TypeID { EMAIL, NAME }

abstract class ID<T> {
  TypeID typeID;

  ID(this.typeID);

  T getID();
}
