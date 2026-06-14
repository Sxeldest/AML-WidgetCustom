; =========================================================
; Game Engine Function: sub_2211E0
; Address            : 0x2211E0 - 0x221224
; =========================================================

2211E0:  PUSH            {R4-R7,LR}
2211E4:  ADD             R7, SP, #0xC
2211E8:  EOR             R4, R0, R1
2211EC:  MOV             R5, R0
2211F0:  MOV             R6, R2
2211F4:  EOR             R12, R0, R0,ASR#31
2211F8:  EOR             LR, R1, R1,ASR#31
2211FC:  SUB             R0, R12, R0,ASR#31
221200:  SUB             R1, LR, R1,ASR#31
221204:  BL              sub_221224
221208:  LDR             R1, [R6]
22120C:  EOR             R0, R0, R4,ASR#31
221210:  EOR             R1, R1, R5,ASR#31
221214:  SUB             R0, R0, R4,ASR#31
221218:  SUB             R1, R1, R5,ASR#31
22121C:  STR             R1, [R6]
221220:  POP             {R4-R7,PC}
