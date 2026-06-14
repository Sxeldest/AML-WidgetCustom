; =========================================================
; Game Engine Function: sub_11D17E
; Address            : 0x11D17E - 0x11D1A2
; =========================================================

11D17E:  PUSH            {R4,R6,R7,LR}
11D180:  ADD             R7, SP, #8
11D182:  LDR             R4, [R0,#0xC]
11D184:  LDRD.W          LR, R12, [R0,#4]
11D188:  LDR             R3, [R3]
11D18A:  ADD.W           R0, LR, R4,ASR#1
11D18E:  LDR             R2, [R2]
11D190:  LDR             R1, [R1]
11D192:  LSLS            R4, R4, #0x1F
11D194:  ITT NE
11D196:  LDRNE           R4, [R0]
11D198:  LDRNE.W         R12, [R4,R12]
11D19C:  POP.W           {R4,R6,R7,LR}
11D1A0:  BX              R12
