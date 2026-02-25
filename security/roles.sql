
CREATE ROLE ReportingUser;

GRANT SELECT ON FactSales TO ReportingUser;
GRANT SELECT ON DimCustomer TO ReportingUser;
GRANT SELECT ON DimProduct TO ReportingUser;
