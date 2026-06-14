; =========================================================
; Game Engine Function: _ZN7OSArrayI7KeyPairED2Ev
; Address            : 0x295BD8 - 0x295BF2
; =========================================================

295BD8:  PUSH            {R4,R5,R7,LR}
295BDA:  ADD             R7, SP, #8
295BDC:  MOV             R4, R0
295BDE:  MOVS            R5, #0
295BE0:  LDR             R0, [R4,#8]; p
295BE2:  STR             R5, [R4,#4]
295BE4:  CBZ             R0, loc_295BEC
295BE6:  BLX             free
295BEA:  STR             R5, [R4,#8]
295BEC:  MOV             R0, R4
295BEE:  STR             R5, [R4]
295BF0:  POP             {R4,R5,R7,PC}
