#!/bin/bash

a=$(($RANDOM%100))

cd public_html
for x in {1..100}
do
        if [ $x -eq $a ]
        then
                echo "You win!<br/>">$x.html
                for i in {1..100}
                do
                        if [ $i -ne $x ]
                        then
                                echo "<a href= http://c2072.myvds.org/~fit34_11/"$i".html>"$i"</a>">>$x.html
                        fi
                done
        fi

        if [ $x -gt $a ]
        then
                echo "The number is <b>less</b> than the current number<br/>">$x.html
                for i in {1..100}
                do
                        if [ $i -ne $x ]
                        then
                                echo "<a href= http://c2072.myvds.org/~fit34_11/"$i".html>"$i"</a>">>$x.html
                        fi
                done
        fi

        if [ $x -lt $a ]
        then
                echo "The number is <b>greater</b> than the current number<br/>">$x.html
                for i in {1..100}
                do
                        if [ $i -ne $x ]
                        then
                                echo "<a href= http://c2072.myvds.org/~fit34_11/"$i".html>"$i"</a>">>$x.html
                        fi
                done
        fi 
done
