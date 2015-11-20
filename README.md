#The T206 Project

##Purpose:

I started this project to learn how to build a **data-driven app** with **Ruby on Rails**, **Amazon Web Services** and **more**, as well as, to have some fun with a new hobby, the **T206 baseball card set**. Once the site is stable, I want to create mirco-services for some analytical and _data science-y_ things like computer vision for card recognition & photo-grading and an algorithm to predict card value as well as find undervalued cards.

##The T206 baseball card set:

_From Wikipedia_

The T206 Honus Wagner
The tobacco card set known as T206 was issued from 1909 to 1911 in cigarette and loose tobacco packs through 16 different brands owned by the American Tobacco Company. It is a landmark set in the history of baseball card collecting, due to its size, rarity, and the quality of its color lithographs.

###Concepts learned and employed in the making of this app:

* Connecting to an external database - Scraped, collected and derived data on the T206 set from various sources and keep this information in a database hosted on `AWS RDS (PostgreSQL)` instance. Since this data is not integral or solely used for this app, I decided to house it in an external database and connect this app to the database to retrieve data when necessary. To do this, I defined `config variables` in `Heroku`, then called them to connect to the database and query it via the `ActiveRecord Query Interface`.

* User authentication - built user authentication with the `devise` gem and enables environment variables with `figaro` gem. See the [toy app](https://github.com/jdesilvio/userapp) I built to learn `devise` and `figaro`. I also use `ActionMailer` which I configured to send _confirmation emails_ to new users. This will limit the number of erroneous sign-ups from bots.

* Photos - The majority (if not all) of the photos for this site are and will be from the [Library of Congress](http://www.loc.gov/photos) which is a **great** source of vintage photos available to the publish with super high resolution downloads.

* Design/CSS - One of the most challenging areas I have found is `CCS` (which surprised me somewhat). This is especially true when deigning for multiple browsers and media types. For this site, I wanted to forego using a framework like `Bootstrap` and hand code the `CSS` as a learning experience.
