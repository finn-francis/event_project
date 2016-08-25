<h2>Event Project</h2>

<a href="https://finn-event-project.herokuapp.com">View on Heroku</a><br>
<a href="https://www.pivotaltracker.com/n/projects/1786037">Pivotaltracker</a>

<h3>What is it?</h3>
<p>This is project I have been working on for my final project for We Got Coders.  Users can create events, providing a title, description, location, time, image etc.  There is also a friend system to event organisers can invite their friends to attend their events.</p>

<h3>How to use it:</h3>

<h4>Sign up</h4>
<p>Upon navigating to the main page visitors will see a list of recently created events.  Visitors can view events and user profiles, but in order to interact with the app they will have to create an account and log in.  You can sign up by entering your personal details.  I also integrated the facebook api to allow logins through facebook.  Once signed in you will be able to edit the information on your profile, you will also be able to make friends with users, create events and comment on events.</p>

<h4>Create an event</h4>
<p>If you have an accout you can create events.  Once you have entered the event details you will have an event page with a map showing the location of the event.  Creating an event gives you moderator rights on that page, meaning you will be able to delete and edit other users comments, and event ban them from the page.  As of yet the only way to attend the event is to be invited, however this is a work in progress</p>

<h4>Stats</h4>
<pre>
+----------------------+-------+-------+---------+---------+-----+-------+
| Name                 | Lines |   LOC | Classes | Methods | M/C | LOC/M |
+----------------------+-------+-------+---------+---------+-----+-------+
| Controllers          |   331 |   254 |      10 |      49 |   4 |     3 |
| Helpers              |     4 |     4 |       0 |       0 |   0 |     0 |
| Models               |   338 |   267 |      14 |      24 |   1 |     9 |
| Mailers              |     0 |     0 |       0 |       0 |   0 |     0 |
| Javascripts          |   108 |    80 |       0 |      14 |   0 |     3 |
| Libraries            |     0 |     0 |       0 |       0 |   0 |     0 |
| Controller specs     |    32 |    25 |       0 |       0 |   0 |     0 |
| Model specs          |   282 |   233 |       0 |       0 |   0 |     0 |
| Cucumber features    |   471 |   348 |       0 |       0 |   0 |     0 |
+----------------------+-------+-------+---------+---------+-----+-------+
| Total                |  1566 |  1211 |      24 |      87 |   3 |    11 |
+----------------------+-------+-------+---------+---------+-----+-------+
  Code LOC: 605     Test LOC: 606     Code to Test Ratio: 1:1.0
</pre>

<p>Coverage: 94%</p>

<h4>Gems used</h4>
<ul>
  <li>devise</li>
  <li>geocoder</li>
  <li>cancancan</li>
  <li>bootstrap-sass</li>
  <li>omniauth-facebook</li>
  <li>figaro</li>
  <li>sass-rails</li>
</ul>
