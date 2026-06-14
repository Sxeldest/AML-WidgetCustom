; =========================================================
; Game Engine Function: isqrt32
; Address            : 0xC0BF0 - 0xC0C28
; =========================================================

C0BF0:  CLZ.W           R1, R0
C0BF4:  RSB.W           R1, R1, #0x1F
C0BF8:  MOV.W           R12, R1,ASR#1
C0BFC:  MOVS            R1, #1
C0BFE:  LSL.W           R2, R1, R12
C0C02:  MOVS            R1, #0
C0C04:  ADD.W           R3, R2, R1,LSL#1
C0C08:  LSL.W           R3, R3, R12
C0C0C:  CMP             R0, R3
C0C0E:  ITT CS
C0C10:  ADDCS           R1, R1, R2
C0C12:  SUBCS           R0, R0, R3
C0C14:  SUB.W           R3, R12, #1
C0C18:  CMP.W           R12, #0
C0C1C:  MOV.W           R2, R2,LSR#1
C0C20:  MOV             R12, R3
C0C22:  BGT             loc_C0C04
C0C24:  MOV             R0, R1
C0C26:  BX              LR
