; =========================================================
; Game Engine Function: isqrt32
; Address            : 0x19E9B0 - 0x19E9E8
; =========================================================

19E9B0:  CLZ.W           R1, R0
19E9B4:  RSB.W           R1, R1, #0x1F
19E9B8:  MOV.W           R12, R1,ASR#1
19E9BC:  MOVS            R1, #1
19E9BE:  LSL.W           R2, R1, R12
19E9C2:  MOVS            R1, #0
19E9C4:  ADD.W           R3, R2, R1,LSL#1
19E9C8:  LSL.W           R3, R3, R12
19E9CC:  CMP             R0, R3
19E9CE:  ITT CS
19E9D0:  ADDCS           R1, R1, R2
19E9D2:  SUBCS           R0, R0, R3
19E9D4:  SUB.W           R3, R12, #1
19E9D8:  CMP.W           R12, #0
19E9DC:  MOV.W           R2, R2,LSR#1
19E9E0:  MOV             R12, R3
19E9E2:  BGT             loc_19E9C4
19E9E4:  MOV             R0, R1
19E9E6:  BX              LR
