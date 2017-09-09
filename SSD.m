/***************************************************************************************
*    Title: Seven Segment Display using a arduino
*    Author: Anjana Senanayake
*    Date: 2016  
*    Code version: v1.0
*    Availability: https://github.com/AnjanaSenanayake/SSD-in-Matlab
*
***************************************************************************************/

pinMode(a,2,'output');
pinMode(a,3,'output');
pinMode(a,4,'output');
pinMode(a,5,'output');
pinMode(a,6,'output');
pinMode(a,7,'output');
pinMode(a,8,'output');
pinMode(a,9,'output');
pinMode(a,10,'output');


array = [1,1,1,1,1,1,0;  % 0
    0,1,1,0,0,0,0;  %1
    1,1,0,1,1,0,1;  %2
    1,1,1,1,0,0,1;  %3
    0,1,1,0,0,1,1;  %4
    1,0,1,1,0,1,1;  %5
    1,0,1,1,1,1,1;  %6
    1,1,1,0,0,0,0;  %7
    1,1,1,1,1,1,1;  %8
    1,1,1,0,0,1,1]; %9



while 1
    intensity=analogRead(a,0);%input 0-1023
    i=floor(intensity*100/1024);    %convert 00-99
    disp(i);                        %Display in command window
    digit10=floor(i/10)+1;     %display 1
    digit1=mod(i,10)+1;        %display 2
    for n=1:15
    digitalWrite(a,9,1);
    digitalWrite(a,10,0);
    for j=1:7
        digitalWrite(a,j+1,array(digit10,j));
    end
    for j=1:7
        digitalWrite(a,j+1,0);
    end
    digitalWrite(a,9,0);
    digitalWrite(a,10,1);
    for j=1:7
        digitalWrite(a,j+1,array(digit1,j));
    end
    for j=1:7
        digitalWrite(a,j+1,0)
    end
    end
end