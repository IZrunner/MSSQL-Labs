USE Phones_Repair_Service;

DECLARE @clientName VARCHAR(20) = 'Mick', @modelCode int = 6;

--Scalar function call + function used in SELECT statement
/*
	SELECT client_name, client_last_name, dbo.fn_getClientMail(@clientName)
	FROM Clients
	WHERE client_name = @clientName;
*/


--In-line function call
--	SELECT devices_available FROM dbo.fn_countDevicesByModels(@modelCode);


--Function used in FROM statement
/*
	SELECT device_code, device_serial_number
	FROM dbo.fn_identidyDevicesByModels(@modelCode);
*/


--Function used in WHERE statement
/*
	SELECT client_last_name 
	FROM Clients
	WHERE client_contact_mail = dbo.fn_getClientMail(@clientName);
*/


--Function used in GROUP BY statement
/*
	SELECT MAX(device_serial_number), device_model_code
	FROM Devices
	INNER JOIN Models
	ON device_model_code = model_code
	GROUP BY device_model_code HAVING MIN(device_code) > (SELECT min_code FROM dbo.fn_getDeviceModelCode());
*/