--Scalar function with parameter (1)
/*
	CREATE FUNCTION dbo.fn_getClientMail(@clientName VARCHAR(20))
	RETURNS VARCHAR(50)
	AS
	BEGIN
		DECLARE @clientMail VARCHAR(50)
		SELECT @clientMail = client_contact_mail
				FROM Clients 
				WHERE client_name = @clientName
		RETURN @clientMail
	END
*/


--In-line function with parameter (1)
/*
	CREATE FUNCTION dbo.fn_countDevicesByModels(@modelCode INT)
	RETURNS TABLE
	AS
	RETURN SELECT COUNT(device_model_code) devices_available
		FROM Devices
		WHERE device_model_code = @modelCode
*/


--In-line function with parameter (2)
/*
	CREATE FUNCTION dbo.fn_identidyDevicesByModels(@modelCode INT)
	RETURNS TABLE
	AS
	RETURN SELECT device_code, device_serial_number, device_table_modification_status
		FROM Devices
		WHERE device_model_code = @modelCode
*/


--In-line function with parameter (3)
/*
	CREATE FUNCTION dbo.fn_getDeviceModelCode()
	RETURNS TABLE
	AS
	RETURN SELECT MIN(device_model_code) AS min_code 
		FROM Devices
*/	