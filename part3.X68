*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* A:2  
*Read string from keyboard and store at (A1),
*NULL terminated, length retuned in D1.W (max 80)
    MOVE.B #2,D0
    TRAP #15
    MOVE.B #1,D0 *display my input that store in A1
    TRAP #15
    
*B.5 
*Read single character from the keyboard into D1.B.
    MOVE.B #5,D0
    TRAP #15
    MOVE.B #6,D0 *display my input that store in D1
    TRAP #15

    
*c.8  
*Return time in hundredths of a second since midnight in D1.L.
    MOVE.B #8,D0
    TRAP #15
    MOVE.B #3,D0 *display from D1
    TRAP #15
    
*d.11
    MOVE.W $FF10,D1
    MOVE #11,D0
    TRAP #15
    
*e.13
    LEA TEXT,A1
    MOVE #13,D0
    TRAP #15
    
*f.17
    LEA TEXT,A1
    MOVE #17,D0
    TRAP #15
    
*g.18
    LEA TEXT,A1
    MOVE #18,D0
    TRAP #15
    
*h.21
    MOVE.L $00010110,D1
    MOVE #21,D0
    TRAP #15

    SIMHALT             ; halt simulator

* Put variables and constants here
MESSAGE dc.b 'Enter Your Game Point: ',0
TEXT dc.b 'Game Point: ',0     
    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
