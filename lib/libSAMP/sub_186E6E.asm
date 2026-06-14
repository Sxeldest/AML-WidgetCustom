; =========================================================
; Game Engine Function: sub_186E6E
; Address            : 0x186E6E - 0x186EE8
; =========================================================

186E6E:  PUSH            {R4-R7,LR}
186E70:  ADD             R7, SP, #0xC
186E72:  PUSH.W          {R8-R11}
186E76:  SUB             SP, SP, #0x44
186E78:  MOV             R11, R2
186E7A:  LDM             R0!, {R2-R6}
186E7C:  MOV             R9, SP
186E7E:  MOV             R8, R1
186E80:  MOV             R1, R9
186E82:  VMOV.I32        Q8, #0
186E86:  STM             R1!, {R2-R6}
186E88:  MOV.W           R10, #0
186E8C:  LDM             R0!, {R2-R6}
186E8E:  STM             R1!, {R2-R6}
186E90:  LDM.W           R0, {R2-R6,R12}
186E94:  MOV             R0, R11
186E96:  STM.W           R1, {R2-R6,R12}
186E9A:  MOVS            R1, #0
186E9C:  VST1.32         {D16-D17}, [R0]!
186EA0:  VST1.32         {D16-D17}, [R0]!
186EA4:  VST1.32         {D16-D17}, [R0]!
186EA8:  VST1.32         {D16-D17}, [R0]
186EAC:  LDR.W           R5, [R8,R10,LSL#2]
186EB0:  MOVS            R6, #0x20 ; ' '
186EB2:  CBZ             R5, loc_186ED2
186EB4:  LSLS            R0, R5, #0x1F
186EB6:  BEQ             loc_186ECA
186EB8:  CBZ             R1, loc_186EC0
186EBA:  MOV             R0, R9; int
186EBC:  BL              sub_185E5E
186EC0:  MOV             R0, R11
186EC2:  MOV             R1, R9
186EC4:  BL              sub_185EC4
186EC8:  MOVS            R1, #0
186ECA:  SUBS            R6, #1
186ECC:  ADDS            R1, #1
186ECE:  LSRS            R5, R5, #1
186ED0:  BNE             loc_186EB4
186ED2:  ADD.W           R10, R10, #1
186ED6:  UXTAH.W         R1, R1, R6
186EDA:  CMP.W           R10, #0x10
186EDE:  BNE             loc_186EAC
186EE0:  ADD             SP, SP, #0x44 ; 'D'
186EE2:  POP.W           {R8-R11}
186EE6:  POP             {R4-R7,PC}
