; =========================================================
; Game Engine Function: _ZN8CVehiclenwEj
; Address            : 0x581D38 - 0x581D98
; =========================================================

581D38:  PUSH            {R7,LR}
581D3A:  MOV             R7, SP
581D3C:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x581D46)
581D3E:  MOV.W           LR, #0
581D42:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
581D44:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
581D46:  LDR             R1, [R0]; CPools::ms_pVehiclePool
581D48:  LDRD.W          R12, R0, [R1,#8]
581D4C:  ADDS            R0, #1
581D4E:  STR             R0, [R1,#0xC]
581D50:  CMP             R0, R12
581D52:  BNE             loc_581D64
581D54:  MOVS            R0, #0
581D56:  MOVS.W          R2, LR,LSL#31
581D5A:  STR             R0, [R1,#0xC]
581D5C:  IT NE
581D5E:  POPNE           {R7,PC}
581D60:  MOV.W           LR, #1
581D64:  LDR             R2, [R1,#4]
581D66:  LDRSB           R3, [R2,R0]
581D68:  CMP.W           R3, #0xFFFFFFFF
581D6C:  BGT             loc_581D4C
581D6E:  AND.W           R3, R3, #0x7F
581D72:  STRB            R3, [R2,R0]
581D74:  LDR             R0, [R1,#4]
581D76:  LDR             R2, [R1,#0xC]
581D78:  LDRB            R3, [R0,R2]
581D7A:  AND.W           R12, R3, #0x80
581D7E:  ADDS            R3, #1
581D80:  AND.W           R3, R3, #0x7F
581D84:  ORR.W           R3, R3, R12
581D88:  STRB            R3, [R0,R2]
581D8A:  MOVW            R2, #0xA2C
581D8E:  LDR             R0, [R1]
581D90:  LDR             R1, [R1,#0xC]
581D92:  MLA.W           R0, R1, R2, R0
581D96:  POP             {R7,PC}
