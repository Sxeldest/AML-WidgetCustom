; =========================================================
; Game Engine Function: _ZNK29CEventLeaderExitedCarAsDriver13CloneEditableEv
; Address            : 0x3787B4 - 0x378830
; =========================================================

3787B4:  PUSH            {R7,LR}
3787B6:  MOV             R7, SP
3787B8:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3787C2)
3787BA:  MOV.W           LR, #0
3787BE:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
3787C0:  LDR             R0, [R0]; CPools::ms_pEventPool ...
3787C2:  LDR             R1, [R0]; CPools::ms_pEventPool
3787C4:  LDRD.W          R12, R0, [R1,#8]
3787C8:  ADDS            R0, #1
3787CA:  STR             R0, [R1,#0xC]
3787CC:  CMP             R0, R12
3787CE:  BNE             loc_3787DE
3787D0:  MOVS            R0, #0
3787D2:  MOVS.W          R2, LR,LSL#31
3787D6:  STR             R0, [R1,#0xC]
3787D8:  BNE             loc_378810
3787DA:  MOV.W           LR, #1
3787DE:  LDR             R2, [R1,#4]
3787E0:  LDRSB           R3, [R2,R0]
3787E2:  CMP.W           R3, #0xFFFFFFFF
3787E6:  BGT             loc_3787C8
3787E8:  AND.W           R3, R3, #0x7F
3787EC:  STRB            R3, [R2,R0]
3787EE:  LDR             R0, [R1,#4]
3787F0:  LDR             R2, [R1,#0xC]
3787F2:  LDRB            R3, [R0,R2]
3787F4:  AND.W           R12, R3, #0x80
3787F8:  ADDS            R3, #1
3787FA:  AND.W           R3, R3, #0x7F
3787FE:  ORR.W           R3, R3, R12
378802:  STRB            R3, [R0,R2]
378804:  LDR             R0, [R1]
378806:  LDR             R1, [R1,#0xC]
378808:  ADD.W           R1, R1, R1,LSL#4
37880C:  ADD.W           R0, R0, R1,LSL#2
378810:  LDR             R1, =(_ZTV29CEventLeaderExitedCarAsDriver_ptr - 0x37881E)
378812:  MOVS            R2, #0
378814:  STR             R2, [R0,#4]
378816:  MOVW            R2, #0x100
37881A:  ADD             R1, PC; _ZTV29CEventLeaderExitedCarAsDriver_ptr
37881C:  MOVT            R2, #0xC8
378820:  STR             R2, [R0,#8]
378822:  MOVW            R2, #0xFFFF
378826:  LDR             R1, [R1]; `vtable for'CEventLeaderExitedCarAsDriver ...
378828:  STRH            R2, [R0,#0xC]
37882A:  ADDS            R1, #8
37882C:  STR             R1, [R0]
37882E:  POP             {R7,PC}
