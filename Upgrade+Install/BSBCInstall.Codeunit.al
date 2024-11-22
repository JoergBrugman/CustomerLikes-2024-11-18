codeunit 50202 "BSBC Install"
{
    Subtype = Install;

    var
        BSBInternalLog: Record "BSB Internal Log";
        ExecContex: ExecutionContext;
        ModuleInfo: ModuleInfo;

    trigger OnInstallAppPerCompany()
    begin
        ExecContex := Session.GetCurrentModuleExecutionContext();
        NavApp.GetCurrentModuleInfo(ModuleInfo);
        BSBInternalLog.InsertNewLog('OnInstallAppPerCompany', ExecContex, ModuleInfo);
    end;

    trigger OnInstallAppPerDatabase()
    begin
        ExecContex := Session.GetCurrentModuleExecutionContext();
        NavApp.GetCurrentModuleInfo(ModuleInfo);
        BSBInternalLog.InsertNewLog('OnInstallAppPerDatabase', ExecContex, ModuleInfo);
    end;
}