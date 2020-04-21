# Timesheet (HR management system)

This application is an HR management system where employees can log their time in when they enters the office or starts the work and logs out the time when they're done with the work for the day. 

Technologies and dependencies used in the App:

* Ruby 2.5.3
* Rails 5.2.1
* PostgreSQL 12.2

* Gems dependencies: 
  - Devise
  - bootstrap
  - jquery-rails
  - kaminari
  - chartkick
  - groupdate

* System Dependencies: Considered Mac OS X for installation of Ruby, PostegreSQL

Sceenshot 1: Employee Directory
![Timesheet (2)](https://user-images.githubusercontent.com/7859906/79826731-25d39380-83ba-11ea-854b-9f07806e5f43.png)

Sceenshot 2: Before Time Log-in
![Timesheet (1)](https://user-images.githubusercontent.com/7859906/79826787-44398f00-83ba-11ea-9da1-c82797751976.png)

Sceenshot 2: After Time Log-in
![Timesheet](https://user-images.githubusercontent.com/7859906/79826815-51ef1480-83ba-11ea-8846-eac4a2e9f33a.png)

## Getting Started

### Installing Homebrew
First, we need to install Homebrew. Homebrew allows us to install and compile software packages easily from source.
Open Terminal and run the following command:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
### Installing Ruby
I've used rbenv to install and manage my Ruby versions.
To do this, run the following commands in your Terminal:

```
brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
source ~/.zshrc

# Install Ruby
rbenv install 2.5.3
rbenv global 2.5.3
ruby -v
```
### Installing Rails
I've used Rails version 5.2.1 and you've to run the following command in your Terminal:
```
gem install rails -v 5.2.1
```
Rails is now installed, but in order for us to use the rails executable, we need to tell rbenv to see it:
```
rbenv rehash
```
And now we can verify Rails is installed:
```
rails -v
# Rails 5.2.1
```
### Setting Up PostgreSQL
You can install PostgreSQL server and client from Homebrew:
```
brew install postgresql
```
Once this command is finished, it gives you a couple commands to run. Follow the instructions and run them:
```
# To have launchd start postgresql at login:
brew services start postgresql
```
By default the postgresql user is your current OS X username with no password. For example, my OS X user is named ```rahul``` so I can login to postgresql with that username.

## Installation
- First, you need to clone the repository. Open Terminal and run the following command:
```
git clone https://github.com/rahul-das/weebuyhr.git
```
- Now, Move into the application directory
```
cd weebuyhr
```
- Modify the config/database.yml file to contain the valid username/password. By default, it can be the system username as username with no password for Mac OS X users.
```
# config/database.yml
username: rahul # change this to your current OS X username
password: 
```
- I've added some gems in Gemfile; So install the gems using bundle install:
```
bundle install
```
- Next step is Database Setup:
```
rails db:create
rails db:migrate
# pre defined admin can be created using the seed file
rails db:seed
```
- Now you can start the rails server:
```
rails server
```
- Now you can open the URL http://localhost:3000 into the address bar of your browser.
