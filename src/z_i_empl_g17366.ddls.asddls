@AbapCatalog.sqlViewName: 'ZDV_EMP_G17366'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee - CDS - G17366'
@Metadata.ignorePropagatedAnnotations: true
define root view z_i_empl_g17366
  as select from zempl_tabla1jj
{
  key e_number     as ENumber,
      e_name       as EName,
      e_department as EDepartment,
      status       as Status,
      job_code     as JobCode,
      job_title    as JobTitle,
      email        as Email,
      start_date   as StartDate,
      end_date     as EndDate
}
