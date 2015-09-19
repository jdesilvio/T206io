#The T206 Project

##Purpose:

I started this project to learn how to build a **data-driven app** with **Ruby on Rails**, **Amazon Web Services** and **more**, as well as, to have some fun with a new hobby, the **T206 baseball card set**.

##The T206 baseball card set:

_From Wikipedia_

The T206 Honus Wagner
The tobacco card set known as T206 was issued from 1909 to 1911 in cigarette and loose tobacco packs through 16 different brands owned by the American Tobacco Company. It is a landmark set in the history of baseball card collecting, due to its size, rarity, and the quality of its color lithographs.

###Concepts learned and employed in the making of this app:

* Connecting to an external database - I have scraped/collected data on the T206 set from various sources and keep this information in a database hosted on `AWS RDS`. Since this data is not integral or solely used for this app, I decided to house it in an external database and connect this app to the database to retrieve data when necessary. To do this, I defined `config variables` in `Heroku`, then called them to connect to the database and query it via the `ActiveRecord Query Interface`.

* User authentication - built user authentication with the `devise` gem and enables environment variables with `figaro` gem. See the [toy app](https://github.com/jdesilvio/userapp) I built to learn `devise` and `figaro`.
