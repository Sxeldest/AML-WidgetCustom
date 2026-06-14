; =========================================================
; Game Engine Function: sub_14E09C
; Address            : 0x14E09C - 0x14E0F6
; =========================================================

14E09C:  PUSH            {R7,LR}
14E09E:  MOV             R7, SP
14E0A0:  SUB             SP, SP, #0x118
14E0A2:  LDRD.W          R1, R0, [R0]; src
14E0A6:  MOVS            R3, #0
14E0A8:  ASRS            R2, R0, #0x1F
14E0AA:  ADD.W           R0, R0, R2,LSR#29
14E0AE:  MOVS            R2, #1
14E0B0:  ADD.W           R2, R2, R0,ASR#3; size
14E0B4:  MOV             R0, SP; int
14E0B6:  BL              sub_17D4F2
14E0BA:  SUBS            R1, R7, #2; int
14E0BC:  MOVS            R2, #0x10
14E0BE:  MOVS            R3, #1
14E0C0:  BL              sub_17D786
14E0C4:  SUBS            R1, R7, #3; int
14E0C6:  MOV             R0, SP; int
14E0C8:  MOVS            R2, #8
14E0CA:  MOVS            R3, #1
14E0CC:  BL              sub_17D786
14E0D0:  LDR             R0, =(off_23496C - 0x14E0D6)
14E0D2:  ADD             R0, PC; off_23496C
14E0D4:  LDR             R0, [R0]; dword_23DEF4
14E0D6:  LDR             R0, [R0]
14E0D8:  LDR.W           R0, [R0,#0x3B0]
14E0DC:  LDR             R0, [R0,#4]
14E0DE:  CBZ             R0, loc_14E0EC
14E0E0:  LDRH.W          R1, [R7,#-2]
14E0E4:  LDRB.W          R2, [R7,#-3]
14E0E8:  BL              sub_15018E
14E0EC:  MOV             R0, SP
14E0EE:  BL              sub_17D542
14E0F2:  ADD             SP, SP, #0x118
14E0F4:  POP             {R7,PC}
