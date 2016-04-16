#T206.io

##Purpose:

I started this project to learn how to build a **Ruby on Rails** app for a new hobby, the **T206 baseball card set**. It has since become a place where I can purposefully use different skills that I learn and, _hopefully_, deploy new features, apps and micro-services that are useful to the **T206** community and can spawn new research and discoveries.

##The T206 baseball card set:

The tobacco card set known as T206 was issued from 1909 to 1911 in cigarette and loose tobacco packs through 16 different brands owned by the American Tobacco Company. It is a landmark set in the history of baseball card collecting, due to its size, rarity, and the quality of its color lithographs.

_Source: Wikipedia_

---

##Current Features

####Ruby on Rails app

* **Description:** An app to handle the organization of landing pages, user authentication and generally connecting all the pieces to give a consistent user experience

* **Built with:** `Ruby on Rails`

* **Deployed using:** `Heroku`

* **Repository:** 

####Data by card

* **Description:** A large amount of descriptive data and population reports are databased, a user can select a card and get several tables of data for that card including breakdowns by back, grade, population and value

* **Built with:** `AWS RDS` database, `Python` for scraping the data, `R` for scrubbing and organizing the data for upload the the database

* **Deployed using:** `AWS`

* **Repository:**  NA

####Computer vision for card recognition

* **Description:**  Upload an image of a card and an algorithm will match image keypoints and descriptors against a database of images to determine the most likely match

* **Built with:** 

* **Deployed using:** `nginx` server on a `Digital Ocean` `Docker` droplet

* **Repository:** 

###Roadmap

* **Computer vision photo-grading** - Upload an image of a card and receive a grade along with extracted atttributes use to determine the grade

* **Card value predictor** - A machine-learning algorithm that takes in auction data from major auctions (eBay, Robert Edwards, etc.) and can more accurately predict current value than any other T206 price guide

---

####Notes:

* Connecting to an external database - Scraped, collected and derived data on the T206 set from various sources and keep this information in a database hosted on `AWS RDS (PostgreSQL)` instance. Since this data is not integral or solely used for this app, I decided to house it in an external database and connect this app to the database to retrieve data when necessary. To do this, I defined `config variables` in `Heroku`, then called them to connect to the database and query it via the `ActiveRecord Query Interface`.

* User authentication - built user authentication with the `devise` gem and enables environment variables with `figaro` gem. See the [toy app](https://github.com/jdesilvio/userapp) I built to learn `devise` and `figaro`. I also use `ActionMailer` which I configured to send _confirmation emails_ to new users. This will limit the number of erroneous sign-ups from bots.

* Photos - The majority (if not all) of the photos for this site are and will be from the [Library of Congress](http://www.loc.gov/photos) which is a **great** source of vintage photos available to the publish with super high resolution downloads.

* Design/CSS - One of the most challenging areas I have found is `CCS` (which surprised me somewhat). This is especially true when deigning for multiple browsers and media types. For this site, I wanted to forego using a framework like `Bootstrap` and hand code the `CSS` as a learning experience.


