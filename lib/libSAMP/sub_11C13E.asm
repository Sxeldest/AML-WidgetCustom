; =========================================================
; Game Engine Function: sub_11C13E
; Address            : 0x11C13E - 0x11C160
; =========================================================

11C13E:  PUSH            {R7,LR}
11C140:  MOV             R7, SP
11C142:  LDR             R3, [R0,#0xC]
11C144:  LDRD.W          LR, R12, [R0,#4]
11C148:  LDR             R2, [R2]
11C14A:  ADD.W           R0, LR, R3,ASR#1
11C14E:  LDR             R1, [R1]
11C150:  LSLS            R3, R3, #0x1F
11C152:  ITT NE
11C154:  LDRNE           R3, [R0]
11C156:  LDRNE.W         R12, [R3,R12]
11C15A:  POP.W           {R7,LR}
11C15E:  BX              R12
