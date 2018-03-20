ATS.sh

what is the size of the RAM cache we use?
Can we increase it and gain a speed advantage (obviously requiring more RAM to be installed)?

is there any way/thought of using ATS to speed up cross colos calls that exceed the pageload SLA? most of that is API calls right? 
so that is not TOO out there as a thought maybe it is but its out there now  I mean it IS "traffic" lol at least we could consider 
writing an intra-ATS based on this concept of bandwidth maximization, performance enhancement (via delivery)… could we even load 
the page faster than we do today, not just overcome the challenges of meeting the current SLA?

Scheduling Updates to Local Cache Content

To further increase performance and to ensure that HTTP objects are fresh in the cache, you can use the Scheduled Update option. 
This configures Traffic Server to load specific objects into the cache at scheduled times, 
regardless of whether there is an active client request for those objects at the scheduled time. 
You might find this especially beneficial in a reverse proxy setup, where you can preload content you anticipate will be in demand.

Traffic Server supports the HTTP PUSH method of content delivery. Using HTTP PUSH, you can deliver content directly into the cache without client requests.

Using Congestion Control

Create rules in congestion.config to specify: Interesting hook to static page load:

    Which origin servers Traffic Server tracks for congestion.
    The timeouts Traffic Server uses, depending on whether a server is congested.
    The page Traffic Server sends to the client when a server becomes congested.
    Whether Traffic Server tracks the origin servers by IP address or by hostname.

