INSERT INTO RamoAtividade
    (RamoID, Descricao)
VALUES
    (1, "Indústria"),
    (2, "Comércio"),
    (3, "Serviços");

INSERT INTO TipoAssinante
    (TipoAssinanteID, Descricao)
VALUES
    (1, "Residencial"),
    (2, "Comercial");

INSERT INTO Municipio
    (MunicipioID, Descricao)
VALUES
    (1, "Natal "),
    (2, "João Câmara"),
    (3, "Pelotas");

INSERT INTO Assinante
    (AssinanteID, Nome, RamoID, TipoAssinanteID)
VALUES
    (1, "Roro", 3, 1),
    (2, "Sasa", 2, 2),
    (3, "Vivi", 1, 2),
    (4, "Jojo", 1, 1),
    (5, "Caca", 3, 1);

INSERT INTO Endereco
    (EnderecoID, Descricao, Complemento, Bairro, CEP, MunicipioID, AssinanteID)
VALUES
    (1, " Rua XV Novembro 480", "Casa", "Centro", "11111-111", 2, 1),
    (2, " Rua V Fevereiro 520", "Predio", "Centro", "11111-110", 3, 2),
    (3, " Rua XV Março 365", "Condominio", "Rebelo", "11111-100", 2, 3),
    (4, " Rua X Janeiro 1080", "Casa", "Vilar Marques", "11111-000", 1, 4),
    (5, " Rua XI Janeiro 1070", "Empresa", "Parque Industrial", "11111-000", 1, 4),
    (6, " Rua VII Abril 1500", "Predio", "Vila Barros", "11110-000", 3, 5);

    INSERT INTO Telefone
    (TelefoneID, DDD, NumeroTelefone, EnderecoID)
    VALUES
    (1, "014", "99876-5432", 1),
    (2, "017", "99876-5432", 2),
    (3, "041", "99876-5432", 3),
    (4, "012", "99876-5432", 4),
    (5, "011", "99876-5432", 5),
    (6, "015", "99876-5432", 6);