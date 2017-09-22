require 'open3'
require_relative 'vars'

# Scenario: Install Boto
When(/^I install Boto$/) do
  cmd = "ansible-playbook playbook.aws.yml --tags 'boto'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

Then(/^it should be successful$/) do
  expect(@status.success?).to eq(true)
end

# Scenario: Install AWS CLI
When(/^I install AWS CLI$/) do
  cmd = "ansible-playbook playbook.aws.yml --tags 'awscli'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

# Scenario: Launch EC2 instance
When(/^I launch an EC2 instance$/) do
  cmd = "ansible-playbook playbook.aws.yml --private-key=#{PATHTOKEY} --tags 'launch_ec2'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

# Scenario: Update apt cache and packages
When(/^I update apt cache and packages$/) do
  cmd = "ansible-playbook playbook.aws.yml --private-key=#{PATHTOKEY} --tags 'update_cache'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

# Scenario: Install nodejs globally
When(/^I install nodejs globally$/) do
  cmd = "ansible-playbook playbook.aws.yml --private-key=#{PATHTOKEY} --tags 'install_node'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

# Scenario: Copy application files to the server
When(/^I copy application files to the server$/) do
  cmd = "ansible-playbook playbook.aws.yml --private-key=#{PATHTOKEY} --tags 'copy_files'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

# Scenario: Install modules
When(/^I install modules$/) do
  cmd = "ansible-playbook playbook.aws.yml --private-key=#{PATHTOKEY} --tags 'install_modules'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

# Scenario: Start application
When(/^I start the application$/) do
  cmd = "ansible-playbook playbook.aws.yml --private-key=#{PATHTOKEY} --tags 'start_app'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

