Feature: Ansible Configuration

  Scenario: Install Boto
    When I install Boto
    Then it should be successful

  Scenario: Install AWS CLI
    When I install AWS CLI
    Then it should be successful

  Scenario: Launch EC2 instance
    When I launch an EC2 instance
    Then it should be successful
