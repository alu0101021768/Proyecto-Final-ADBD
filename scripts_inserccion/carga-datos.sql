USE `proyecto`;
-- -----------------------------------------------------
-- Table `proyecto`.`alumno`
-- -----------------------------------------------------
insert into alumno(alu, dni, nombre)
values(
        "alu0101103181",
        "42242242N",
        "Pablo Molina Martinez"
    ),
    (
        "alu0101021768",
        "54549922Y",
        "Nestor Torres Diaz"
    ),
    (
        "alu0101046856",
        "24532345T",
        "Chesen Castilla Gil"
    ),
    (
        "alu0101119137",
        "11111111Y",
        "Andrea Hernandez Martin"
    ),
    (
        "alu0001112223",
        "19057366A",
        "Pedro Morales Garcia"
    );
-- -----------------------------------------------------
-- Table `proyecto`.`profesor`
-- -----------------------------------------------------
insert into profesor(dni, nombre, area)
values(
        "56902239D",
        "Pepe Torres Gil",
        "Analisis Matematico"
    ),
    (
        "27030510J",
        "Juan",
        "Ingenieria del Software"
    ),
    (
        "68736785C",
        "Maria Gil",
        "Inteligencia Artificial"
    ),
    (
        "60136046Q",
        "Isabel Sanchez",
        "Ingenieria de Sistemas"
    ),
    (
        "34606072L",
        "Jonas Phillippe Luke",
        "Seguridad"
    ),
    (
        "56519869Z",
        "Andres Gil Gil",
        "Inteligencia Artificial"
    ),
    (
        "40843415S",
        "Laura Gil",
        "Ingenieria del Software"
    ),
    (
        "26788263W",
        "Michael Jackson Moonwalk",
        "Seguridad"
    );
-- -----------------------------------------------------
-- Table `proyecto`.`empresa`
-- -----------------------------------------------------
insert into empresa(nif, nombre)
values("54264430R", "Endesa"),
    ("30837100B", "Dorada Canarias");
-- -----------------------------------------------------
-- Table `proyecto`.`tfg`
-- -----------------------------------------------------
insert into tfg(
        fecha_ini,
        tema,
        titulacion,
        empresa_nif,
        profesor_id
    )
values(
        "2016-10-22",
        "Seguridad",
        "Informatica",
        NULL,
        5
    ),
    (
        "2018-12-17",
        "BlockChain",
        "Informatica",
        NULL,
        4
    ),
    (
        "2020-01-6",
        "Desarrollo de Aplicaciones",
        "Informatica",
        "54264430R",
        7
    );
-- -----------------------------------------------------
-- Table `proyecto`.`tfm`
-- -----------------------------------------------------
insert into tfm(
        fecha_ini,
        tema,
        titulacion,
        empresa_nif,
        profesor_id
    )
values(
        "2018-07-12",
        "Deep Learning",
        "Informatica",
        NULL,
        3
    ),
    (
        "2019-9-19",
        "Aprendizaje Automatico",
        "Informatica",
        "30837100B",
        5
    );
-- -----------------------------------------------------
-- Table `proyecto`.`alumno_has_tfg`
-- -----------------------------------------------------
insert into alumno_has_tfg(alumno_alu, tfg_id, presenta, realiza, propone)
values("alu0101103181", 1, 0, 0, 1),
    ("alu0101021768", 2, 1, 1, 0),
    ("alu0101046856", 3, 0, 1, 0);
-- -----------------------------------------------------
-- Table `proyecto`.`alumno_has_tfm`
-- -----------------------------------------------------
insert into alumno_has_tfm(alumno_alu, tfm_id, presenta, realiza, propone)
values("alu0101119137", 1, 0, 0, 1),
    ("alu0001112223", 2, 1, 1, 1);
-- -----------------------------------------------------
-- Table `proyecto`.`profesor_tutoriza_tfg`
-- -----------------------------------------------------
insert into profesor_tutoriza_tfg (profesor_id, tfg_id, curso)
values(3, 1, "2016"),
    (2, 1, "2016"),
    (1, 2, "2019"),
    (2, 2, "2019"),
    (3, 3, "2020");
-- -----------------------------------------------------
-- Table `proyecto`.`profesor_tutoriza_tfm`
-- -----------------------------------------------------
insert into profesor_tutoriza_tfm(profesor_id, tfm_id, curso)
values(5, 2, "2018"),
    (3, 1, "2019");
-- -----------------------------------------------------
-- Table `proyecto`.`profesor_evalua_tfg`
-- -----------------------------------------------------
insert into profesor_evalua_tfg(
        id_tribunal,
        profesor_id,
        tfg_id,
        rol,
        lugar,
        fecha
    )
values(
        1,
        3,
        1,
        "titular",
        "Facultad de Ingenieria",
        "2017-05-03"
    ),
    (
        1,
        4,
        1,
        "titular",
        "Facultad de Ingenieria",
        "2017-05-03"
    ),
    (
        1,
        8,
        1,
        "titular",
        "Facultad de Ingenieria",
        "2017-05-03"
    ),
    (
        1,
        2,
        1,
        "suplente",
        "Facultad de Ingenieria",
        "2017-05-03"
    ),
    (
        1,
        1,
        1,
        "suplente",
        "Facultad de Ingenieria",
        "2017-05-03"
    ),
    (
        2,
        3,
        2,
        "titular",
        "Facultad de Ingenieria",
        "2019-04-01"
    ),
    (
        2,
        4,
        2,
        "titular",
        "Facultad de Ingenieria",
        "2019-04-01"
    ),
    (
        2,
        5,
        2,
        "titular",
        "Facultad de Ingenieria",
        "2019-04-01"
    ),
    (
        2,
        6,
        2,
        "suplente",
        "Facultad de Ingenieria",
        "2019-04-01"
    ),
    (
        2,
        8,
        2,
        "suplente",
        "Facultad de Ingenieria",
        "2019-04-01"
    ),
    (
        3,
        1,
        3,
        "titular",
        "Google Meet",
        "2020-09-10"
    ),
    (
        3,
        3,
        3,
        "titular",
        "Google Meet",
        "2020-09-10"
    ),
    (
        3,
        4,
        3,
        "titular",
        "Google Meet",
        "2020-09-10"
    ),
    (
        3,
        5,
        3,
        "suplente",
        "Google Meet",
        "2020-09-10"
    ),
    (
        3,
        2,
        3,
        "suplente",
        "Google Meet",
        "2020-09-10"
    );
-- -----------------------------------------------------
-- Table `proyecto`.`profesor_evalua_tfm`
-- -----------------------------------------------------
insert into profesor_evalua_tfm(
        id_tribunal,
        profesor_id,
        tfm_id,
        rol,
        lugar,
        fecha
    )
values(
        1,
        2,
        1,
        "titular",
        "Facultad de Ingenieria",
        "2019-06-02"
    ),
    (
        1,
        3,
        1,
        "titular",
        "Facultad de Ingenieria",
        "2019-06-02"
    ),
    (
        1,
        5,
        1,
        "titular",
        "Facultad de Ingenieria",
        "2019-06-02"
    ),
    (
        2,
        4,
        2,
        "titular",
        "Facultad de Ingenieria",
        "2020-8-09"
    ),
    (
        2,
        7,
        2,
        "titular",
        "Facultad de Ingenieria",
        "2020-8-09"
    ),
    (
        2,
        8,
        2,
        "titular",
        "Facultad de Ingenieria",
        "2020-8-09"
    );
-- -----------------------------------------------------
-- Table `proyecto`.`seguimiento`
-- -----------------------------------------------------
insert into seguimiento(nota, fecha, tfg_id)
values(7, "2016-11-6", 1),
    (6, "2017-02-9", 1),
    (8, "2017-04-23", 1),
    (10, "2019-03-15", 2),
    (9, "2020-04-3", 3),
    (4, "2020-08-27", 3);