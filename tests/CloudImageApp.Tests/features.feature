Feature: Image Upload and Processing

  Scenario: User uploads PNG image
    Given the user has selected a PNG file
    When they upload the file to the cloud
    Then the file should be encrypted
    And stored in the blockchain
    And processed by AI
    And edge computing should optimize the image

