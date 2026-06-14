; =========================================================
; Game Engine Function: alGetEffecti
; Address            : 0x2538C0 - 0x253956
; =========================================================

2538C0:  PUSH            {R4-R7,LR}
2538C2:  ADD             R7, SP, #0xC
2538C4:  PUSH.W          {R8}
2538C8:  MOV             R8, R2
2538CA:  MOV             R6, R1
2538CC:  MOV             R5, R0
2538CE:  BLX             j_GetContextRef
2538D2:  MOV             R4, R0
2538D4:  CBZ             R4, loc_2538F4
2538D6:  LDR.W           R0, [R4,#0x88]
2538DA:  MOV             R1, R5
2538DC:  ADDS            R0, #0x64 ; 'd'
2538DE:  BLX             j_LookupUIntMapKey
2538E2:  CBZ             R0, loc_2538FA
2538E4:  MOVW            R1, #0x8001
2538E8:  CMP             R6, R1
2538EA:  BNE             loc_253936
2538EC:  LDR             R0, [R0]
2538EE:  STR.W           R0, [R8]
2538F2:  B               loc_253942
2538F4:  POP.W           {R8}
2538F8:  POP             {R4-R7,PC}
2538FA:  LDR             R0, =(TrapALError_ptr - 0x253900)
2538FC:  ADD             R0, PC; TrapALError_ptr
2538FE:  LDR             R0, [R0]; TrapALError
253900:  LDRB            R0, [R0]
253902:  CMP             R0, #0
253904:  ITT NE
253906:  MOVNE           R0, #5; sig
253908:  BLXNE           raise
25390C:  LDREX.W         R0, [R4,#0x50]
253910:  CBNZ            R0, loc_25392C
253912:  ADD.W           R0, R4, #0x50 ; 'P'
253916:  MOVW            R1, #0xA001
25391A:  DMB.W           ISH
25391E:  STREX.W         R2, R1, [R0]
253922:  CBZ             R2, loc_253950
253924:  LDREX.W         R2, [R0]
253928:  CMP             R2, #0
25392A:  BEQ             loc_25391E
25392C:  CLREX.W
253930:  DMB.W           ISH
253934:  B               loc_253942
253936:  LDR.W           R5, [R0,#0xA4]
25393A:  MOV             R1, R4
25393C:  MOV             R2, R6
25393E:  MOV             R3, R8
253940:  BLX             R5
253942:  MOV             R0, R4
253944:  POP.W           {R8}
253948:  POP.W           {R4-R7,LR}
25394C:  B.W             ALCcontext_DecRef
253950:  DMB.W           ISH
253954:  B               loc_253942
