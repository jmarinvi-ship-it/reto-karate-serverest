Feature: Escenarios Negativos y Validaciones - ServeRest API

  Background:
    * url baseUrl
    * path 'usuarios'

  Scenario: Registrar usuario con email duplicado
    Given request { nome: "Duplicado", email: "fulano@qa.com.br", password: "123", administrador: "true" }
    When method post
    Then status 400
    And match response.message == 'Este email já está sendo usado'

  Scenario: Buscar usuario con ID no existente
    Given path 'ID_INVALIDO_9999'
    When method get
    Then status 400
    And match response.message == 'Usuário não encontrado'