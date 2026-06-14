; =========================================================
; Game Engine Function: sub_1201EC
; Address            : 0x1201EC - 0x120212
; =========================================================

1201EC:  PUSH            {R4,R6,R7,LR}
1201EE:  ADD             R7, SP, #8
1201F0:  MOV             R4, R0
1201F2:  LDR             R0, =(off_23494C - 0x1201F8)
1201F4:  ADD             R0, PC; off_23494C
1201F6:  LDR             R0, [R0]; dword_23DF24
1201F8:  LDR             R0, [R0]
1201FA:  LDR             R1, =(sub_120220+1 - 0x120206)
1201FC:  LDR             R2, =(unk_2638CC - 0x12020C)
1201FE:  ADD.W           R0, R0, #0x670000
120202:  ADD             R1, PC; sub_120220
120204:  ADD.W           R0, R0, #0x1C8
120208:  ADD             R2, PC; unk_2638CC
12020A:  BL              sub_164196
12020E:  MOV             R0, R4
120210:  POP             {R4,R6,R7,PC}
