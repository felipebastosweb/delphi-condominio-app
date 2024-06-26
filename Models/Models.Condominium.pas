unit Models.Condominium;

interface

type
  TCondominium = class
    CondominiumId : Integer;
    UserId : Integer;
    Name : String;
    Address : String;
    Email : String;
    Telephone : String;
    Active : Boolean;
    CreationDate : TDatetime;
  end;

type
  TUnit = class
    UnitId : Integer;
    CondominiumId : Integer;
    UserId : Integer;
    Name : String;
    Address : String;
    Email : String;
    Telephone : String;
    Active : Boolean;
    CreationDate : TDatetime;
  end;

type
  TCondominiumManager = class
    CondominiumManagerId : Integer;
    CondominiumId : Integer;
    Name : String;
    Address : String;
    Email : String;
    Telephone : String;
    Active : Boolean;
    StartDate : TDatetime;
    EndDate : TDatetime;
    CreationDate : TDatetime;
  end;

implementation

end.
