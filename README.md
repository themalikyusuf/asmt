# CONFIG-MGT
This Ansible playbook:
- Sets up a Node.js application environment on an EC2 instance

**Requirements**
- Before running this Ansible playbook, you must have Ansible installed locally. You can find out about how to install Ansible [here](http://docs.ansible.com/ansible/intro_installation.html).
- The private key to the EC2 which is to be configured is also a requirement.
- [Cucumber](https://cucumber.io/) test framework installed on you machine. This is used for testing.

**Variables**

You will need to update the variables files i.e. **vars.yml** and **vars.rb** files with the appropriate variables. Currently there are only dummy variables in the variable files and this will not work. 

**Running The Project**

```
$ ansible-playbook playbook.aws.yml -i --private-key=path/to/private/key
```
After that, you can view the app on port 3000 of the EC2 instance IP address i.e. IP-ADDRESS:3000

**Testing the application**
This ansible script is tested using Cucumber. To run the test, run the following command
```
$ cucumber features/install.feature
```

**Clean Up**
To delete the environment, head over to AWS EC2 console and delete the instance.