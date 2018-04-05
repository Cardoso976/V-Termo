ALTER TABLE Assinante
ADD FOREIGN KEY(RamoID) REFERENCES RamoAtividade(RamoID);
ALTER TABLE Assinante
ADD FOREIGN KEY(TipoAssinanteID) REFERENCES TipoAssinante(TipoAssinanteID);

ALTER TABLE Endereco
ADD FOREIGN KEY(MunicipioID) REFERENCES Municipio(MunicipioID);
ALTER TABLE Endereco
ADD FOREIGN KEY(AssinanteID) REFERENCES Assinante(AssinanteID);

ALTER TABLE Telefone 
ADD FOREIGN KEY(EnderecoID) REFERENCES Endereco(EnderecoID);