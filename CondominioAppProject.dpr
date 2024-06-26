program CondominioAppProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  DataModule.MainModule in 'DataModules\DataModule.MainModule.pas' {MainModule: TDataModule},
  Utils.SessionManager in 'Utils.SessionManager.pas',
  Models.UserModel in 'Models\Models.UserModel.pas',
  Forms.AddPhoneForm in 'Forms\Forms.AddPhoneForm.pas' {AddPhoneForm},
  Forms.MaintenanceSupport in 'Forms\Forms.MaintenanceSupport.pas' {MaintenanceSupportForm},
  Forms.MaintenanceList in 'Forms\Forms.MaintenanceList.pas' {MaintenanceListForm},
  Forms.CommonAreaList in 'Forms\Forms.CommonAreaList.pas' {CommonAreaListForm},
  Forms.CommonAreaShow in 'Forms\Forms.CommonAreaShow.pas' {CommonAreaShowForm},
  Forms.CommonAreaCreate in 'Forms\Forms.CommonAreaCreate.pas' {CommomAreaCreateForm},
  Forms.MeetingShow in 'Forms\Forms.MeetingShow.pas' {MeetingShowForm},
  Forms.ConciergeAccessControlNew in 'Forms\Forms.ConciergeAccessControlNew.pas' {AccessControlNewForm},
  Forms.ConciergeGuestAccessCreate in 'Forms\Forms.ConciergeGuestAccessCreate.pas' {GuestAccessNewForm},
  Forms.CondominiumCreate in 'Forms\Forms.CondominiumCreate.pas' {CondominiumCreateForm},
  Forms.CondominiumList in 'Forms\Forms.CondominiumList.pas' {CondominiumListForm},
  Forms.Home in 'Forms\Forms.Home.pas' {HomeForm},
  Forms.Main in 'Forms\Forms.Main.pas' {MainForm},
  Forms.MaintenanceRequest in 'Forms\Forms.MaintenanceRequest.pas' {MaintenanceRequestForm},
  Forms.MeetingAssemblyCreate in 'Forms\Forms.MeetingAssemblyCreate.pas' {AssemblyCreateForm},
  Forms.MeetingSchedule in 'Forms\Forms.MeetingSchedule.pas' {ScheduleMeetingForm},
  Forms.NewsCreate in 'Forms\Forms.NewsCreate.pas' {NewsCreateForm},
  Forms.ReservationList in 'Forms\Forms.ReservationList.pas' {ReservationListForm},
  Forms.SignIn in 'Forms\Forms.SignIn.pas' {SignInForm},
  Forms.SignUp in 'Forms\Forms.SignUp.pas' {SignUpForm},
  Forms.UnitCreate in 'Forms\Forms.UnitCreate.pas' {UnitCreateForm},
  Forms.UnitList in 'Forms\Forms.UnitList.pas' {UnitListForm},
  Forms.ReservationCreate in 'Forms\Forms.ReservationCreate.pas' {ReservationCreateForm},
  Models.Condominium in 'Models\Models.Condominium.pas',
  Forms.RescueAccount in 'Forms\Forms.RescueAccount.pas' {RescueAccountForm},
  Forms.RateList in 'Forms\Forms.RateList.pas' {RateListForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainModule, MainModule);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TSignUpForm, SignUpForm);
  Application.CreateForm(TAddPhoneForm, AddPhoneForm);
  Application.CreateForm(TSignInForm, SignInForm);
  Application.CreateForm(THomeForm, HomeForm);
  Application.CreateForm(TMaintenanceSupportForm, MaintenanceSupportForm);
  Application.CreateForm(TMaintenanceListForm, MaintenanceListForm);
  Application.CreateForm(TCommonAreaListForm, CommonAreaListForm);
  Application.CreateForm(TCommonAreaShowForm, CommonAreaShowForm);
  Application.CreateForm(TCommomAreaCreateForm, CommomAreaCreateForm);
  Application.CreateForm(TMeetingShowForm, MeetingShowForm);
  Application.CreateForm(TAccessControlNewForm, AccessControlNewForm);
  Application.CreateForm(TGuestAccessNewForm, GuestAccessNewForm);
  Application.CreateForm(TCondominiumCreateForm, CondominiumCreateForm);
  Application.CreateForm(TCondominiumListForm, CondominiumListForm);
  Application.CreateForm(TMaintenanceRequestForm, MaintenanceRequestForm);
  Application.CreateForm(TAssemblyCreateForm, AssemblyCreateForm);
  Application.CreateForm(TScheduleMeetingForm, ScheduleMeetingForm);
  Application.CreateForm(TNewsCreateForm, NewsCreateForm);
  Application.CreateForm(TReservationListForm, ReservationListForm);
  Application.CreateForm(TUnitCreateForm, UnitCreateForm);
  Application.CreateForm(TUnitListForm, UnitListForm);
  Application.CreateForm(TReservationCreateForm, ReservationCreateForm);
  Application.CreateForm(TRescueAccountForm, RescueAccountForm);
  Application.CreateForm(TRateListForm, RateListForm);
  Application.Run;
end.
