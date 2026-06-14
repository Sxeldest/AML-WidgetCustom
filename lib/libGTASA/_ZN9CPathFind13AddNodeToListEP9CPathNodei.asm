; =========================================================
; Game Engine Function: _ZN9CPathFind13AddNodeToListEP9CPathNodei
; Address            : 0x3161DE - 0x316214
; =========================================================

3161DE:  PUSH            {R7,LR}
3161E0:  MOV             R7, SP
3161E2:  MOV             R3, R2
3161E4:  BFC.W           R3, #9, #0x17
3161E8:  ADD.W           LR, R0, R3,LSL#2
3161EC:  LDR.W           R3, [LR,#4]!
3161F0:  STRD.W          R3, LR, [R1]
3161F4:  LDR.W           R12, [LR]
3161F8:  CMP.W           R12, #0
3161FC:  IT NE
3161FE:  STRNE.W         R1, [R12,#4]
316202:  STR.W           R1, [LR]
316206:  STRH            R2, [R1,#0xE]
316208:  MOVW            R1, #0x3584
31620C:  LDR             R2, [R0,R1]
31620E:  ADDS            R2, #1
316210:  STR             R2, [R0,R1]
316212:  POP             {R7,PC}
