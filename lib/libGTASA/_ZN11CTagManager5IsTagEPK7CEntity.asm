; =========================================================
; Game Engine Function: _ZN11CTagManager5IsTagEPK7CEntity
; Address            : 0x361E24 - 0x361E6E
; =========================================================

361E24:  PUSH            {R4,R5,R7,LR}
361E26:  ADD             R7, SP, #8
361E28:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x361E32)
361E2A:  LDRSH.W         R0, [R0,#0x26]
361E2E:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
361E30:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
361E32:  LDR.W           R5, [R1,R0,LSL#2]
361E36:  LDR             R0, [R5]
361E38:  LDR             R1, [R0,#0x28]
361E3A:  MOV             R0, R5
361E3C:  BLX             R1
361E3E:  CMP             R0, #1
361E40:  BNE             loc_361E68
361E42:  LDRH            R0, [R5,#0x28]
361E44:  MOVS            R4, #0
361E46:  AND.W           R0, R0, #0x7800
361E4A:  CMP.W           R0, #0x3000
361E4E:  BNE             loc_361E64
361E50:  LDR             R0, [R5]
361E52:  LDR             R1, [R0,#8]
361E54:  MOV             R0, R5
361E56:  BLX             R1
361E58:  LDRSH.W         R0, [R0,#0x28]
361E5C:  CMP.W           R0, #0xFFFFFFFF
361E60:  IT GT
361E62:  MOVGT           R4, #1
361E64:  MOV             R0, R4
361E66:  POP             {R4,R5,R7,PC}
361E68:  MOVS            R4, #0
361E6A:  MOV             R0, R4
361E6C:  POP             {R4,R5,R7,PC}
