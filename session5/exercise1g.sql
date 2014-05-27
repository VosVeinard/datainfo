CREATE TABLE Bestelling(
	isbn int,
	aantal int,
	PRIMARY KEY (isbn),
	FOREIGN KEY (isbn) REFERENCES Boek(isbn) ON DELETE cascade ON UPDATE cascade
);

CREATE  FUNCTION addRow() 
RETURNS TRIGGER
AS $$ BEGIN
	IF((SELECT COUNT(auteur) FROM boek WHERE NEW.auteur = boek.auteur) = 1) THEN
	INSERT INTO Bestelling (isbn, aantal) VALUES (NEW.isbn, 10);
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;


CREATE TRIGGER addRows AFTER INSERT ON boek
FOR EACH ROW EXECUTE PROCEDURE addRow();