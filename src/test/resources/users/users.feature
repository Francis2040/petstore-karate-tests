Feature: PetStore API Tests

  Background:
    * callonce read('common.feature')



# Escenario 1: Añadir una mascota a la tienda
  Scenario: Añadir una mascota a la tienda
    Given url baseUrl + petPath
    And request
    """
    {
      "id": #(petId),
      "category": {
        "id": 1,
        "name": "dogs"
      },
      "name": "#(petName)",
      "photoUrls": [
        "https://example.com/pet.jpg"
      ],
      "tags": [
        {
          "id": 1,
          "name": "friendly"
        }
      ],
      "status": "available"
    }
    """
    When method post
    Then status 200
    And match response.id == petId

# Escenario 2: Consultar la mascota ingresada previamente (Búsqueda por ID)
  Scenario: Consultar la mascota ingresada previamente (Búsqueda por ID)
    Given url baseUrl + petPath + '/' + petId
    When method get
    Then status 200
    And match response.id == petId

# Escenario 3: Actualizar nombre y estatus a "sold"
  Scenario: Actualizar el nombre de la mascota y el estatus de la mascota a "sold"
    Given url baseUrl + petPath
    And request
    """
    {
      "id": #(petId),
      "category": {
        "id": 1,
        "name": "dogs"
      },
      "name": "#(petName)_Updated",
      "photoUrls": [
        "https://example.com/pet.jpg"
      ],
      "tags": [
        {
          "id": 1,
          "name": "friendly"
        }
      ],
      "status": "sold"
    }
    """
    When method put
    Then status 200
    And match response.status == 'sold'

# Escenario 4: Consultar la mascota modificada por estatus (Búsqueda por estatus)
  Scenario: Consultar la mascota modificada por estatus (Búsqueda por estatus)
    Given url baseUrl + petPath + '/findByStatus'
    And param status = 'sold'
    When method get
    Then status 200
    And match $..status contains 'sold'
