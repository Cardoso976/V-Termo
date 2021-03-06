ALTER TABLE Turma
ADD FOREIGN KEY(Cod_Disc) REFERENCES Disciplina(Cod_Disc);
ALTER TABLE Turma
ADD FOREIGN KEY(Cod_Prof) REFERENCES Professores(Cod_Prof);

ALTER TABLE Historico
ADD FOREIGN KEY(MAT) REFERENCES Alunos(MAT);
ALTER TABLE Historico
ADD FOREIGN KEY(Cod_Disc, Cod_Turma, Cod_Prof, Ano) 
REFERENCES Turma(Cod_Disc, Cod_Turma, Cod_Prof, Ano);