codeunit 50203 "BSBC Upgrade"
{
    Subtype = Upgrade;

    var
        BSBInternalLog: Record "BSB Internal Log";
        ExecContex: ExecutionContext;
        ModuleInfo: ModuleInfo;

    trigger OnCheckPreconditionsPerCompany()
    begin
        ExecContex := Session.GetCurrentModuleExecutionContext();
        NavApp.GetCurrentModuleInfo(ModuleInfo);
        BSBInternalLog.InsertNewLog('OnCheckPreconditionsPerCompany', ExecContex, ModuleInfo);
    end;

    trigger OnCheckPreconditionsPerDatabase()
    begin
        ExecContex := Session.GetCurrentModuleExecutionContext();
        NavApp.GetCurrentModuleInfo(ModuleInfo);
        BSBInternalLog.InsertNewLog('OnCheckPreconditionsPerDatabase', ExecContex, ModuleInfo);
    end;

    trigger OnUpgradePerCompany()
    begin
        ExecContex := Session.GetCurrentModuleExecutionContext();
        NavApp.GetCurrentModuleInfo(ModuleInfo);
        BSBInternalLog.InsertNewLog('OnUpgradePerCompany', ExecContex, ModuleInfo);
    end;

    trigger OnUpgradePerDatabase()
    begin
        ExecContex := Session.GetCurrentModuleExecutionContext();
        NavApp.GetCurrentModuleInfo(ModuleInfo);
        BSBInternalLog.InsertNewLog('OnUpgradePerDatabase', ExecContex, ModuleInfo);
    end;

    trigger OnValidateUpgradePerCompany()
    begin
        ExecContex := Session.GetCurrentModuleExecutionContext();
        NavApp.GetCurrentModuleInfo(ModuleInfo);
        BSBInternalLog.InsertNewLog('OnValidateUpgradePerCompany', ExecContex, ModuleInfo);
    end;

    trigger OnValidateUpgradePerDatabase()
    begin
        ExecContex := Session.GetCurrentModuleExecutionContext();
        NavApp.GetCurrentModuleInfo(ModuleInfo);
        BSBInternalLog.InsertNewLog('OnValidateUpgradePerDatabase', ExecContex, ModuleInfo);
    end;
}