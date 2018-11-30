CREATE DATABASE agendaDigital;

Use agendaDigital;

Create table Usuario(
	IdUsuario int not null,
	Nome varchar (60),
    Senha varchar (8) not null,
	primary key (IdUsuario)
	);
	

Create table Contato(
	IdContato int not null,
	IdUsuario int not null,
	Nome varchar (60),
	Telefone varchar (14) unique not null,
	primary key (IdContato),
	foreign key (IdUsuario) REFERENCES Usuario (IdUsuario)
	);

Create table Lembrete(
	IdLembrete int not null,
	IdUsuario int not null,
	DescEvento varchar (300),
	primary key (IdLembrete),
	foreign key (IdUsuario) REFERENCES Usuario (IdUsuario)
	);

Create table Atividades(
	IdAtividade int not null,
	DescAtividade varchar (100),
	FoiFeita char (1),
	primary key(IdAtividade)
	);

Create table ListaAtividades(
	IdLista int not null,
    IdAtividade int not null,
	IdUsuario int not null,
	Titulo varchar (60), 
	primary key(IdLista),
	foreign key (IdAtividade) REFERENCES Atividades (IdAtividade),
	foreign key (IdUsuario) REFERENCES Usuario (IdUsuario)
	);
