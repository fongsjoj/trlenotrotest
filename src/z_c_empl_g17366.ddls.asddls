@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee - CDS - G17366 Projection'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity z_c_empl_g17366
  as projection on z_i_empl_g17366
{

  key ENumber     as EmployeeNumber,
      EName       as EmployeeName,
      EDepartment as EmployeeDepartment,
      Status      as EmployeeStatus,
      JobCode     as JobCode,
      JobTitle    as JobTitle,
      Email       as Email,
      StartDate   as StartDate,
      EndDate     as EndDate
}
