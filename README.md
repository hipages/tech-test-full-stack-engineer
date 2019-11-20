hipages Full Stack Engineer Tech Challenge
==========================================
Welcome to the hipages Full Stack Engineer Tech Challenge!  The purpose of this challenge is to help us assess your technical skills.  We know that you have limited time to devote to this task and may not be able to provide the as complete solution as you would given more time, so we suggest you focus on the core requirements first, then any additional features if you have time left over.

## The Task
Your task is to create a lead management UI for a tradie.  This should be presented as a single page application (SPA) using a modern JS framework.

### Invited Tab
The first view you need to create is the **Invited** tab, which contains all leads in the **new** status.
![Invited Tab](/invited_tab.png?raw=true "Invited Tab")

As you can see in the screenshot, each lead is a card in a list which contains the following pieces of information:
* Contact first name
* Date created
* Suburb
* Category
* ID
* Description
* Price

Along with that information you can see two buttons: **Accept** and **Decline**
* Upon clicking on **Accept**, the lead must be updated to the **accepted** status in the database
* Upon clicking on **Decline**, the lead must be updated to the **declined** status in the database

### Accepted Tab
The second view you need to create is the **Accepted** tab, which contains all leads in the **accepted** status.
![Accepted Tab](/accepted_tab.png?raw=true "Accepted Tab")

As you can see in the screenshot, the lead cards follow a similar format and contain some additional data:
* Contact full name
* Contact phone number
* Contact email

### Notes
* For the icons in the UI, you can use something like font-awesome or SVG icons, whatever you choose.
* There are jobs already loaded into the database

## Getting Started
We have provided a bit of boilerplate code that you can use to get started.  You are **not** required to use this boilerplate, so feel free to throw it all away and start fresh if you prefer.

The boilerplate code assumes you have Docker running on your machine.  If you do not, they offer easy to install binaries ([Mac](https://docs.docker.com/docker-for-mac/install/)) ([Windows](https://docs.docker.com/docker-for-windows/install/)).

From the root of the project, run `docker-compose up -d`
* You should now have the UI running at http://localhost:3000 and the server running at http://localhost:8080
* You should now have a MySQL database running at localhost:3306
    * The username is `root`
    * The password is `hipages`

If at any point you want to refresh the database, you can stop the Docker containers (`docker-compose down`) and start them again
    
## Submission
Please document your solution in the SOLUTION.md file.  This should explain why you've made the design choices that you have and clarify anything you feel isn't obvious.  Feel free to also include what else you would have done given more time.

**Please include instructions on how to run your app if it is not using the boilerplate provided.**

Once completed, please upload your solution to a public Github repo and share the link with **niclaswessblad@hipagesgroup.com.au**
