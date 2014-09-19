Dictionaries and API
====================

Dictionaries are one of three fundamental container based data structures. Comprised of keys and values, Dictionaries are responsible for many behind-the-scenes iOS magic. Dictionaries are also natural consumers of Web API JSON data.



MeetMeUp
========


As a user, I want to retrieve events from Meetup.com
2 points

    MeetUp.com has an API
    The following URL fetches JSON for events:
        https://api.meetup.com/2/open_events.json?zip=60604&text=mobile&time=,1w&key=YOURKEYHERE
    Fetch that URL and decode its JSON
    Exclaim: Huzzah! loudly and with vigor

As a user, I want to display events returned from the Meeup.com API call
2 points

    Show the events in a UITableView
    Your cells should show (at least) the event name and event address.
        Hint: Make it nice, use the detailTextLabel

As a user, I want to view the event details
2 points

    Tapping cells should show a new ViewController.
    In that ViewController show:
        The tapped event’s name
        RSVP Counts
        The hosting group information
        The event description
    Hint: If you find yourself making a property on the destinationViewController for each of those items of data, you should reconsider your approach.

As a user, I want to view the web page for the event
2 points

    Add a link to your DetailViewController that when tapped pushes a WebViewController for the event’s homepage.
    Provide back and forward buttons and a loading indicator
    Go round and offer every student a high-five


Stretches
=========


As a user, I want to be able to search for things other than "Mobile"
2 points

     Add a search field to the main view that allows a user to search any term



As a user, I was to see photos for the events
2 points

    If there is a photo for the event, display it in the UITableViewCell, otherwise display a placeholder image



As a user, I want to see the comments that have been posted for an event
3 points

    Make sure to include:
        The member's name who posted the comment
        The time the comment was posted
        The comment



As a user, I want to view member information about the members who have commented
3 points

    Create a new view that displays the information about a member (i.e. the member profile view)

