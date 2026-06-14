; =========================================================
; Game Engine Function: sub_FBB9C
; Address            : 0xFBB9C - 0xFBBEE
; =========================================================

FBB9C:  PUSH            {R4-R7,LR}
FBB9E:  ADD             R7, SP, #0xC
FBBA0:  PUSH.W          {R11}
FBBA4:  MOV             R4, R0
FBBA6:  LDR             R0, =(off_23494C - 0xFBBB2)
FBBA8:  LDR             R1, =(off_234A98 - 0xFBBB8)
FBBAA:  MOVW            R2, #0x738
FBBAE:  ADD             R0, PC; off_23494C
FBBB0:  MOVT            R2, #0x82
FBBB4:  ADD             R1, PC; off_234A98
FBBB6:  LDR             R6, [R0]; dword_23DF24
FBBB8:  LDR             R1, [R1]; dword_25C9CC
FBBBA:  LDR             R0, [R6]
FBBBC:  LDR             R1, [R1]
FBBBE:  LDR             R3, [R0,R2]
FBBC0:  ADDS            R5, R3, #1
FBBC2:  STR             R5, [R0,R2]
FBBC4:  RSB.W           R0, R3, R3,LSL#4
FBBC8:  LDR.W           R2, [R1,R0,LSL#2]
FBBCC:  ADD.W           R5, R1, R0,LSL#2
FBBD0:  MOV             R0, R5
FBBD2:  LDR             R2, [R2,#0x1C]
FBBD4:  BLX             R2
FBBD6:  LDR             R0, [R6]
FBBD8:  MOV             R1, #0x6796D4
FBBE0:  LDR             R0, [R0,R1]
FBBE2:  STR.W           R5, [R0,R4,LSL#2]
FBBE6:  MOV             R0, R5
FBBE8:  POP.W           {R11}
FBBEC:  POP             {R4-R7,PC}
