package com.dlx.onemediapieceservlet.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2023-05-09T10:26:59.786+0200")
@StaticMetamodel(TypeCompte.class)
public class TypeCompte_ {
	public static volatile SingularAttribute<TypeCompte, Long> typeCompte;
	public static volatile SingularAttribute<TypeCompte, String> label;
	public static volatile ListAttribute<TypeCompte, Compte> comptes;
}
