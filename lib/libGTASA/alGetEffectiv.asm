; =========================================================
; Game Engine Function: alGetEffectiv
; Address            : 0x25395C - 0x253A36
; =========================================================

25395C:  PUSH            {R4-R7,LR}
25395E:  ADD             R7, SP, #0xC
253960:  PUSH.W          {R8}
253964:  MOV             R6, R0
253966:  MOV             R8, R2
253968:  MOV             R5, R1
25396A:  MOVW            R0, #0x8001
25396E:  CMP             R5, R0
253970:  BNE             loc_253990
253972:  BLX             j_GetContextRef
253976:  MOV             R4, R0
253978:  CBZ             R4, loc_2539B4
25397A:  LDR.W           R0, [R4,#0x88]
25397E:  MOV             R1, R6
253980:  ADDS            R0, #0x64 ; 'd'
253982:  BLX             j_LookupUIntMapKey
253986:  CBZ             R0, loc_2539BA
253988:  LDR             R0, [R0]
25398A:  STR.W           R0, [R8]
25398E:  B               loc_253A28
253990:  BLX             j_GetContextRef
253994:  MOV             R4, R0
253996:  CBZ             R4, loc_2539B4
253998:  LDR.W           R0, [R4,#0x88]
25399C:  MOV             R1, R6
25399E:  ADDS            R0, #0x64 ; 'd'
2539A0:  BLX             j_LookupUIntMapKey
2539A4:  CBZ             R0, loc_2539EE
2539A6:  LDR.W           R6, [R0,#0xA8]
2539AA:  MOV             R1, R4
2539AC:  MOV             R2, R5
2539AE:  MOV             R3, R8
2539B0:  BLX             R6
2539B2:  B               loc_253A28
2539B4:  POP.W           {R8}
2539B8:  POP             {R4-R7,PC}
2539BA:  LDR             R0, =(TrapALError_ptr - 0x2539C0)
2539BC:  ADD             R0, PC; TrapALError_ptr
2539BE:  LDR             R0, [R0]; TrapALError
2539C0:  LDRB            R0, [R0]
2539C2:  CMP             R0, #0
2539C4:  ITT NE
2539C6:  MOVNE           R0, #5; sig
2539C8:  BLXNE           raise
2539CC:  LDREX.W         R0, [R4,#0x50]
2539D0:  CBNZ            R0, loc_253A20
2539D2:  ADD.W           R0, R4, #0x50 ; 'P'
2539D6:  MOVW            R1, #0xA001
2539DA:  DMB.W           ISH
2539DE:  STREX.W         R2, R1, [R0]
2539E2:  CBZ             R2, loc_253A24
2539E4:  LDREX.W         R2, [R0]
2539E8:  CMP             R2, #0
2539EA:  BEQ             loc_2539DE
2539EC:  B               loc_253A20
2539EE:  LDR             R0, =(TrapALError_ptr - 0x2539F4)
2539F0:  ADD             R0, PC; TrapALError_ptr
2539F2:  LDR             R0, [R0]; TrapALError
2539F4:  LDRB            R0, [R0]
2539F6:  CMP             R0, #0
2539F8:  ITT NE
2539FA:  MOVNE           R0, #5; sig
2539FC:  BLXNE           raise
253A00:  LDREX.W         R0, [R4,#0x50]
253A04:  CBNZ            R0, loc_253A20
253A06:  ADD.W           R0, R4, #0x50 ; 'P'
253A0A:  MOVW            R1, #0xA001
253A0E:  DMB.W           ISH
253A12:  STREX.W         R2, R1, [R0]
253A16:  CBZ             R2, loc_253A24
253A18:  LDREX.W         R2, [R0]
253A1C:  CMP             R2, #0
253A1E:  BEQ             loc_253A12
253A20:  CLREX.W
253A24:  DMB.W           ISH
253A28:  MOV             R0, R4
253A2A:  POP.W           {R8}
253A2E:  POP.W           {R4-R7,LR}
253A32:  B.W             ALCcontext_DecRef
