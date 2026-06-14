; =========================================================
; Game Engine Function: sub_186DDA
; Address            : 0x186DDA - 0x186E6E
; =========================================================

186DDA:  PUSH            {R4-R7,LR}
186DDC:  ADD             R7, SP, #0xC
186DDE:  PUSH.W          {R8-R10}
186DE2:  SUB             SP, SP, #0x80
186DE4:  MOV             R1, R0
186DE6:  ADD.W           R8, SP, #0x98+var_58
186DEA:  LDM             R1!, {R2-R6}
186DEC:  MOV             R10, R0
186DEE:  MOV             R12, R8
186DF0:  MOV             R9, SP
186DF2:  STM.W           R12!, {R2-R6}
186DF6:  VMOV.I32        Q8, #0
186DFA:  LDM             R1!, {R2-R6}
186DFC:  STM.W           R12!, {R2-R6}
186E00:  LDM.W           R1, {R0,R2-R6}
186E04:  MOV             R1, R10
186E06:  STM.W           R12, {R0,R2-R6}
186E0A:  MOV             R12, R9
186E0C:  LDM             R1!, {R2-R6}
186E0E:  STM.W           R12!, {R2-R6}
186E12:  LDM             R1!, {R2-R6}
186E14:  STM.W           R12!, {R2-R6}
186E18:  LDM.W           R1, {R0,R2-R6}
186E1C:  MOVS            R1, #0
186E1E:  STM.W           R12, {R0,R2-R6}
186E22:  MOV             R0, R10
186E24:  MOVS            R6, #0
186E26:  VST1.32         {D16-D17}, [R0]!
186E2A:  VST1.32         {D16-D17}, [R0]!
186E2E:  VST1.32         {D16-D17}, [R0]!
186E32:  VST1.32         {D16-D17}, [R0]
186E36:  LDR.W           R4, [R8,R6,LSL#2]
186E3A:  MOVS            R5, #0x20 ; ' '
186E3C:  CBZ             R4, loc_186E5C
186E3E:  LSLS            R0, R4, #0x1F
186E40:  BEQ             loc_186E54
186E42:  CBZ             R1, loc_186E4A
186E44:  MOV             R0, R9; int
186E46:  BL              sub_185E5E
186E4A:  MOV             R0, R10
186E4C:  MOV             R1, R9
186E4E:  BL              sub_185EC4
186E52:  MOVS            R1, #0
186E54:  SUBS            R5, #1
186E56:  ADDS            R1, #1
186E58:  LSRS            R4, R4, #1
186E5A:  BNE             loc_186E3E
186E5C:  ADDS            R6, #1
186E5E:  UXTAH.W         R1, R1, R5
186E62:  CMP             R6, #0x10
186E64:  BNE             loc_186E36
186E66:  ADD             SP, SP, #0x80
186E68:  POP.W           {R8-R10}
186E6C:  POP             {R4-R7,PC}
