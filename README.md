### What is seedbox42 ?

Seedbox42 is a pretty cool project that allows you to make your own seedbox on a VPS.

You should totally check their [repo](https://github.com/johnduro/seedbox42)

This is a docker-compose configuration to run seedbox42 without all the dependencies headache.

### What do we need ?

To run this you must have Docker and docker-compose installed.

[To install docker](https://docs.docker.com/compose/install/)

[To install docker compose](https://docs.docker.com/compose/install/)

### And now what ?

Now that you are ready to go, clone this repo !
```
git clone https://github.com/sbres/Docker_seedbox42.git && cd Docker_seedbox42
```
And now you just have to run docker compose.
```
docker-compose up
```

And you a ready to go !

You can acess to your seedbox at http://**YOURIP**:4242/

The user is **admin**
The password is **42FTW**

**Please for the love of good change the password**

##### docker-compose up is not working what should I do ?

1. Check you have at least 250 Mb of ram available.

2. Sometimes when pulling dependencies everything brakes. Don't worry fam, just run **docker-compose up** again.
