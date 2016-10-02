#[T206.io](http://www.t206.io/)

##Purpose:

I started this project to learn how to build a `Ruby on Rails` app for my new hobby, collecting the **T206 baseball card set**. It has since become a place where I can purposefully use different skills that I learn and, _hopefully_, deploy new features, apps and micro-services that are useful to the **T206** community and can spawn new research and discoveries.

##Guest Login:

If you'd like to take a look around the site, please use:

> **email:** tycobb@t206.io

> **password:** baseball

If you are at all interested in the site, I encourage you to sign up. I promise that I will never give your email out. I only want it to build a list of people interested in T206 and the site, and, hopefully, start a community.

##The T206 baseball card set:

<p align="center">
    <img src="http://caimages.collectors.com/psacertimages/38768_599x996.jpg" width="250">
</p>

> The tobacco card set known as T206 was issued from 1909 to 1911 in cigarette and loose tobacco packs through 16 different brands owned by the American Tobacco Company. It is a landmark set in the history of baseball card collecting, due to its size, rarity, and the quality of its color lithographs.

_Source: [Wikipedia](https://en.wikipedia.org/wiki/T206)_

_Image:  [PSA](http://www.psacard.com/cardfacts/baseball-cards/1909-1911-t206-white-border/honus-wagner/18155)_

---

##Current Features

####[Ruby on Rails app](http://www.t206.io/)

* **Description:** An app to handle the organization of landing pages, user authentication and generally connecting all the pieces to give a consistent user experience.

* **Built with:** `Ruby on Rails` and `PostgreSQL`

* **Dev Ops:** [`Heroku`](https://www.heroku.com/)

* **Repository:** https://github.com/jdesilvio/T206io

####Data

* **Description:** I created an external database to aggregate and store all the data that I have collected and derived within the domain of the **T206** baseball card set. This includes a large amount of descriptive data about the cards themselves (player, team, etc.), population (rarity) reports, etc. 

* **Built with:** `AWS RDS PostgreSQL` database; _ETL_ is a combinaiton of `Python` scripts for scraping data and `R` for cleaning, transforming and loading the data.

* **Dev Ops:** `AWS RDS` database, `EC2` for running _ETL_ scripts and `S3` for storing data backups.

* **Repository:** https://github.com/jdesilvio/T206db

####[`Python Flask` Computer Vision app](http://cv.t206.io) (_work in progress_)

_**Note:** After clicking a card, the search takes several minutes as it has not been optimized yet._

* **Description:** Upload an image of a card in the **T206** set  and an algorithm will match image keypoints and descriptors against a database of images and return the most likely match.

* **Built with:** `Python`, [`Flask`](http://flask.pocoo.org/), [`OpenCV`](http://opencv.org/), [`HDF5`](https://www.hdfgroup.org/HDF5/) and [`Docker`](https://www.docker.com/) (for initial `Docker` environments, see [here](https://github.com/jdesilvio/opencv-flask-docker) and [here](https://github.com/jdesilvio/py-opencv-hdf5-docker))

* **Dev Ops:** [`Digital Ocean`](https://www.digitalocean.com/) `Docker` droplet

* **Repository:** [app container](https://github.com/jdesilvio/T206-computer-vision) and [data container](https://github.com/jdesilvio/T206-computer-vision-data)

---

###Roadmap

* **Card value predictor** - A machine-learning algorithm that takes in auction data from major auctions (eBay, Robert Edwards, etc.) and can more accurately predict current value than any other T206 price guide.

---

####Notes (mainly for myself):

* Connecting to an external database - Scraped, collected and derived data on the T206 set from various sources and keep this information in a database hosted on `AWS RDS (PostgreSQL)` instance. Since this data is not integral or solely used for this app, I decided to house it in an external database and connect this app to the database to retrieve data when necessary. To do this, I defined `config variables` in `Heroku`, then called them to connect to the database and query it via the `ActiveRecord Query Interface`.

* User authentication - built user authentication with the `devise` gem and enables environment variables with `figaro` gem. See the [toy app](https://github.com/jdesilvio/userapp) I built to learn `devise` and `figaro`. I also use `ActionMailer` which I configured to send _confirmation emails_ to new users. This will limit the number of erroneous sign-ups from bots.

* Photos - The majority (if not all) of the photos for this site are and will be from the [Library of Congress](http://www.loc.gov/photos) which is a **great** source of vintage photos available to the public with super high-resolution downloads.

* Design/CSS - One of the most challenging areas I have found is `CSS` (which surprised me somewhat). This is especially true when deigning for multiple browsers and media types. For this site, I wanted to forego using a framework like `Bootstrap` and hand code the `CSS` as a learning experience.

* `Docker` for `OpenCV` and `HDF5` - This took several months to figure out. The order of the installation of each component proved to be more frustration than anticipated due to system paths and dependencies mainly on the `Python` side. There were also system level memory issues that needed to be addressed by using a `swapfile`. Finally, linking the app and data containers together while also building the `HDF5` dataset from images stored in `S3`.
