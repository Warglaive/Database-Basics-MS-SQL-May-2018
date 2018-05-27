USE Minions
ALTER TABLE Users 
	ADD CONSTRAINT CHK_UsernameLength CHECK (LEN(Username) >= 3)