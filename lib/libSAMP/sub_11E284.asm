; =========================================================
; Game Engine Function: sub_11E284
; Address            : 0x11E284 - 0x11E2B6
; =========================================================

11E284:  PUSH            {R4-R7,LR}
11E286:  ADD             R7, SP, #0xC
11E288:  PUSH.W          {R8}
11E28C:  SUB             SP, SP, #8
11E28E:  MOV             R4, R3
11E290:  MOV             R8, R2
11E292:  MOV             R6, R1
11E294:  MOV             R5, R0
11E296:  BL              sub_11E2BC
11E29A:  LDR             R0, =(unk_263808 - 0x11E2A6)
11E29C:  MOV             R2, R6
11E29E:  LDR             R1, [R7,#arg_0]
11E2A0:  MOV             R3, R8
11E2A2:  ADD             R0, PC; unk_263808
11E2A4:  STRD.W          R4, R1, [SP,#0x18+var_18]
11E2A8:  MOV             R1, R5
11E2AA:  BL              sub_11E388
11E2AE:  ADD             SP, SP, #8
11E2B0:  POP.W           {R8}
11E2B4:  POP             {R4-R7,PC}
