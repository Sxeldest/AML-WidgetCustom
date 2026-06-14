; =========================================================
; Game Engine Function: alGetListenerf
; Address            : 0x255858 - 0x255912
; =========================================================

255858:  PUSH            {R4-R7,LR}
25585A:  ADD             R7, SP, #0xC
25585C:  PUSH.W          {R11}
255860:  MOV             R5, R1
255862:  MOV             R6, R0
255864:  BLX             j_GetContextRef
255868:  MOV             R4, R0
25586A:  CBZ             R4, loc_255888
25586C:  CBZ             R5, loc_25588E
25586E:  MOVS            R0, #0x20004
255874:  CMP             R6, R0
255876:  BEQ             loc_2558C2
255878:  MOVW            R0, #0x100A
25587C:  CMP             R6, R0
25587E:  BNE             loc_2558CA
255880:  LDR             R0, [R4,#4]
255882:  LDR             R0, [R0,#0x30]
255884:  STR             R0, [R5]
255886:  B               loc_255904
255888:  POP.W           {R11}
25588C:  POP             {R4-R7,PC}
25588E:  LDR             R0, =(TrapALError_ptr - 0x255894)
255890:  ADD             R0, PC; TrapALError_ptr
255892:  LDR             R0, [R0]; TrapALError
255894:  LDRB            R0, [R0]
255896:  CMP             R0, #0
255898:  ITT NE
25589A:  MOVNE           R0, #5; sig
25589C:  BLXNE           raise
2558A0:  LDREX.W         R0, [R4,#0x50]
2558A4:  CBNZ            R0, loc_2558FC
2558A6:  ADD.W           R0, R4, #0x50 ; 'P'
2558AA:  MOVW            R1, #0xA003
2558AE:  DMB.W           ISH
2558B2:  STREX.W         R2, R1, [R0]
2558B6:  CBZ             R2, loc_255900
2558B8:  LDREX.W         R2, [R0]
2558BC:  CMP             R2, #0
2558BE:  BEQ             loc_2558B2
2558C0:  B               loc_2558FC
2558C2:  LDR             R0, [R4,#4]
2558C4:  LDR             R0, [R0,#0x34]
2558C6:  STR             R0, [R5]
2558C8:  B               loc_255904
2558CA:  LDR             R0, =(TrapALError_ptr - 0x2558D0)
2558CC:  ADD             R0, PC; TrapALError_ptr
2558CE:  LDR             R0, [R0]; TrapALError
2558D0:  LDRB            R0, [R0]
2558D2:  CMP             R0, #0
2558D4:  ITT NE
2558D6:  MOVNE           R0, #5; sig
2558D8:  BLXNE           raise
2558DC:  LDREX.W         R0, [R4,#0x50]
2558E0:  CBNZ            R0, loc_2558FC
2558E2:  ADD.W           R0, R4, #0x50 ; 'P'
2558E6:  MOVW            R1, #0xA002
2558EA:  DMB.W           ISH
2558EE:  STREX.W         R2, R1, [R0]
2558F2:  CBZ             R2, loc_255900
2558F4:  LDREX.W         R2, [R0]
2558F8:  CMP             R2, #0
2558FA:  BEQ             loc_2558EE
2558FC:  CLREX.W
255900:  DMB.W           ISH
255904:  MOV             R0, R4
255906:  POP.W           {R11}
25590A:  POP.W           {R4-R7,LR}
25590E:  B.W             ALCcontext_DecRef
