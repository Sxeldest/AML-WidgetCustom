; =========================================================
; Game Engine Function: alEffectf
; Address            : 0x2537B8 - 0x253838
; =========================================================

2537B8:  PUSH            {R4-R7,LR}
2537BA:  ADD             R7, SP, #0xC
2537BC:  PUSH.W          {R8}
2537C0:  MOV             R8, R2
2537C2:  MOV             R6, R1
2537C4:  MOV             R5, R0
2537C6:  BLX             j_GetContextRef
2537CA:  MOV             R4, R0
2537CC:  CBZ             R4, loc_2537EA
2537CE:  LDR.W           R0, [R4,#0x88]
2537D2:  MOV             R1, R5
2537D4:  ADDS            R0, #0x64 ; 'd'
2537D6:  BLX             j_LookupUIntMapKey
2537DA:  CBZ             R0, loc_2537F0
2537DC:  LDR.W           R5, [R0,#0x9C]
2537E0:  MOV             R1, R4
2537E2:  MOV             R2, R6
2537E4:  MOV             R3, R8
2537E6:  BLX             R5
2537E8:  B               loc_25382A
2537EA:  POP.W           {R8}
2537EE:  POP             {R4-R7,PC}
2537F0:  LDR             R0, =(TrapALError_ptr - 0x2537F6)
2537F2:  ADD             R0, PC; TrapALError_ptr
2537F4:  LDR             R0, [R0]; TrapALError
2537F6:  LDRB            R0, [R0]
2537F8:  CMP             R0, #0
2537FA:  ITT NE
2537FC:  MOVNE           R0, #5; sig
2537FE:  BLXNE           raise
253802:  LDREX.W         R0, [R4,#0x50]
253806:  CBNZ            R0, loc_253822
253808:  ADD.W           R0, R4, #0x50 ; 'P'
25380C:  MOVW            R1, #0xA001
253810:  DMB.W           ISH
253814:  STREX.W         R2, R1, [R0]
253818:  CBZ             R2, loc_253826
25381A:  LDREX.W         R2, [R0]
25381E:  CMP             R2, #0
253820:  BEQ             loc_253814
253822:  CLREX.W
253826:  DMB.W           ISH
25382A:  MOV             R0, R4
25382C:  POP.W           {R8}
253830:  POP.W           {R4-R7,LR}
253834:  B.W             ALCcontext_DecRef
