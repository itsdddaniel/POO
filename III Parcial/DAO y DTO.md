// Compiled from ServletRequest.java (version 1.7 : 51.0, no super bit)
public abstract interface javax.servlet.ServletRequest {
  
  // Method descriptor #4 (Ljava/lang/String;)Ljava/lang/Object;
DAO Y DTO
----------------------------

Para comprender el concepto de **[transportar datos]**, del **[objeto que es "el dato"]**, o **[de la "fuente" que contiene la informacion del objeto]**, es necesario definir los terminos DTO Y DAO.

  DTO: Objeto de Transferecia de Datos (Data Transfer Object).
  DAO: Objeto de Acceso a Datos (Data Acess Object).

  E.g.:

    El objeto que es el formulario sera el objeto Form019 (contiene los campos que el formulario posee en la vida real, es la
    abstraccion del formulario de la vida real.)

    El objecto que es el formulario en borrador sera el objeto DTOForm.

    El objeto que permite leer o escribir el formulario sera el objecto DAOForm.