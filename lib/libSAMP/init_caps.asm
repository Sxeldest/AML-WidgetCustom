; =========================================================
; Game Engine Function: init_caps
; Address            : 0x18EB9C - 0x18EBF0
; =========================================================

18EB9C:  PUSH            {R4-R7,LR}
18EB9E:  ADD             R7, SP, #0xC
18EBA0:  PUSH.W          {R8,R9,R11}
18EBA4:  LDR             R5, [R0,#8]
18EBA6:  CMP             R5, #1
18EBA8:  BLT             loc_18EBEA
18EBAA:  LDR.W           R12, [R0,#0x18]
18EBAE:  ADD.W           R4, R3, R2,LSL#1
18EBB2:  SUB.W           R8, R4, #1
18EBB6:  LDR.W           LR, [R0,#0x60]
18EBBA:  MOVS            R6, #0
18EBBC:  LDRH.W          R4, [R12],#2
18EBC0:  LDRSH.W         R9, [R12,R6,LSL#1]
18EBC4:  MLA.W           R5, R5, R8, LR
18EBC8:  SXTH            R4, R4
18EBCA:  SUB.W           R4, R9, R4
18EBCE:  LSLS            R4, R2
18EBD0:  MULS            R4, R3
18EBD2:  LDRB            R5, [R5,R6]
18EBD4:  ADDS            R5, #0x40 ; '@'
18EBD6:  MULS            R4, R5
18EBD8:  ASRS            R4, R4, #2
18EBDA:  STR.W           R4, [R1,R6,LSL#2]
18EBDE:  ADDS            R6, #1
18EBE0:  UXTH.W          R4, R9
18EBE4:  LDR             R5, [R0,#8]
18EBE6:  CMP             R6, R5
18EBE8:  BLT             loc_18EBC0
18EBEA:  POP.W           {R8,R9,R11}
18EBEE:  POP             {R4-R7,PC}
