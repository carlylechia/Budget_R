# BUDGET APP

The Budget_R app was built as the capstone project at the end of the Ruby on Rails module at @Microverseinc. It is about building a mobile web application where you, the user, can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

This application allows the user to:

 

- [ ] register and log in, so the data is private to them.

 

- [ ]  introduce new transactions associated with a category.

 

- [ ] See the money spent on each category.

## Entity Relationship Diagram(ERD)

![](app/assets/images/budget_erd.png)

## Screenshots Of Some Key Views

1. **Splash Screen**
![](app/assets/images/splash.png)

2. **Categories Page**
![](app/assets/images/categories.png)

3. **Transactions Page**
![](app/assets/images/transactions.png)

## Built with
- Ruby
- Rails (RoR)
- Rubocop
- Stylelint
- Devise
- Rspec & Capybara

## Deployment
Our mobile app was deployed to Heroku, and the link is provided below. Feel free to click the link, visit the app online and use it accordingly:
- [Budget_R](https://budget-r.herokuapp.com/)

## Video Presentation
Watch this [loom video](https://www.loom.com/share/e5118955bfc543f7ad8d105dffaa4216) to get introduced to our Budget_R application.

## SetUp
To get a local copy up and running, follow these steps:

* You should have ***Ruby*** installed on your computer.
* You should also have ***Rails*** installed on your computer.
* Clone this repository into your computer by running the following command in your terminal:
```
git clone https://github.com/carlylechia/Budget_R.git
```
* Run this command in the cloned directory, to install required gems: 
```
bundle install
```
- Run `Rubocop -A` and fix linters errors, if any.
* You can run unit tests and make sure they are passing, with this command:
```
rspec
```
* Run the project in your browser:
```
rails s
```

## Authors

👤 **Chia Carlyle**
- LinkedIn: [![LinkedIn Badge](https://img.shields.io/badge/-chiacarlyle-black?logo=LinkedIn&logoColor=0A66C2&style=plastic)](https://linkedin.com/in/chia-carlyle)

- GitHub: [![GitHub Badge](https://img.shields.io/badge/-carlylechia-black?logo=GitHub&logoColor=18171&style=plastic)](https://github.com/carlylechia)

- Twitter: [![Twitter Badge](https://img.shields.io/badge/-chiacarlyle-black?logo=Twitter&logoColor=1DA1F2&style=plastic)](https://twitter.com/chiacarlyle)

- Gmail: [![Gmail Badge](https://img.shields.io/badge/-chiacarlyle-black?logo=Gmail&logoColor=EA4335&style=plastic)](mailto:chiacarlyle@gmail.com)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to Microverse
- Kudos to [Gregoire Vella on Behance](https://www.behance.net/gregoirevella), for the exceptional design.

## 📝 License

This project is [MIT](./MIT.md) licensed.
