CREATE TABLE TEST1206_COUNTRY (
    OID VARCHAR(8) NOT NULL,
    NAME VARCHAR(60) NOT NULL,
    PRIMARY KEY (OID)
);

CREATE TABLE TEST1206_STATE (
    OID VARCHAR(8) NOT NULL,
    NAME VARCHAR(60) NOT NULL,
    COUNTRY VARCHAR(8) NOT NULL,
    PRIMARY KEY (OID),
    FOREIGN KEY (COUNTRY) REFERENCES TEST1206_COUNTRY (OID)
);

--ALTER TABLE TEST1206_STATE
--ADD FOREIGN KEY (COUNTRY)
--REFERENCES TEST1206_COUNTRY (OID);