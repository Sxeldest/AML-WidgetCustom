; =========================================================
; Game Engine Function: sub_21DB20
; Address            : 0x21DB20 - 0x21DB38
; =========================================================

21DB20:  CMP             R0, #1
21DB22:  ITT EQ
21DB24:  ADDEQ.W         R0, R1, #0x58 ; 'X'
21DB28:  BEQ.W           sub_22497C
21DB2C:  PUSH            {R7,LR}
21DB2E:  MOV             R7, SP
21DB30:  LDR.W           R0, [R1,#-0x14]
21DB34:  BL              sub_21E258
