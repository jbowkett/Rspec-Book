Feature: The code breaker submits guess

  codebreaker submits guess of 4 numbers

  for each number in the guess that matches the number and position of a number in the secret code, the mark includes
  one +.  For each number in the guess that matches the number but not in the position of a number in the secret code,
  a - is added to the mark


  Scenario Outline: submit guess
    Given the secret code is "<code>"
    When I guess "<guess>"
    Then the mark should be "<mark>"

    Scenarios: no matches
      | code | guess | mark |
      | 1234 | 5678  |      |

    Scenarios: 1 number correct
      | code | guess | mark |
      | 1234 | 1678  | +    |
      | 1234 | 2678  | -    |

    Scenarios: 2 numbers correct
      | code | guess | mark |
      | 1234 | 5254  | ++   |
      | 1234 | 5154  | +-   |
      | 1234 | 2545  | --   |

    Scenarios: 3 numbers correct
      | code | guess | mark |
      | 1234 | 5234  | +++  |
      | 1234 | 5134  | ++-  |
      | 1234 | 5124  | +--  |
      | 1234 | 5123  | ---  |

    Scenarios: All numbers correct
      | code | guess | mark |
      | 1234 | 1234  | ++++ |
      | 1234 | 1243  | ++-- |
      | 1234 | 1423  | +--- |
      | 1234 | 4321  | ---- |


