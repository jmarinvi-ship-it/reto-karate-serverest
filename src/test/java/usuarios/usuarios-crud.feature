Feature: Operaciones CRUD de Usuarios - ServeRest API
  Background:
    * url baseUrl
    * path 'usuarios'
    * def randomEmail = function(){ return 'qa_' + java.lang.System.currentTimeMillis() + '@test.com' }

  Scenario: Obtener la lista de usuarios (GET /usuarios)
    Given method get
    Then status 200
    And match response.quantidade == '#number'
    And match response.usuarios == '#array'

  Scenario: Ciclo completo CRUD de usuario (POST, GET, PUT, DELETE)
    # Crear usuario
    * def emailDinamico = randomEmail()
    Given request { nome: "Jack Marin", email: #(emailDinamico), password: "Pass123!", administrador: "true" }
    When method post
    Then status 201
    And match response.message == 'Cadastro realizado com sucesso'
    * def userId = response._id

    # Consultar usuario por ID
    Given path userId
    When method get
    Then status 200
    And match response.nome == 'Jack Marin'

    # Actualizar usuario
    Given path userId
    And request { nome: "Jack Marin Editado", email: #(emailDinamico), password: "NewPass123!", administrador: "false" }
    When method put
    Then status 200
    And match response.message == 'Registro alterado com sucesso'

    # Eliminar usuario
    Given path userId
    When method delete
    Then status 200
    And match response.message == 'Registro excluído com sucesso'