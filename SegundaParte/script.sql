
CREATE TABLE Clientes (
idCliente INT PRIMARY KEY,
edad INT,
genero VARCHAR(10),
residencia VARCHAR(50)
);

CREATE TABLE Bancos (
idBanco INT PRIMARY KEY,
noSucursal INT,
ubicacion VARCHAR(50),
TamanioBanco VARCHAR(20)
);

CREATE TABLE Transacciones (
idCliente INT,
idBanco INT,
MontoTransacciones DECIMAL(10,2),
Fecha DATE,
FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
FOREIGN KEY (idBanco) REFERENCES Bancos(idBanco)
);


INSERT INTO Clientes
VALUES
(1, 28, 'Masculino', 'Ciudad de México'),
(2, 45, 'Femenino', 'Guadalajara'),
(3, 36, 'Masculino', 'Monterrey');

INSERT INTO Bancos
VALUES
(1, 10, 'Ciudad de México', 'Bancos Grandes'),
(2, 5, 'Guadalajara', 'Bancos Medianos'),
(3, 2, 'Monterrey', 'Bancos Pequeños');

INSERT INTO Transacciones
VALUES
(1, 1, 1000.00, '2022-02-15'),
(2, 2, 2500.00, '2022-03-01'),
(3, 3, 500.00, '2022-02-28');

SELECT *
FROM Transacciones T
JOIN Bancos B ON T.idBanco = B.idBanco
WHERE B.TamanioBanco = 'Bancos Grandes' AND T.Fecha > '2021-01-01'
ORDER BY T.Fecha DESC;

