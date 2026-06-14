; =========================================================
; Game Engine Function: sub_111FBC
; Address            : 0x111FBC - 0x11200C
; =========================================================

111FBC:  PUSH            {R4,R6,R7,LR}
111FBE:  ADD             R7, SP, #8
111FC0:  LDRD.W          R12, R2, [R0]
111FC4:  LDR             R3, [R1,#4]
111FC6:  CMP             R2, R12
111FC8:  BEQ             loc_111FF0
111FCA:  MOV.W           LR, #0
111FCE:  LDR.W           R4, [R2,#-8]!
111FD2:  STR.W           R4, [R3,#-8]
111FD6:  CMP             R2, R12
111FD8:  LDR             R4, [R2,#4]
111FDA:  STR.W           R4, [R3,#-4]
111FDE:  STRD.W          LR, LR, [R2]
111FE2:  LDR             R3, [R1,#4]
111FE4:  SUB.W           R3, R3, #8
111FE8:  STR             R3, [R1,#4]
111FEA:  BNE             loc_111FCE
111FEC:  LDR.W           R12, [R0]
111FF0:  STR             R3, [R0]
111FF2:  STR.W           R12, [R1,#4]
111FF6:  LDR             R2, [R1,#8]
111FF8:  LDR             R3, [R0,#4]
111FFA:  STR             R2, [R0,#4]
111FFC:  STR             R3, [R1,#8]
111FFE:  LDR             R2, [R1,#0xC]
112000:  LDR             R3, [R0,#8]
112002:  STR             R2, [R0,#8]
112004:  LDR             R0, [R1,#4]
112006:  STR             R3, [R1,#0xC]
112008:  STR             R0, [R1]
11200A:  POP             {R4,R6,R7,PC}
