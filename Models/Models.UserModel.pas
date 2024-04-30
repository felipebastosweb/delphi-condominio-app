unit Models.UserModel;

interface

type
  TUser = class
    UserId : Integer;
    Username : String;
    Password : String;
    Email : String;
    Telephone : String;
    KeepConnected : Boolean;
    CreationDate : TDatetime;
  end;

type TProfile = class
    ProfileId : Integer;
    CompleteName : String;
    AboutMe : String;
    Address : String;
    Email : String;
    Telephone : String;
  end;

implementation

end.
