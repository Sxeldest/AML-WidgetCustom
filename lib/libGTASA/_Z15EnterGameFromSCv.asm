; =========================================================
; Game Engine Function: _Z15EnterGameFromSCv
; Address            : 0x2ACFCC - 0x2ACFE6
; =========================================================

2ACFCC:  PUSH            {R7,LR}
2ACFCE:  MOV             R7, SP
2ACFD0:  BLX             _Z12IsSCSignedInv; IsSCSignedIn(void)
2ACFD4:  CMP             R0, #1
2ACFD6:  IT NE
2ACFD8:  POPNE           {R7,PC}
2ACFDA:  LDR             R0, =(lastUpdateTime_ptr - 0x2ACFE2)
2ACFDC:  MOVS            R1, #0
2ACFDE:  ADD             R0, PC; lastUpdateTime_ptr
2ACFE0:  LDR             R0, [R0]; lastUpdateTime
2ACFE2:  STR             R1, [R0]
2ACFE4:  POP             {R7,PC}
