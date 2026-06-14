; =========================================================
; Game Engine Function: sub_14DEE8
; Address            : 0x14DEE8 - 0x14DF3E
; =========================================================

14DEE8:  PUSH            {R7,LR}
14DEEA:  MOV             R7, SP
14DEEC:  SUB             SP, SP, #0x128
14DEEE:  LDRD.W          R1, R0, [R0]; src
14DEF2:  MOVS            R3, #0
14DEF4:  ASRS            R2, R0, #0x1F
14DEF6:  ADD.W           R0, R0, R2,LSR#29
14DEFA:  MOVS            R2, #1
14DEFC:  ADD.W           R2, R2, R0,ASR#3; size
14DF00:  ADD             R0, SP, #0x130+var_12C; int
14DF02:  BL              sub_17D4F2
14DF06:  ADD             R1, SP, #0x130+var_C; int
14DF08:  MOVS            R2, #0x20 ; ' '
14DF0A:  MOVS            R3, #1
14DF0C:  BL              sub_17D786
14DF10:  ADD             R0, SP, #0x130+var_12C; int
14DF12:  ADD             R1, SP, #0x130+var_10; int
14DF14:  MOVS            R2, #0x20 ; ' '
14DF16:  MOVS            R3, #1
14DF18:  BL              sub_17D786
14DF1C:  ADD             R0, SP, #0x130+var_12C; int
14DF1E:  ADD             R1, SP, #0x130+var_14; int
14DF20:  MOVS            R2, #0x20 ; ' '
14DF22:  MOVS            R3, #1
14DF24:  BL              sub_17D786
14DF28:  ADD             R0, SP, #0x130+var_12C; int
14DF2A:  ADD             R1, SP, #0x130+var_18; int
14DF2C:  MOVS            R2, #0x20 ; ' '
14DF2E:  MOVS            R3, #1
14DF30:  BL              sub_17D786
14DF34:  ADD             R0, SP, #0x130+var_12C
14DF36:  BL              sub_17D542
14DF3A:  ADD             SP, SP, #0x128
14DF3C:  POP             {R7,PC}
