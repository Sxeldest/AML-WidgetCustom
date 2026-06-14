; =========================================================
; Game Engine Function: alFilteri
; Address            : 0x25496C - 0x254A9E
; =========================================================

25496C:  PUSH            {R4-R7,LR}
25496E:  ADD             R7, SP, #0xC
254970:  PUSH.W          {R8,R9,R11}
254974:  MOV             R8, R2
254976:  MOV             R6, R1
254978:  MOV             R5, R0
25497A:  BLX             j_GetContextRef
25497E:  MOV             R4, R0
254980:  CBZ             R4, loc_2549D4
254982:  LDR.W           R0, [R4,#0x88]
254986:  MOV             R1, R5
254988:  ADDS            R0, #0x88
25498A:  BLX             j_LookupUIntMapKey
25498E:  CBZ             R0, loc_2549DA
254990:  MOVW            R1, #0x8001
254994:  CMP             R6, R1
254996:  BNE             loc_254A0E
254998:  CMP.W           R8, #1
25499C:  BHI             loc_254A1A
25499E:  CMP.W           R8, #1
2549A2:  BNE             loc_254A56
2549A4:  MOV.W           R3, #0x3F800000
2549A8:  LDR.W           R12, =(sub_264E90+1 - 0x2549B8)
2549AC:  LDR.W           LR, =(sub_264E34+1 - 0x2549BC)
2549B0:  LDR.W           R9, =(sub_264DEC+1 - 0x2549C0)
2549B4:  ADD             R12, PC; sub_264E90
2549B6:  LDR             R6, =(sub_264DA4+1 - 0x2549C4)
2549B8:  ADD             LR, PC; sub_264E34
2549BA:  LDR             R5, =(sub_264CA0+1 - 0x2549C8)
2549BC:  ADD             R9, PC; sub_264DEC
2549BE:  LDR             R1, =(sub_264B9C+1 - 0x2549CE)
2549C0:  ADD             R6, PC; sub_264DA4
2549C2:  LDR             R2, =(sub_264B54+1 - 0x2549D2)
2549C4:  ADD             R5, PC; sub_264CA0
2549C6:  STRD.W          R3, R3, [R0,#4]
2549CA:  ADD             R1, PC; sub_264B9C
2549CC:  LDR             R3, =(sub_264B0C+1 - 0x2549D4)
2549CE:  ADD             R2, PC; sub_264B54
2549D0:  ADD             R3, PC; sub_264B0C
2549D2:  B               loc_254A7C
2549D4:  POP.W           {R8,R9,R11}
2549D8:  POP             {R4-R7,PC}
2549DA:  LDR             R0, =(TrapALError_ptr - 0x2549E0)
2549DC:  ADD             R0, PC; TrapALError_ptr
2549DE:  LDR             R0, [R0]; TrapALError
2549E0:  LDRB            R0, [R0]
2549E2:  CMP             R0, #0
2549E4:  ITT NE
2549E6:  MOVNE           R0, #5; sig
2549E8:  BLXNE           raise
2549EC:  LDREX.W         R0, [R4,#0x50]
2549F0:  CBNZ            R0, loc_254A4C
2549F2:  ADD.W           R0, R4, #0x50 ; 'P'
2549F6:  MOVW            R1, #0xA001
2549FA:  DMB.W           ISH
2549FE:  STREX.W         R2, R1, [R0]
254A02:  CBZ             R2, loc_254A50
254A04:  LDREX.W         R2, [R0]
254A08:  CMP             R2, #0
254A0A:  BEQ             loc_2549FE
254A0C:  B               loc_254A4C
254A0E:  LDR             R5, [R0,#0xC]
254A10:  MOV             R1, R4
254A12:  MOV             R2, R6
254A14:  MOV             R3, R8
254A16:  BLX             R5
254A18:  B               loc_254A90
254A1A:  LDR             R0, =(TrapALError_ptr - 0x254A20)
254A1C:  ADD             R0, PC; TrapALError_ptr
254A1E:  LDR             R0, [R0]; TrapALError
254A20:  LDRB            R0, [R0]
254A22:  CMP             R0, #0
254A24:  ITT NE
254A26:  MOVNE           R0, #5; sig
254A28:  BLXNE           raise
254A2C:  LDREX.W         R0, [R4,#0x50]
254A30:  CBNZ            R0, loc_254A4C
254A32:  ADD.W           R0, R4, #0x50 ; 'P'
254A36:  MOVW            R1, #0xA003
254A3A:  DMB.W           ISH
254A3E:  STREX.W         R2, R1, [R0]
254A42:  CBZ             R2, loc_254A50
254A44:  LDREX.W         R2, [R0]
254A48:  CMP             R2, #0
254A4A:  BEQ             loc_254A3E
254A4C:  CLREX.W
254A50:  DMB.W           ISH
254A54:  B               loc_254A90
254A56:  LDR.W           R12, =(sub_2650E4+1 - 0x254A66)
254A5A:  LDR.W           LR, =(sub_26509C+1 - 0x254A6A)
254A5E:  LDR.W           R9, =(sub_265054+1 - 0x254A6E)
254A62:  ADD             R12, PC; sub_2650E4
254A64:  LDR             R6, =(sub_26500C+1 - 0x254A72)
254A66:  ADD             LR, PC; sub_26509C
254A68:  LDR             R5, =(sub_264FC4+1 - 0x254A76)
254A6A:  ADD             R9, PC; sub_265054
254A6C:  LDR             R1, =(sub_264F7C+1 - 0x254A7A)
254A6E:  ADD             R6, PC; sub_26500C
254A70:  LDR             R2, =(sub_264F34+1 - 0x254A7C)
254A72:  ADD             R5, PC; sub_264FC4
254A74:  LDR             R3, =(sub_264EEC+1 - 0x254A7E)
254A76:  ADD             R1, PC; sub_264F7C
254A78:  ADD             R2, PC; sub_264F34
254A7A:  ADD             R3, PC; sub_264EEC
254A7C:  STRD.W          R3, R2, [R0,#0xC]
254A80:  ADD.W           R2, R0, #0x14
254A84:  STM.W           R2, {R1,R5,R6,R9,LR}
254A88:  STR.W           R12, [R0,#0x28]
254A8C:  STR.W           R8, [R0]
254A90:  MOV             R0, R4
254A92:  POP.W           {R8,R9,R11}
254A96:  POP.W           {R4-R7,LR}
254A9A:  B.W             ALCcontext_DecRef
