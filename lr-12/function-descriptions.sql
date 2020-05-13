--Scalar function (1) with parameter
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


--In-line function (1) with parameter
/*
	CREATE FUNCTION dbo.fn_countDevicesByModels(@modelCode INT)
	RETURNS TABLE
	AS
	RETURN SELECT COUNT(device_model_code) devices_available
		FROM Devices
		WHERE device_model_code = @modelCode
*/


--In-line function (2) with parameter
/*
	CREATE FUNCTION dbo.fn_identidyDevicesByModels(@modelCode INT)
	RETURNS TABLE
	AS
	RETURN SELECT device_code, device_serial_number, device_table_modification_status
		FROM Devices
		WHERE device_model_code = @modelCode
*/


--In-line function (3)
/*
	CREATE FUNCTION dbo.fn_getDeviceModelCode()
	RETURNS TABLE
	AS
	RETURN SELECT MIN(device_model_code) AS min_code 
		FROM Devices
*/	


--Multi-statement function (1)
/*
	CREATE FUNCTION dbo.fn_getAllDevicesByModel(@modelCode INT)
	RETURNS @devicesList TABLE (serial_number VARCHAR(10), model_code INT)
	AS
	BEGIN
		DECLARE @varSerialNumber VARCHAR(10), @varModelCode INT
	
		DECLARE cursorModelsList CURSOR LOCAL DYNAMIC
		FOR 
			SELECT device_serial_number, device_model_code
			FROM Devices
			WHERE device_model_code = @modelCode
	
		OPEN cursorModelsList
	
		FETCH NEXT FROM cursorModelsList 
		INTO @varSerialNumber, @varModelCode

		WHILE @@FETCH_STATUS = 0
			BEGIN
				INSERT INTO @devicesList(serial_number, model_code)
				VALUES(@varSerialNumber, @varModelCode)	
				FETCH NEXT FROM cursorModelsList INTO 
				@varSerialNumber, @varModelCode
			END
		CLOSE cursorModelsList
		DEALLOCATE cursorModelsList
		RETURN
	END
*/