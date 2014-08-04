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

