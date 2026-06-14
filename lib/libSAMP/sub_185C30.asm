; =========================================================
; Game Engine Function: sub_185C30
; Address            : 0x185C30 - 0x185CB0
; =========================================================

185C30:  PUSH            {R4-R7,LR}
185C32:  ADD             R7, SP, #0xC
185C34:  PUSH.W          {R8-R11}
185C38:  SUB             SP, SP, #0x44
185C3A:  MOV             R8, R1
185C3C:  MOV             R1, R0
185C3E:  MOV             R11, R0
185C40:  LDM             R1!, {R0,R2-R4,R6}
185C42:  MOV             R9, SP
185C44:  MOV             R12, R9
185C46:  STM.W           R12!, {R0,R2-R4,R6}
185C4A:  VMOV.I32        Q8, #0
185C4E:  MOV.W           R10, #0
185C52:  LDM             R1!, {R0,R2-R4,R6}
185C54:  STM.W           R12!, {R0,R2-R4,R6}
185C58:  LDM.W           R1, {R0,R2-R6}
185C5C:  MOVS            R1, #0
185C5E:  STM.W           R12, {R0,R2-R6}
185C62:  MOV             R0, R11
185C64:  VST1.32         {D16-D17}, [R0]!
185C68:  VST1.32         {D16-D17}, [R0]!
185C6C:  VST1.32         {D16-D17}, [R0]!
185C70:  VST1.32         {D16-D17}, [R0]
185C74:  LDR.W           R4, [R8,R10,LSL#2]
185C78:  MOVS            R6, #0x20 ; ' '
185C7A:  CBZ             R4, loc_185C9A
185C7C:  LSLS            R0, R4, #0x1F
185C7E:  BEQ             loc_185C92
185C80:  CBZ             R1, loc_185C88
185C82:  MOV             R0, R9; int
185C84:  BL              sub_185E5E
185C88:  MOV             R0, R11
185C8A:  MOV             R1, R9
185C8C:  BL              sub_185EC4
185C90:  MOVS            R1, #0
185C92:  SUBS            R6, #1
185C94:  ADDS            R1, #1
185C96:  LSRS            R4, R4, #1
185C98:  BNE             loc_185C7C
185C9A:  ADD.W           R10, R10, #1
185C9E:  UXTAH.W         R1, R1, R6
185CA2:  CMP.W           R10, #8
185CA6:  BNE             loc_185C74
185CA8:  ADD             SP, SP, #0x44 ; 'D'
185CAA:  POP.W           {R8-R11}
185CAE:  POP             {R4-R7,PC}
