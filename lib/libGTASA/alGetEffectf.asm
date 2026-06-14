; =========================================================
; Game Engine Function: alGetEffectf
; Address            : 0x253A40 - 0x253AC0
; =========================================================

253A40:  PUSH            {R4-R7,LR}
253A42:  ADD             R7, SP, #0xC
253A44:  PUSH.W          {R8}
253A48:  MOV             R8, R2
253A4A:  MOV             R6, R1
253A4C:  MOV             R5, R0
253A4E:  BLX             j_GetContextRef
253A52:  MOV             R4, R0
253A54:  CBZ             R4, loc_253A72
253A56:  LDR.W           R0, [R4,#0x88]
253A5A:  MOV             R1, R5
253A5C:  ADDS            R0, #0x64 ; 'd'
253A5E:  BLX             j_LookupUIntMapKey
253A62:  CBZ             R0, loc_253A78
253A64:  LDR.W           R5, [R0,#0xAC]
253A68:  MOV             R1, R4
253A6A:  MOV             R2, R6
253A6C:  MOV             R3, R8
253A6E:  BLX             R5
253A70:  B               loc_253AB2
253A72:  POP.W           {R8}
253A76:  POP             {R4-R7,PC}
253A78:  LDR             R0, =(TrapALError_ptr - 0x253A7E)
253A7A:  ADD             R0, PC; TrapALError_ptr
253A7C:  LDR             R0, [R0]; TrapALError
253A7E:  LDRB            R0, [R0]
253A80:  CMP             R0, #0
253A82:  ITT NE
253A84:  MOVNE           R0, #5; sig
253A86:  BLXNE           raise
253A8A:  LDREX.W         R0, [R4,#0x50]
253A8E:  CBNZ            R0, loc_253AAA
253A90:  ADD.W           R0, R4, #0x50 ; 'P'
253A94:  MOVW            R1, #0xA001
253A98:  DMB.W           ISH
253A9C:  STREX.W         R2, R1, [R0]
253AA0:  CBZ             R2, loc_253AAE
253AA2:  LDREX.W         R2, [R0]
253AA6:  CMP             R2, #0
253AA8:  BEQ             loc_253A9C
253AAA:  CLREX.W
253AAE:  DMB.W           ISH
253AB2:  MOV             R0, R4
253AB4:  POP.W           {R8}
253AB8:  POP.W           {R4-R7,LR}
253ABC:  B.W             ALCcontext_DecRef
