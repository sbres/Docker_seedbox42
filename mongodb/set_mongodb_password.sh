#!/bin/bash

PASS=${MONGODB_PASS:-$(pwgen -s 12 1)}
_word=$( [ ${MONGODB_PASS} ] && echo "preset" || echo "random" )

RET=1
while [[ RET -ne 0 ]]; do
    echo "=> Waiting for confirmation of MongoDB service startup"
    sleep 5
    mongo admin --eval "help" >/dev/null 2>&1
    RET=$?
done

echo "=> Creating an admin user with a ${_word} password in MongoDB"
#mongo admin --eval "db.createUser({user: 'admin', pwd: '$PASS', roles:[{role:'root',db:'admin'}]});"
mongo seedapp --eval "db.users.insert({'login' : '"'admin'"', '"'mail'"' : '"'delete@this.account.fr'"', '"'password'"' : '"'$2a$10$8GpM3jBbHlHBQBhwXnrWju5SuYP/RooMgT5WKfObgXDhymXHqLALe'"', '"'avatar'"' : '"'default.png'"', '"'createdAt'"' : ISODate('"'2016-02-04T21:06:59.260Z'"'), '"'role'"' : 0, '"'__v'"' : 0})"
echo "=> Done!"
touch /data/db/.mongodb_password_set

echo "========================================================================"
echo "You can now connect to this MongoDB server using:"
echo ""
echo "    mongo admin -u admin -p $PASS --host <host> --port <port>"
echo ""
echo "Please remember to change the above password as soon as possible!"
echo "========================================================================"
