// To parse this JSON data, do
//
//     final achados = achadosFromJson(jsonString);

import 'dart:convert';

List<Achado> achadosFromJson(String str) => new List<Achado>.from(json.decode(str).map((x) => Achado.fromJson(x)));

String achadosToJson(List<Achado> data) => json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class Achado {
    int id;
    String descricao;
    int estadoId;
    int categoriaId;
    int localizacaoId;
    DateTime data;
    int utilizadorId;
    dynamic deletedAt;
    DateTime createdAt;
    DateTime updatedAt;
    List<Imagen> imagens;
    Pessoa pessoa;
    Localizacao localizacao;
    Utilizador utilizador;

    Achado({
        this.id,
        this.descricao,
        this.estadoId,
        this.categoriaId,
        this.localizacaoId,
        this.data,
        this.utilizadorId,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.imagens,
        this.pessoa,
        this.localizacao,
        this.utilizador,
    });

    factory Achado.fromJson(Map<String, dynamic> json) => new Achado(
        id: json["id"],
        descricao: json["descricao"],
        estadoId: json["estado_id"],
        categoriaId: json["categoria_id"],
        localizacaoId: json["localizacao_id"],
        data: DateTime.parse(json["data"]),
        utilizadorId: json["utilizador_id"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        imagens: new List<Imagen>.from(json["imagens"].map((x) => Imagen.fromJson(x))),
        pessoa: json["pessoa"] == null ? null : Pessoa.fromJson(json["pessoa"]),
        localizacao: Localizacao.fromJson(json["localizacao"]),
        utilizador: Utilizador.fromJson(json["utilizador"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "descricao": descricao,
        "estado_id": estadoId,
        "categoria_id": categoriaId,
        "localizacao_id": localizacaoId,
        "data": "${data.year.toString().padLeft(4, '0')}-${data.month.toString().padLeft(2, '0')}-${data.day.toString().padLeft(2, '0')}",
        "utilizador_id": utilizadorId,
        "deleted_at": deletedAt,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "imagens": new List<dynamic>.from(imagens.map((x) => x.toJson())),
        "pessoa": pessoa == null ? null : pessoa.toJson(),
        "localizacao": localizacao.toJson(),
        "utilizador": utilizador.toJson(),
    };
}

class Imagen {
    int id;
    String imagem;
    int achadoId;
    DateTime createdAt;
    DateTime updatedAt;

    Imagen({
        this.id,
        this.imagem,
        this.achadoId,
        this.createdAt,
        this.updatedAt,
    });

    factory Imagen.fromJson(Map<String, dynamic> json) => new Imagen(
        id: json["id"],
        imagem: json["imagem"],
        achadoId: json["achado_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "imagem": imagem,
        "achado_id": achadoId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

class Localizacao {
    int id;
    String bairro;
    String rua;
    String postoPolicial;
    int comunaId;
    DateTime createdAt;
    DateTime updatedAt;
    Comuna comuna;

    Localizacao({
        this.id,
        this.bairro,
        this.rua,
        this.postoPolicial,
        this.comunaId,
        this.createdAt,
        this.updatedAt,
        this.comuna,
    });

    factory Localizacao.fromJson(Map<String, dynamic> json) => new Localizacao(
        id: json["id"],
        bairro: json["bairro"],
        rua: json["rua"],
        postoPolicial: json["posto_policial"],
        comunaId: json["comuna_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        comuna: Comuna.fromJson(json["comuna"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "bairro": bairro,
        "rua": rua,
        "posto_policial": postoPolicial,
        "comuna_id": comunaId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "comuna": comuna.toJson(),
    };
}

class Comuna {
    int id;
    String designacao;
    int municipioId;
    DateTime createdAt;
    DateTime updatedAt;
    Municipio municipio;

    Comuna({
        this.id,
        this.designacao,
        this.municipioId,
        this.createdAt,
        this.updatedAt,
        this.municipio,
    });

    factory Comuna.fromJson(Map<String, dynamic> json) => new Comuna(
        id: json["id"],
        designacao: json["designacao"],
        municipioId: json["municipio_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        municipio: Municipio.fromJson(json["municipio"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "designacao": designacao,
        "municipio_id": municipioId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "municipio": municipio.toJson(),
    };
}

class Municipio {
    int id;
    String designacao;
    int provinciaId;
    DateTime createdAt;
    DateTime updatedAt;
    Provincia provincia;

    Municipio({
        this.id,
        this.designacao,
        this.provinciaId,
        this.createdAt,
        this.updatedAt,
        this.provincia,
    });

    factory Municipio.fromJson(Map<String, dynamic> json) => new Municipio(
        id: json["id"],
        designacao: json["designacao"],
        provinciaId: json["provincia_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        provincia: Provincia.fromJson(json["provincia"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "designacao": designacao,
        "provincia_id": provinciaId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "provincia": provincia.toJson(),
    };
}

class Provincia {
    int id;
    String designacao;
    dynamic createdAt;
    dynamic updatedAt;

    Provincia({
        this.id,
        this.designacao,
        this.createdAt,
        this.updatedAt,
    });

    factory Provincia.fromJson(Map<String, dynamic> json) => new Provincia(
        id: json["id"],
        designacao: json["designacao"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "designacao": designacao,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}

class Pessoa {
    int id;
    String nome;
    int generoId;
    String idade;
    String altura;
    String pai;
    String mae;
    String outrasInformacoes;
    int achadoId;
    dynamic deletedAt;
    DateTime createdAt;
    DateTime updatedAt;

    Pessoa({
        this.id,
        this.nome,
        this.generoId,
        this.idade,
        this.altura,
        this.pai,
        this.mae,
        this.outrasInformacoes,
        this.achadoId,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
    });

    factory Pessoa.fromJson(Map<String, dynamic> json) => new Pessoa(
        id: json["id"],
        nome: json["nome"],
        generoId: json["genero_id"],
        idade: json["idade"],
        altura: json["altura"],
        pai: json["pai"],
        mae: json["mae"],
        outrasInformacoes: json["outras_informacoes"],
        achadoId: json["achado_id"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "genero_id": generoId,
        "idade": idade,
        "altura": altura,
        "pai": pai,
        "mae": mae,
        "outras_informacoes": outrasInformacoes,
        "achado_id": achadoId,
        "deleted_at": deletedAt,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    };
}

class Utilizador {
    int id;
    String nome;
    dynamic foto;
    String email;
    int tipoUtilizadorId;
    dynamic emailVerifiedAt;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;

    Utilizador({
        this.id,
        this.nome,
        this.foto,
        this.email,
        this.tipoUtilizadorId,
        this.emailVerifiedAt,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    factory Utilizador.fromJson(Map<String, dynamic> json) => new Utilizador(
        id: json["id"],
        nome: json["nome"],
        foto: json["foto"],
        email: json["email"],
        tipoUtilizadorId: json["tipo_utilizador_id"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "foto": foto,
        "email": email,
        "tipo_utilizador_id": tipoUtilizadorId,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
    };
}
