; =========================================================
; Game Engine Function: alGetListener3f
; Address            : 0x25591C - 0x255A32
; =========================================================

25591C:  PUSH            {R4-R7,LR}
25591E:  ADD             R7, SP, #0xC
255920:  PUSH.W          {R8,R9,R11}
255924:  MOV             R8, R3
255926:  MOV             R9, R2
255928:  MOV             R5, R1
25592A:  MOV             R6, R0
25592C:  BLX             j_GetContextRef
255930:  MOV             R4, R0
255932:  CBZ             R4, loc_25597A
255934:  CMP             R5, #0
255936:  IT NE
255938:  CMPNE.W         R9, #0
25593C:  BEQ             loc_255980
25593E:  CMP.W           R8, #0
255942:  BEQ             loc_255980
255944:  MOVW            R0, #0x1006
255948:  CMP             R6, R0
25594A:  BEQ             loc_2559B6
25594C:  MOVW            R0, #0x1004
255950:  CMP             R6, R0
255952:  BNE             loc_2559EA
255954:  LDR.W           R0, [R4,#0x88]
255958:  MOV             R6, #0x161AC
255960:  LDR             R1, [R0,R6]
255962:  LDR             R1, [R1,#0x2C]
255964:  BLX             R1
255966:  LDR             R0, [R4,#4]
255968:  LDR             R0, [R0]
25596A:  STR             R0, [R5]
25596C:  LDR             R0, [R4,#4]
25596E:  LDR             R0, [R0,#4]
255970:  STR.W           R0, [R9]
255974:  LDR             R0, [R4,#4]
255976:  LDR             R0, [R0,#8]
255978:  B               loc_2559DA
25597A:  POP.W           {R8,R9,R11}
25597E:  POP             {R4-R7,PC}
255980:  LDR             R0, =(TrapALError_ptr - 0x255986)
255982:  ADD             R0, PC; TrapALError_ptr
255984:  LDR             R0, [R0]; TrapALError
255986:  LDRB            R0, [R0]
255988:  CMP             R0, #0
25598A:  ITT NE
25598C:  MOVNE           R0, #5; sig
25598E:  BLXNE           raise
255992:  LDREX.W         R0, [R4,#0x50]
255996:  CMP             R0, #0
255998:  BNE             loc_255A1C
25599A:  ADD.W           R0, R4, #0x50 ; 'P'
25599E:  MOVW            R1, #0xA003
2559A2:  DMB.W           ISH
2559A6:  STREX.W         R2, R1, [R0]
2559AA:  CBZ             R2, loc_255A20
2559AC:  LDREX.W         R2, [R0]
2559B0:  CMP             R2, #0
2559B2:  BEQ             loc_2559A6
2559B4:  B               loc_255A1C
2559B6:  LDR.W           R0, [R4,#0x88]
2559BA:  MOV             R6, #0x161AC
2559C2:  LDR             R1, [R0,R6]
2559C4:  LDR             R1, [R1,#0x2C]
2559C6:  BLX             R1
2559C8:  LDR             R0, [R4,#4]
2559CA:  LDR             R0, [R0,#0xC]
2559CC:  STR             R0, [R5]
2559CE:  LDR             R0, [R4,#4]
2559D0:  LDR             R0, [R0,#0x10]
2559D2:  STR.W           R0, [R9]
2559D6:  LDR             R0, [R4,#4]
2559D8:  LDR             R0, [R0,#0x14]
2559DA:  STR.W           R0, [R8]
2559DE:  LDR.W           R0, [R4,#0x88]
2559E2:  LDR             R1, [R0,R6]
2559E4:  LDR             R1, [R1,#0x30]
2559E6:  BLX             R1
2559E8:  B               loc_255A24
2559EA:  LDR             R0, =(TrapALError_ptr - 0x2559F0)
2559EC:  ADD             R0, PC; TrapALError_ptr
2559EE:  LDR             R0, [R0]; TrapALError
2559F0:  LDRB            R0, [R0]
2559F2:  CMP             R0, #0
2559F4:  ITT NE
2559F6:  MOVNE           R0, #5; sig
2559F8:  BLXNE           raise
2559FC:  LDREX.W         R0, [R4,#0x50]
255A00:  CBNZ            R0, loc_255A1C
255A02:  ADD.W           R0, R4, #0x50 ; 'P'
255A06:  MOVW            R1, #0xA002
255A0A:  DMB.W           ISH
255A0E:  STREX.W         R2, R1, [R0]
255A12:  CBZ             R2, loc_255A20
255A14:  LDREX.W         R2, [R0]
255A18:  CMP             R2, #0
255A1A:  BEQ             loc_255A0E
255A1C:  CLREX.W
255A20:  DMB.W           ISH
255A24:  MOV             R0, R4
255A26:  POP.W           {R8,R9,R11}
255A2A:  POP.W           {R4-R7,LR}
255A2E:  B.W             ALCcontext_DecRef
