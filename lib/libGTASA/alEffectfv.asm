; =========================================================
; Game Engine Function: alEffectfv
; Address            : 0x25383C - 0x2538BC
; =========================================================

25383C:  PUSH            {R4-R7,LR}
25383E:  ADD             R7, SP, #0xC
253840:  PUSH.W          {R8}
253844:  MOV             R8, R2
253846:  MOV             R6, R1
253848:  MOV             R5, R0
25384A:  BLX             j_GetContextRef
25384E:  MOV             R4, R0
253850:  CBZ             R4, loc_25386E
253852:  LDR.W           R0, [R4,#0x88]
253856:  MOV             R1, R5
253858:  ADDS            R0, #0x64 ; 'd'
25385A:  BLX             j_LookupUIntMapKey
25385E:  CBZ             R0, loc_253874
253860:  LDR.W           R5, [R0,#0xA0]
253864:  MOV             R1, R4
253866:  MOV             R2, R6
253868:  MOV             R3, R8
25386A:  BLX             R5
25386C:  B               loc_2538AE
25386E:  POP.W           {R8}
253872:  POP             {R4-R7,PC}
253874:  LDR             R0, =(TrapALError_ptr - 0x25387A)
253876:  ADD             R0, PC; TrapALError_ptr
253878:  LDR             R0, [R0]; TrapALError
25387A:  LDRB            R0, [R0]
25387C:  CMP             R0, #0
25387E:  ITT NE
253880:  MOVNE           R0, #5; sig
253882:  BLXNE           raise
253886:  LDREX.W         R0, [R4,#0x50]
25388A:  CBNZ            R0, loc_2538A6
25388C:  ADD.W           R0, R4, #0x50 ; 'P'
253890:  MOVW            R1, #0xA001
253894:  DMB.W           ISH
253898:  STREX.W         R2, R1, [R0]
25389C:  CBZ             R2, loc_2538AA
25389E:  LDREX.W         R2, [R0]
2538A2:  CMP             R2, #0
2538A4:  BEQ             loc_253898
2538A6:  CLREX.W
2538AA:  DMB.W           ISH
2538AE:  MOV             R0, R4
2538B0:  POP.W           {R8}
2538B4:  POP.W           {R4-R7,LR}
2538B8:  B.W             ALCcontext_DecRef
