*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG $1000
START:
    *//output
    LEA MESSAGE, A1
    MOVE #14,D0
    TRAP #15

    *//input to D1
    MOVE.b #4,D0 //PUT 14 to D0
    TRAP #15    //you can input value to I/O.
    
    *//display from D1
    LEA TEXT, A1
    MOVE #14,D0
    TRAP #15
    
    MOVE.b #3,D0  //Put 3 in D0
    TRAP #15    //TRAP #15 is used for I/O.  Put the task number in D0.

    
    
    SIMHALT
    
MESSAGE dc.b 'Enter Your Game Point: ',0
TEXT dc.b 'Game Point: ',0     
    END START


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
