Feature: Gestión de gastos
  Como estudiante
  Quiero registrar mis gastos
  Para controlar cuánto dinero gasto

  Scenario: Crear un gasto y comprobar cual es el total que llevo gastado
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    Then el total de dinero gastado debe ser 5 euros

  Scenario: Eliminar un gasto y comprobar cual es el total que llevo gastado
    Given un gestor con un gasto de 5 euros
    When elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear y eliminar un gasto y comprobar que no he gastado dinero
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear dos gastos diferentes y comprobar que el total que llevo gastado es la suma de ambos
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And añado un gasto de 10 euros llamado Comida
    Then el total de dinero gastado debe ser 15 euros

  Scenario: Crear tres gastos diferentes que sumen 30 euros hace que el total sean 30 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado ComidaSemana1
    And añado un gasto de 10 euros llamado ComidaSemana2
    And añado un gasto de 10 euros llamado ComidaSemana3
    Then el total de dinero gastado debe ser 30 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros y elimino el ultimo gasto la suma son 40 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Gasto1
    And añado un gasto de 30 euros llamado Gasto2
    And añado un gasto de 30 euros llamado Gasto3
    And elimino el gasto con id 3
    Then el total de dinero gastado debe ser 40 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros y elimino el primer gasto la suma son 60 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Gasto1
    And añado un gasto de 30 euros llamado Gasto2
    And añado un gasto de 30 euros llamado Gasto3
    And elimino el gasto con id 1
    Then el total de dinero gastado debe ser 60 euros

  Scenario: Crear cuatro gastos y eliminar dos de ellos la suma es correcta
    Given un gestor de gastos vacío
    When añado un gasto de 20 euros llamado Transporte
    And añado un gasto de 15 euros llamado Snack
    And añado un gasto de 25 euros llamado Cine
    And añado un gasto de 40 euros llamado Cena
    And elimino el gasto con id 2
    And elimino el gasto con id 4
    Then el total de dinero gastado debe ser 45 euros

  Scenario: Crear cinco gastos de igual cantidad y verificar el total
    Given un gestor de gastos vacío
    When añado un gasto de 8 euros llamado Gasto1
    And añado un gasto de 8 euros llamado Gasto2
    And añado un gasto de 8 euros llamado Gasto3
    And añado un gasto de 8 euros llamado Gasto4
    And añado un gasto de 8 euros llamado Gasto5
    Then el total de dinero gastado debe ser 40 euros

  Scenario: Crear dos gastos, eliminar uno y crear otro
    Given un gestor de gastos vacío
    When añado un gasto de 50 euros llamado Vacaciones
    And añado un gasto de 30 euros llamado Hotel
    And elimino el gasto con id 1
    And añado un gasto de 20 euros llamado Museo
    Then el total de dinero gastado debe ser 50 euros
