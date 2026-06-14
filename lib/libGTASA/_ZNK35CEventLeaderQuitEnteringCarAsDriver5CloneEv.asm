; =========================================================
; Game Engine Function: _ZNK35CEventLeaderQuitEnteringCarAsDriver5CloneEv
; Address            : 0x378874 - 0x3788E2
; =========================================================

378874:  PUSH            {R7,LR}
378876:  MOV             R7, SP
378878:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378882)
37887A:  MOV.W           LR, #0
37887E:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
378880:  LDR             R0, [R0]; CPools::ms_pEventPool ...
378882:  LDR             R1, [R0]; CPools::ms_pEventPool
378884:  LDRD.W          R12, R0, [R1,#8]
378888:  ADDS            R0, #1
37888A:  STR             R0, [R1,#0xC]
37888C:  CMP             R0, R12
37888E:  BNE             loc_37889E
378890:  MOVS            R0, #0
378892:  MOVS.W          R2, LR,LSL#31
378896:  STR             R0, [R1,#0xC]
378898:  BNE             loc_3788D0
37889A:  MOV.W           LR, #1
37889E:  LDR             R2, [R1,#4]
3788A0:  LDRSB           R3, [R2,R0]
3788A2:  CMP.W           R3, #0xFFFFFFFF
3788A6:  BGT             loc_378888
3788A8:  AND.W           R3, R3, #0x7F
3788AC:  STRB            R3, [R2,R0]
3788AE:  LDR             R0, [R1,#4]
3788B0:  LDR             R2, [R1,#0xC]
3788B2:  LDRB            R3, [R0,R2]
3788B4:  AND.W           R12, R3, #0x80
3788B8:  ADDS            R3, #1
3788BA:  AND.W           R3, R3, #0x7F
3788BE:  ORR.W           R3, R3, R12
3788C2:  STRB            R3, [R0,R2]
3788C4:  LDR             R0, [R1]
3788C6:  LDR             R1, [R1,#0xC]
3788C8:  ADD.W           R1, R1, R1,LSL#4
3788CC:  ADD.W           R0, R0, R1,LSL#2
3788D0:  LDR             R1, =(_ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr - 0x3788DA)
3788D2:  MOVS            R2, #0
3788D4:  STRB            R2, [R0,#8]
3788D6:  ADD             R1, PC; _ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr
3788D8:  LDR             R1, [R1]; `vtable for'CEventLeaderQuitEnteringCarAsDriver ...
3788DA:  ADDS            R1, #8
3788DC:  STRD.W          R1, R2, [R0]
3788E0:  POP             {R7,PC}
