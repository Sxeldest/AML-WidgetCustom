; =========================================================
; Game Engine Function: sub_FE9BC
; Address            : 0xFE9BC - 0xFEA20
; =========================================================

FE9BC:  PUSH            {R4-R7,LR}
FE9BE:  ADD             R7, SP, #0xC
FE9C0:  PUSH.W          {R8}
FE9C4:  MOV             R4, R0
FE9C6:  LDR             R0, =(dword_25AEAC - 0xFE9CC)
FE9C8:  ADD             R0, PC; dword_25AEAC
FE9CA:  STR             R4, [R0]
FE9CC:  MOVW            R0, #0x4E1F
FE9D0:  CMP             R4, R0
FE9D2:  BHI             loc_FEA0E
FE9D4:  LDR             R6, =(unk_2475F8 - 0xFE9DA)
FE9D6:  ADD             R6, PC; unk_2475F8
FE9D8:  LDR.W           R0, [R6,R4,LSL#2]
FE9DC:  CBZ             R0, loc_FEA0E
FE9DE:  BL              sub_163768
FE9E2:  LDR.W           R5, [R0,R4,LSL#2]
FE9E6:  LDR             R0, [R5]
FE9E8:  LDR             R1, [R0,#0x14]
FE9EA:  MOV             R0, R5
FE9EC:  BLX             R1
FE9EE:  CMP             R0, #6
FE9F0:  BNE             loc_FEA08
FE9F2:  MOV             R0, R5
FE9F4:  BL              sub_163810
FE9F8:  CBZ             R0, loc_FEA08
FE9FA:  LDR.W           R8, [R6,R4,LSL#2]
FE9FE:  MOV             R0, R5
FEA00:  BL              sub_16381A
FEA04:  STR.W           R8, [R0]
FEA08:  MOVS            R0, #0
FEA0A:  STR.W           R0, [R6,R4,LSL#2]
FEA0E:  LDR             R0, =(off_25AEB0 - 0xFEA14)
FEA10:  ADD             R0, PC; off_25AEB0
FEA12:  LDR             R1, [R0]
FEA14:  MOV             R0, R4
FEA16:  POP.W           {R8}
FEA1A:  POP.W           {R4-R7,LR}
FEA1E:  BX              R1
