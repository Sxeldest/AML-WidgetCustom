; =========================================================
; Game Engine Function: alIsAuxiliaryEffectSlot
; Address            : 0x23E12A - 0x23E15A
; =========================================================

23E12A:  PUSH            {R4,R5,R7,LR}
23E12C:  ADD             R7, SP, #8
23E12E:  MOV             R4, R0
23E130:  BLX             j_GetContextRef
23E134:  MOV             R5, R0
23E136:  CBZ             R5, loc_23E154
23E138:  ADD.W           R0, R5, #0x2C ; ','
23E13C:  MOV             R1, R4
23E13E:  BLX             j_LookupUIntMapKey
23E142:  MOV             R4, R0
23E144:  MOV             R0, R5
23E146:  BLX             j_ALCcontext_DecRef
23E14A:  CMP             R4, #0
23E14C:  IT NE
23E14E:  MOVNE           R4, #1
23E150:  MOV             R0, R4
23E152:  POP             {R4,R5,R7,PC}
23E154:  MOVS            R4, #0
23E156:  MOV             R0, R4
23E158:  POP             {R4,R5,R7,PC}
