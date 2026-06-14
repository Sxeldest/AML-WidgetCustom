; =========================================================
; Game Engine Function: _ZN17CStuntJumpManager6AddOneERK9CBoundBoxS2_RK7CVectori
; Address            : 0x361C54 - 0x361D3A
; =========================================================

361C54:  PUSH            {R4-R7,LR}
361C56:  ADD             R7, SP, #0xC
361C58:  PUSH.W          {R8}
361C5C:  LDR             R6, =(_ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr - 0x361C62)
361C5E:  ADD             R6, PC; _ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr
361C60:  LDR             R6, [R6]; CStuntJumpManager::mp_poolStuntJumps ...
361C62:  LDR.W           R12, [R6]; CStuntJumpManager::mp_poolStuntJumps
361C66:  CMP.W           R12, #0
361C6A:  BEQ             loc_361D30
361C6C:  LDRD.W          LR, R4, [R12,#8]
361C70:  MOV.W           R8, #0
361C74:  ADDS            R4, #1
361C76:  STR.W           R4, [R12,#0xC]
361C7A:  CMP             R4, LR
361C7C:  BNE             loc_361C8E
361C7E:  MOVS            R4, #0
361C80:  MOVS.W          R5, R8,LSL#31
361C84:  STR.W           R4, [R12,#0xC]
361C88:  BNE             loc_361D30
361C8A:  MOV.W           R8, #1
361C8E:  LDR.W           R6, [R12,#4]
361C92:  LDRSB           R5, [R6,R4]
361C94:  CMP.W           R5, #0xFFFFFFFF
361C98:  BGT             loc_361C74
361C9A:  AND.W           R5, R5, #0x7F
361C9E:  STRB            R5, [R6,R4]
361CA0:  LDR.W           R6, [R12,#4]
361CA4:  LDR.W           R5, [R12,#0xC]
361CA8:  LDRB            R4, [R6,R5]
361CAA:  AND.W           LR, R4, #0x80
361CAE:  ADDS            R4, #1
361CB0:  AND.W           R4, R4, #0x7F
361CB4:  ORR.W           R4, R4, LR
361CB8:  STRB            R4, [R6,R5]
361CBA:  LDR.W           R5, [R12,#0xC]
361CBE:  LDR.W           R6, [R12]
361CC2:  ADD.W           R5, R5, R5,LSL#4
361CC6:  ADD.W           R5, R6, R5,LSL#2
361CCA:  CBZ             R5, loc_361D30
361CCC:  VLD1.32         {D16-D17}, [R0]!
361CD0:  VLDR            D18, [R0]
361CD4:  MOV             R0, R5
361CD6:  VST1.32         {D16-D17}, [R0]!
361CDA:  VSTR            D18, [R0]
361CDE:  ADD.W           R0, R5, #0x18
361CE2:  VLD1.32         {D16-D17}, [R1]!
361CE6:  LDR             R6, =(_ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr - 0x361CF2)
361CE8:  LDR             R4, =(_ZN17CStuntJumpManager11m_iNumJumpsE_ptr - 0x361CF4)
361CEA:  VLDR            D18, [R1]
361CEE:  ADD             R6, PC; _ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr
361CF0:  ADD             R4, PC; _ZN17CStuntJumpManager11m_iNumJumpsE_ptr
361CF2:  VST1.32         {D16-D17}, [R0]
361CF6:  VSTR            D18, [R5,#0x28]
361CFA:  VLDR            D16, [R2]
361CFE:  LDR             R0, [R2,#8]
361D00:  LDR             R1, [R6]; CStuntJumpManager::mp_poolStuntJumps ...
361D02:  LDR             R2, [R4]; CStuntJumpManager::m_iNumJumps ...
361D04:  STRD.W          R0, R3, [R5,#0x38]
361D08:  MOVS            R0, #0
361D0A:  STRH.W          R0, [R5,#0x40]
361D0E:  VSTR            D16, [R5,#0x30]
361D12:  LDR             R0, [R1]; CStuntJumpManager::mp_poolStuntJumps
361D14:  LDR             R1, [R2]; CStuntJumpManager::m_iNumJumps
361D16:  ADDS            R1, #1
361D18:  STR             R1, [R2]; CStuntJumpManager::m_iNumJumps
361D1A:  LDR             R0, [R0]
361D1C:  MOV             R1, #0xF0F0F0F1
361D24:  SUBS            R0, R5, R0
361D26:  ASRS            R0, R0, #2
361D28:  MULS            R0, R1
361D2A:  POP.W           {R8}
361D2E:  POP             {R4-R7,PC}
361D30:  MOV.W           R0, #0xFFFFFFFF
361D34:  POP.W           {R8}
361D38:  POP             {R4-R7,PC}
