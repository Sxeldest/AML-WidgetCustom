; =========================================================
; Game Engine Function: alGetSourcei
; Address            : 0x259944 - 0x259AB2
; =========================================================

259944:  PUSH            {R4-R7,LR}
259946:  ADD             R7, SP, #0xC
259948:  PUSH.W          {R8}
25994C:  MOV             R8, R2
25994E:  MOV             R6, R1
259950:  MOV             R5, R0
259952:  BLX             j_GetContextRef
259956:  MOV             R4, R0
259958:  CMP             R4, #0
25995A:  BEQ.W           loc_2599C0
25995E:  ADD.W           R0, R4, #8
259962:  MOV             R1, R5
259964:  BLX             j_LookupUIntMapKey
259968:  CMP             R0, #0
25996A:  BEQ             loc_2599C6
25996C:  CMP.W           R8, #0
259970:  BEQ.W           loc_2599FE
259974:  CMP.W           R6, #0xC000
259978:  BGE.W           loc_259A34
25997C:  MOVW            R1, #0x1001
259980:  SUBS            R1, R6, R1
259982:  CMP             R1, #0x32 ; '2'; switch 51 cases
259984:  BHI.W           def_259988; jumptable 00259988 default case
259988:  TBB.W           [PC,R1]; switch jump
25998C:  DCB 0x65; jump table for switch statement
25998D:  DCB 0x65
25998E:  DCB 0x6F
25998F:  DCB 0x6F
259990:  DCB 0x6F
259991:  DCB 0x6F
259992:  DCB 0x65
259993:  DCB 0x6F
259994:  DCB 0x65
259995:  DCB 0x6F
259996:  DCB 0x6F
259997:  DCB 0x6F
259998:  DCB 0x6F
259999:  DCB 0x6F
25999A:  DCB 0x6F
25999B:  DCB 0x65
25999C:  DCB 0x6F
25999D:  DCB 0x6F
25999E:  DCB 0x6F
25999F:  DCB 0x6F
2599A0:  DCB 0x65
2599A1:  DCB 0x65
2599A2:  DCB 0x6F
2599A3:  DCB 0x6F
2599A4:  DCB 0x6F
2599A5:  DCB 0x6F
2599A6:  DCB 0x6F
2599A7:  DCB 0x6F
2599A8:  DCB 0x6F
2599A9:  DCB 0x6F
2599AA:  DCB 0x6F
2599AB:  DCB 0x65
2599AC:  DCB 0x65
2599AD:  DCB 0x6F
2599AE:  DCB 0x65
2599AF:  DCB 0x65
2599B0:  DCB 0x65
2599B1:  DCB 0x65
2599B2:  DCB 0x65
2599B3:  DCB 0x6F
2599B4:  DCB 0x6F
2599B5:  DCB 0x6F
2599B6:  DCB 0x6F
2599B7:  DCB 0x6F
2599B8:  DCB 0x6F
2599B9:  DCB 0x6F
2599BA:  DCB 0x6F
2599BB:  DCB 0x6F
2599BC:  DCB 0x6F
2599BD:  DCB 0x6F
2599BE:  DCB 0x65
2599BF:  ALIGN 2
2599C0:  POP.W           {R8}
2599C4:  POP             {R4-R7,PC}
2599C6:  LDR             R0, =(TrapALError_ptr - 0x2599CC)
2599C8:  ADD             R0, PC; TrapALError_ptr
2599CA:  LDR             R0, [R0]; TrapALError
2599CC:  LDRB            R0, [R0]
2599CE:  CMP             R0, #0
2599D0:  ITT NE
2599D2:  MOVNE           R0, #5; sig
2599D4:  BLXNE           raise
2599D8:  LDREX.W         R0, [R4,#0x50]
2599DC:  CMP             R0, #0
2599DE:  BNE             loc_259A9C
2599E0:  ADD.W           R0, R4, #0x50 ; 'P'
2599E4:  MOVW            R1, #0xA001
2599E8:  DMB.W           ISH
2599EC:  STREX.W         R2, R1, [R0]
2599F0:  CMP             R2, #0
2599F2:  BEQ             loc_259AA0
2599F4:  LDREX.W         R2, [R0]
2599F8:  CMP             R2, #0
2599FA:  BEQ             loc_2599EC
2599FC:  B               loc_259A9C
2599FE:  LDR             R0, =(TrapALError_ptr - 0x259A04)
259A00:  ADD             R0, PC; TrapALError_ptr
259A02:  LDR             R0, [R0]; TrapALError
259A04:  LDRB            R0, [R0]
259A06:  CMP             R0, #0
259A08:  ITT NE
259A0A:  MOVNE           R0, #5; sig
259A0C:  BLXNE           raise
259A10:  LDREX.W         R0, [R4,#0x50]
259A14:  CMP             R0, #0
259A16:  BNE             loc_259A9C
259A18:  ADD.W           R0, R4, #0x50 ; 'P'
259A1C:  MOVW            R1, #0xA003
259A20:  DMB.W           ISH
259A24:  STREX.W         R2, R1, [R0]
259A28:  CBZ             R2, loc_259AA0
259A2A:  LDREX.W         R2, [R0]
259A2E:  CMP             R2, #0
259A30:  BEQ             loc_259A24
259A32:  B               loc_259A9C
259A34:  SUB.W           R1, R6, #0x20000
259A38:  SUBS            R1, #5
259A3A:  CMP             R1, #7
259A3C:  BHI             loc_259A4A
259A3E:  MOVS            R2, #1
259A40:  LSL.W           R1, R2, R1
259A44:  TST.W           R1, #0xE1
259A48:  BNE             loc_259A56; jumptable 00259988 cases 0,1,6,8,15,20,21,31,32,34-38,50
259A4A:  CMP.W           R6, #0xC000
259A4E:  IT NE
259A50:  CMPNE.W         R6, #0xD000
259A54:  BNE             loc_259A6A; jumptable 00259988 cases 2-5,7,9-14,16-19,22-30,33,39-49
259A56:  MOV             R1, R4; jumptable 00259988 cases 0,1,6,8,15,20,21,31,32,34-38,50
259A58:  MOV             R2, R6
259A5A:  MOV             R3, R8
259A5C:  BL              sub_259AC0
259A60:  B               loc_259AA4
259A62:  MOVW            R1, #0x202; jumptable 00259988 default case
259A66:  CMP             R6, R1
259A68:  BEQ             loc_259A56; jumptable 00259988 cases 0,1,6,8,15,20,21,31,32,34-38,50
259A6A:  LDR             R0, =(TrapALError_ptr - 0x259A70); jumptable 00259988 cases 2-5,7,9-14,16-19,22-30,33,39-49
259A6C:  ADD             R0, PC; TrapALError_ptr
259A6E:  LDR             R0, [R0]; TrapALError
259A70:  LDRB            R0, [R0]
259A72:  CMP             R0, #0
259A74:  ITT NE
259A76:  MOVNE           R0, #5; sig
259A78:  BLXNE           raise
259A7C:  LDREX.W         R0, [R4,#0x50]
259A80:  CBNZ            R0, loc_259A9C
259A82:  ADD.W           R0, R4, #0x50 ; 'P'
259A86:  MOVW            R1, #0xA002
259A8A:  DMB.W           ISH
259A8E:  STREX.W         R2, R1, [R0]
259A92:  CBZ             R2, loc_259AA0
259A94:  LDREX.W         R2, [R0]
259A98:  CMP             R2, #0
259A9A:  BEQ             loc_259A8E
259A9C:  CLREX.W
259AA0:  DMB.W           ISH
259AA4:  MOV             R0, R4
259AA6:  POP.W           {R8}
259AAA:  POP.W           {R4-R7,LR}
259AAE:  B.W             ALCcontext_DecRef
