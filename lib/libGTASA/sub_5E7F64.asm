; =========================================================
; Game Engine Function: sub_5E7F64
; Address            : 0x5E7F64 - 0x5E7FB2
; =========================================================

5E7F64:  PUSH            {R4,R5,R7,LR}
5E7F66:  ADD             R7, SP, #8
5E7F68:  MOV             R5, R1
5E7F6A:  MOV             R4, R2
5E7F6C:  CBZ             R5, loc_5E7F86
5E7F6E:  MOV             R1, R5
5E7F70:  MOVS            R2, #0xA
5E7F72:  MOVS            R3, #0
5E7F74:  BLX.W           __aeabi_uldivmod
5E7F78:  ORR.W           R2, R2, #0x30 ; '0'
5E7F7C:  STRB.W          R2, [R4,#-1]!
5E7F80:  CMP             R5, #9
5E7F82:  MOV             R5, R1
5E7F84:  BHI             loc_5E7F6E
5E7F86:  CBZ             R0, loc_5E7FAE
5E7F88:  MOV             R1, #0xCCCCCCCD
5E7F90:  UMULL.W         R2, R3, R0, R1
5E7F94:  CMP             R0, #9
5E7F96:  MOV.W           R2, R3,LSR#3
5E7F9A:  ADD.W           R3, R2, R2,LSL#2
5E7F9E:  SUB.W           R3, R0, R3,LSL#1
5E7FA2:  MOV             R0, R2
5E7FA4:  ORR.W           R3, R3, #0x30 ; '0'
5E7FA8:  STRB.W          R3, [R4,#-1]!
5E7FAC:  BHI             loc_5E7F90
5E7FAE:  MOV             R0, R4
5E7FB0:  POP             {R4,R5,R7,PC}
