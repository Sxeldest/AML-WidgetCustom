; =========================================================
; Game Engine Function: _ZN5CBoat22IsSectorAffectedByWakeE9CVector2DfPPS_
; Address            : 0x56CF24 - 0x56D01E
; =========================================================

56CF24:  PUSH            {R4-R7,LR}
56CF26:  ADD             R7, SP, #0xC
56CF28:  PUSH.W          {R8-R10}
56CF2C:  LDR             R6, =(_ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr - 0x56CF32)
56CF2E:  ADD             R6, PC; _ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr
56CF30:  LDR             R6, [R6]; CBoat::apFrameWakeGeneratingBoats ...
56CF32:  LDR             R4, [R6]; CBoat::apFrameWakeGeneratingBoats
56CF34:  CMP             R4, #0
56CF36:  BEQ             loc_56D016
56CF38:  VMOV            S4, R1
56CF3C:  LDR             R1, =(_ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr - 0x56CF48)
56CF3E:  LDR             R5, =(fShapeLength_ptr - 0x56CF4C)
56CF40:  VMOV            S0, R2
56CF44:  ADD             R1, PC; _ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr
56CF46:  LDR             R2, =(fShapeTime_ptr - 0x56CF56)
56CF48:  ADD             R5, PC; fShapeLength_ptr
56CF4A:  VMOV            S2, R0
56CF4E:  LDR.W           R9, [R1]; CBoat::apFrameWakeGeneratingBoats ...
56CF52:  ADD             R2, PC; fShapeTime_ptr
56CF54:  LDR             R1, =(_ZN5CBoat13WAKE_LIFETIMEE_ptr - 0x56CF64)
56CF56:  MOVS            R0, #0
56CF58:  LDR.W           LR, [R2]; fShapeTime
56CF5C:  MOV.W           R10, #0
56CF60:  ADD             R1, PC; _ZN5CBoat13WAKE_LIFETIMEE_ptr
56CF62:  LDR.W           R8, [R5]; fShapeLength
56CF66:  LDR.W           R12, [R1]; CBoat::WAKE_LIFETIME ...
56CF6A:  LDRH.W          R6, [R4,#0x658]
56CF6E:  CMP             R6, #0
56CF70:  BEQ             loc_56CFF4
56CF72:  VLDR            S6, [R12]
56CF76:  MOVS            R1, #0
56CF78:  VLDR            S8, [LR]
56CF7C:  MOVS            R2, #0
56CF7E:  VLDR            S10, [R8]
56CF82:  ADD.W           R5, R4, R1,LSL#2
56CF86:  ADD.W           R1, R4, R1,LSL#3
56CF8A:  ADDW            R5, R5, #0x75C
56CF8E:  VLDR            S12, [R5]
56CF92:  SXTH            R5, R2
56CF94:  VMOV            S14, R5
56CF98:  ADDW            R5, R1, #0x65C
56CF9C:  VSUB.F32        S12, S6, S12
56CFA0:  VCVT.F32.S32    S14, S14
56CFA4:  VLDR            S1, [R5]
56CFA8:  VSUB.F32        S1, S1, S2
56CFAC:  VMUL.F32        S12, S8, S12
56CFB0:  VMUL.F32        S14, S10, S14
56CFB4:  VADD.F32        S12, S14, S12
56CFB8:  VABS.F32        S14, S1
56CFBC:  VADD.F32        S12, S12, S0
56CFC0:  VCMPE.F32       S14, S12
56CFC4:  VMRS            APSR_nzcv, FPSCR
56CFC8:  BGE             loc_56CFE4
56CFCA:  ADD.W           R1, R1, #0x660
56CFCE:  VLDR            S14, [R1]
56CFD2:  VSUB.F32        S14, S14, S4
56CFD6:  VABS.F32        S14, S14
56CFDA:  VCMPE.F32       S14, S12
56CFDE:  VMRS            APSR_nzcv, FPSCR
56CFE2:  BLT             loc_56CFEE
56CFE4:  ADDS            R2, #1
56CFE6:  SXTH            R1, R2
56CFE8:  CMP             R1, R6
56CFEA:  BLT             loc_56CF82
56CFEC:  B               loc_56CFF4
56CFEE:  STR.W           R4, [R3,R0,LSL#2]
56CFF2:  ADDS            R0, #1
56CFF4:  ADD.W           R1, R10, #1
56CFF8:  SXTH.W          R10, R1
56CFFC:  CMP.W           R10, #3
56D000:  BGT             loc_56D00A
56D002:  LDR.W           R4, [R9,R10,LSL#2]
56D006:  CMP             R4, #0
56D008:  BNE             loc_56CF6A
56D00A:  CMP             R0, #0
56D00C:  IT NE
56D00E:  MOVNE           R0, #1
56D010:  POP.W           {R8-R10}
56D014:  POP             {R4-R7,PC}
56D016:  MOVS            R0, #0
56D018:  POP.W           {R8-R10}
56D01C:  POP             {R4-R7,PC}
