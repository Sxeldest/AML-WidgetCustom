; =========================================================
; Game Engine Function: _Z17findDataStringEOLPKcS0_
; Address            : 0x279F98 - 0x279FDE
; =========================================================

279F98:  PUSH            {R4-R7,LR}
279F9A:  ADD             R7, SP, #0xC
279F9C:  PUSH.W          {R11}
279FA0:  MOV             R4, R1
279FA2:  MOV             R1, R0; char *
279FA4:  MOVS            R5, #0
279FA6:  MOVS            R0, #1
279FA8:  MOVW            R2, #0x2401
279FAC:  B               loc_279FB0
279FAE:  ADDS            R5, #1
279FB0:  LDRB            R3, [R1,R5]
279FB2:  CMP             R3, #0xD
279FB4:  BHI             loc_279FAE
279FB6:  LSL.W           R3, R0, R3
279FBA:  TST             R3, R2
279FBC:  BEQ             loc_279FAE
279FBE:  LDR             R6, =(unk_6DE160 - 0x279FC6)
279FC0:  MOV             R2, R5; size_t
279FC2:  ADD             R6, PC; unk_6DE160
279FC4:  MOV             R0, R6; char *
279FC6:  BLX             strncpy
279FCA:  MOVS            R0, #0
279FCC:  MOV             R1, R4; char *
279FCE:  STRB            R0, [R6,R5]
279FD0:  MOV             R0, R6; char *
279FD2:  MOV             R2, R5; int
279FD4:  POP.W           {R11}
279FD8:  POP.W           {R4-R7,LR}
279FDC:  B               _Z14findDataStringPKcS0_i; findDataString(char const*,char const*,int)
