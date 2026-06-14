; =========================================================
; Game Engine Function: sub_182FAE
; Address            : 0x182FAE - 0x183002
; =========================================================

182FAE:  PUSH            {R4-R7,LR}
182FB0:  ADD             R7, SP, #0xC
182FB2:  PUSH.W          {R11}
182FB6:  LDR             R1, [R0,#8]
182FB8:  MOV             R4, R0
182FBA:  MOVS            R5, #1
182FBC:  LDR.W           R0, [R1,#0x120]; void *
182FC0:  MOV             R2, R1
182FC2:  STR             R0, [R4,#0xC]
182FC4:  LDR.W           R2, [R2,#0x120]
182FC8:  ADDS            R5, #1
182FCA:  CMP             R2, R1
182FCC:  BNE             loc_182FC4
182FCE:  SUBS            R2, R5, #1
182FD0:  CMP             R2, #9
182FD2:  BCC             loc_182FEA
182FD4:  LDR.W           R6, [R0,#0x120]
182FD8:  BLX             j__ZdlPv; operator delete(void *)
182FDC:  SUBS            R5, #1
182FDE:  MOV             R0, R6
182FE0:  CMP             R5, #9
182FE2:  STR             R6, [R4,#0xC]
182FE4:  BGT             loc_182FD4
182FE6:  LDR             R1, [R4,#8]
182FE8:  B               loc_182FEC
182FEA:  MOV             R6, R0
182FEC:  MOVS            R0, #0
182FEE:  STR             R1, [R4,#0xC]
182FF0:  STR.W           R6, [R1,#0x120]
182FF4:  STRD.W          R1, R1, [R4]
182FF8:  STRD.W          R0, R0, [R4,#0x10]
182FFC:  POP.W           {R11}
183000:  POP             {R4-R7,PC}
