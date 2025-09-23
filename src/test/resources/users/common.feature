Feature: Common data

  Scenario:
    * def baseUrl = 'https://petstore.swagger.io/v2'
    * def petPath = '/pet'
    * def petId = 10000 + java.lang.Math.abs(new java.util.Random().nextInt(90000))
    * def petName = 'TestPet_' + petId