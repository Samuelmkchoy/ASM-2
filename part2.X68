*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:
    
    LEA Health,A2       
    MOVE.B  (A2),D1 *//put the A2 to D1
    ADD.B   #5,D1   *//D1+5
    MOVE.b  D1,Health   *//update the health
    
    MOVE.B  (A2),D1 *//put the A2 to D1
    SUB.B   #5,D1   *//D1-5
    MOVE.b  D1,Health   *//update the health
    
    MOVE.B  (A2),D1 *//put the A2 to D1
    MULU    #2,D1   *//D1*2
    MOVE.b  D1,Health  *//update the health
    
    MOVE.B  (A2),D1 *//put the A2 to D1
    DIVU    #2,D1   *//D1/2
    MOVE.B  D1,Health  *//update the health
               
    SIMHALT            
Health dc.b $10
    END    START   
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
