; =========================================================
; Game Engine Function: sub_11C3D2
; Address            : 0x11C3D2 - 0x11C3F4
; =========================================================

11C3D2:  PUSH            {R7,LR}
11C3D4:  MOV             R7, SP
11C3D6:  LDR             R3, [R0,#0xC]
11C3D8:  LDRD.W          LR, R12, [R0,#4]
11C3DC:  LDR             R2, [R2]
11C3DE:  ADD.W           R0, LR, R3,ASR#1
11C3E2:  LDR             R1, [R1]
11C3E4:  LSLS            R3, R3, #0x1F
11C3E6:  ITT NE
11C3E8:  LDRNE           R3, [R0]
11C3EA:  LDRNE.W         R12, [R3,R12]
11C3EE:  POP.W           {R7,LR}
11C3F2:  BX              R12
