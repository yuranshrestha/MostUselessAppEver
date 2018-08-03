codeunit 50116 "InstallDataPackage"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    var
        JustSomeTable: Record "Just Some Table";
    begin
        if JustSomeTable.IsEmpty() then
            navapp.LoadPackageData(Database::"Just Some Table");
    end;
}