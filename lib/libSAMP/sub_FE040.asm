; =========================================================
; Game Engine Function: sub_FE040
; Address            : 0xFE040 - 0xFE0A0
; =========================================================

FE040:  PUSH            {R4-R7,LR}
FE042:  ADD             R7, SP, #0xC
FE044:  PUSH.W          {R8}
FE048:  VPUSH           {D8}
FE04C:  MOV             R4, R3
FE04E:  MOV             R8, R2
FE050:  MOV             R6, R1
FE052:  MOV             R5, R0
FE054:  VMOV            S16, R3
FE058:  BL              sub_1082E4
FE05C:  CBZ             R0, loc_FE082
FE05E:  LDR             R0, [R0,#0x18]
FE060:  CMP             R0, R5
FE062:  BNE             loc_FE082
FE064:  CBNZ            R6, loc_FE06C
FE066:  CMP.W           R8, #0xA0
FE06A:  BEQ             loc_FE082
FE06C:  LDR             R0, =(dword_24757C - 0xFE076)
FE06E:  LDR             R1, =(dword_247578 - 0xFE078)
FE070:  LDR             R2, =(dword_247580 - 0xFE07A)
FE072:  ADD             R0, PC; dword_24757C
FE074:  ADD             R1, PC; dword_247578
FE076:  ADD             R2, PC; dword_247580
FE078:  STR.W           R8, [R0]
FE07C:  STR             R6, [R1]
FE07E:  VSTR            S16, [R2]
FE082:  LDR             R0, =(off_247588 - 0xFE08E)
FE084:  MOV             R1, R6
FE086:  MOV             R2, R8
FE088:  MOV             R3, R4
FE08A:  ADD             R0, PC; off_247588
FE08C:  LDR.W           R12, [R0]
FE090:  MOV             R0, R5
FE092:  VPOP            {D8}
FE096:  POP.W           {R8}
FE09A:  POP.W           {R4-R7,LR}
FE09E:  BX              R12
