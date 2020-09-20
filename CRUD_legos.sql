-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE CRUD_Lego
	-- Add the parameters for the stored procedure here
	@SerialNumber int=null,@FirstName varchar(50)=null,@LastName varchar(50)=null,@Division varchar(50)=null,@Age int =null,
	@DOB date=null,@Role varchar(50)=null,@SecondaryRole varchar(50)=null,@Rank varchar(50)=null,@CarrierAssign varchar(50)=null,
	@WeaponOfChoice varchar(50)=null,@QueryCode int =null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--Create--
If(@QueryCode=1)
begin
begin try
Insert into dbo.Legos
(SerialNumber,FirstName,LastName,Division,Age,DOB,Role,SecondaryRole,Rank,CarrierAssign,WeaponOfChoice)
values(@SerialNumber,@FirstName,@LastName,@Division,@Age,@DOB,@Role,@SecondaryRole,@Rank,@CarrierAssign,@WeaponOfChoice)
end try
begin catch

end catch


end;



END
GO
create procedure GetErrorInfo
as select
ERROR_NUMBER() AS ErrorNumber  
    ,ERROR_SEVERITY() AS ErrorSeverity  
    ,ERROR_STATE() AS ErrorState  
    ,ERROR_PROCEDURE() AS ErrorProcedure  
    ,ERROR_LINE() AS ErrorLine  
    ,ERROR_MESSAGE() AS ErrorMessage;  
GO  