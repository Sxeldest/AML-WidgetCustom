; =========================================================
; Game Engine Function: _Z32RwCameraForAllClumpsNotInFrustumP8RwCameraiPv
; Address            : 0x21E7B8 - 0x21E82A
; =========================================================

21E7B8:  PUSH            {R4-R7,LR}
21E7BA:  ADD             R7, SP, #0xC
21E7BC:  PUSH.W          {R8-R11}
21E7C0:  SUB             SP, SP, #4
21E7C2:  MOV             R8, R0
21E7C4:  LDR             R0, =(dword_6BD638 - 0x21E7CC)
21E7C6:  MOV             R9, R2
21E7C8:  ADD             R0, PC; dword_6BD638
21E7CA:  LDR             R0, [R0]
21E7CC:  ADD             R0, R8
21E7CE:  LDR.W           R10, [R0,#0xC]
21E7D2:  CMP.W           R10, #0
21E7D6:  BEQ             loc_21E820
21E7D8:  LDRD.W          R0, R4, [R10,#0x24]
21E7DC:  MOV             R2, R1
21E7DE:  CMP             R0, R1
21E7E0:  IT LT
21E7E2:  MOVLT           R2, R0
21E7E4:  CBZ             R2, loc_21E81C
21E7E6:  MVNS            R0, R0
21E7E8:  MVNS            R1, R1
21E7EA:  CMP             R0, R1
21E7EC:  LDRH.W          R11, [R8,#0x94]
21E7F0:  IT GT
21E7F2:  MOVGT           R1, R0
21E7F4:  ADD.W           R6, R10, #0x2C ; ','
21E7F8:  ADDS            R5, R1, #1
21E7FA:  MOV             R1, R4
21E7FC:  MOV             R0, R4
21E7FE:  LDR             R4, [R1]
21E800:  CMP             R6, R1
21E802:  ITT NE
21E804:  LDRHNE          R2, [R0,#0xC]
21E806:  CMPNE           R2, R11
21E808:  BEQ             loc_21E818
21E80A:  STR.W           R1, [R10,#0x28]
21E80E:  MOV             R1, R9
21E810:  LDR             R2, [R0,#8]
21E812:  SUBS            R0, #0x20 ; ' '
21E814:  BLX             R2
21E816:  CBZ             R0, loc_21E820
21E818:  ADDS            R5, #1
21E81A:  BNE             loc_21E7FA
21E81C:  STR.W           R4, [R10,#0x28]
21E820:  MOV             R0, R8
21E822:  ADD             SP, SP, #4
21E824:  POP.W           {R8-R11}
21E828:  POP             {R4-R7,PC}
