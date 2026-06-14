; =========================================================
; Game Engine Function: _ZN27CTaskComplexExtinguishFires14ControlSubTaskEP4CPed
; Address            : 0x547B30 - 0x547D10
; =========================================================

547B30:  PUSH            {R4-R7,LR}
547B32:  ADD             R7, SP, #0xC
547B34:  PUSH.W          {R8,R9,R11}
547B38:  MOV             R8, R0
547B3A:  MOV             R9, R1
547B3C:  LDR.W           R0, [R8,#8]
547B40:  LDR             R1, [R0]
547B42:  LDR             R1, [R1,#0x14]
547B44:  BLX             R1
547B46:  CMP.W           R0, #0x3FC
547B4A:  BNE             loc_547BF4
547B4C:  LDR             R0, =(gFireManager_ptr - 0x547B5C)
547B4E:  ADD.W           R4, R9, #4
547B52:  LDR.W           R2, [R9,#0x14]
547B56:  MOVS            R3, #0; bool
547B58:  ADD             R0, PC; gFireManager_ptr
547B5A:  MOV             R1, R4
547B5C:  CMP             R2, #0
547B5E:  MOV.W           R5, #0
547B62:  LDR             R0, [R0]; gFireManager ; this
547B64:  IT NE
547B66:  ADDNE.W         R1, R2, #0x30 ; '0'; CVector *
547B6A:  MOVS            R2, #0; bool
547B6C:  BLX             j__ZN12CFireManager15FindNearestFireERK7CVectorbb; CFireManager::FindNearestFire(CVector const&,bool,bool)
547B70:  CBZ             R0, loc_547BC2
547B72:  LDR.W           R1, [R9,#0x14]
547B76:  VLDR            S0, [R0,#4]
547B7A:  CMP             R1, #0
547B7C:  IT NE
547B7E:  ADDNE.W         R4, R1, #0x30 ; '0'
547B82:  VLDR            D16, [R0,#8]
547B86:  VLDR            S2, [R4]
547B8A:  VLDR            D17, [R4,#4]
547B8E:  VSUB.F32        S0, S2, S0
547B92:  LDR             R1, =(_ZN18CNearbyFireScanner19ms_fNearbyFireRangeE_ptr - 0x547B9C)
547B94:  VSUB.F32        D16, D17, D16
547B98:  ADD             R1, PC; _ZN18CNearbyFireScanner19ms_fNearbyFireRangeE_ptr
547B9A:  LDR             R1, [R1]; CNearbyFireScanner::ms_fNearbyFireRange ...
547B9C:  VMUL.F32        D1, D16, D16
547BA0:  VMUL.F32        S0, S0, S0
547BA4:  VLDR            S4, [R1]
547BA8:  VMUL.F32        S4, S4, S4
547BAC:  VADD.F32        S0, S0, S2
547BB0:  VADD.F32        S0, S0, S3
547BB4:  VCMPE.F32       S0, S4
547BB8:  VMRS            APSR_nzcv, FPSCR
547BBC:  IT GT
547BBE:  MOVGT           R0, #0
547BC0:  MOV             R5, R0
547BC2:  LDRD.W          R6, R0, [R8,#8]
547BC6:  CMP             R5, R0
547BC8:  BEQ.W           loc_547D08
547BCC:  LDR             R0, [R6]
547BCE:  MOV             R1, R9
547BD0:  MOVS            R2, #1
547BD2:  MOVS            R3, #0
547BD4:  LDR             R5, [R0,#0x1C]
547BD6:  MOV             R0, R6
547BD8:  BLX             R5
547BDA:  CMP             R0, #1
547BDC:  BNE.W           loc_547D04
547BE0:  LDR.W           R0, [R8]
547BE4:  MOV             R1, R9
547BE6:  LDR             R2, [R0,#0x2C]
547BE8:  MOV             R0, R8
547BEA:  POP.W           {R8,R9,R11}
547BEE:  POP.W           {R4-R7,LR}
547BF2:  BX              R2
547BF4:  LDR.W           R0, [R8,#8]
547BF8:  LDR             R1, [R0]
547BFA:  LDR             R1, [R1,#0x14]
547BFC:  BLX             R1
547BFE:  MOVW            R1, #0x387
547C02:  CMP             R0, R1
547C04:  BNE             loc_547D04
547C06:  LDR             R0, =(gFireManager_ptr - 0x547C16)
547C08:  ADD.W           R4, R9, #4
547C0C:  LDR.W           R2, [R9,#0x14]
547C10:  MOVS            R3, #0; bool
547C12:  ADD             R0, PC; gFireManager_ptr
547C14:  MOV             R1, R4
547C16:  CMP             R2, #0
547C18:  MOV.W           R6, #0
547C1C:  LDR             R0, [R0]; gFireManager ; this
547C1E:  IT NE
547C20:  ADDNE.W         R1, R2, #0x30 ; '0'; CVector *
547C24:  MOVS            R2, #0; bool
547C26:  BLX             j__ZN12CFireManager15FindNearestFireERK7CVectorbb; CFireManager::FindNearestFire(CVector const&,bool,bool)
547C2A:  CMP             R0, #0
547C2C:  BEQ             loc_547D08
547C2E:  LDR.W           R1, [R9,#0x14]
547C32:  VLDR            S0, [R0,#4]
547C36:  CMP             R1, #0
547C38:  IT NE
547C3A:  ADDNE.W         R4, R1, #0x30 ; '0'
547C3E:  VLDR            D16, [R0,#8]
547C42:  VLDR            S2, [R4]
547C46:  VLDR            D17, [R4,#4]
547C4A:  VSUB.F32        S0, S2, S0
547C4E:  LDR             R1, =(_ZN18CNearbyFireScanner19ms_fNearbyFireRangeE_ptr - 0x547C58)
547C50:  VSUB.F32        D16, D17, D16
547C54:  ADD             R1, PC; _ZN18CNearbyFireScanner19ms_fNearbyFireRangeE_ptr
547C56:  LDR             R1, [R1]; CNearbyFireScanner::ms_fNearbyFireRange ...
547C58:  VMUL.F32        D1, D16, D16
547C5C:  VMUL.F32        S0, S0, S0
547C60:  VLDR            S4, [R1]
547C64:  VMUL.F32        S4, S4, S4
547C68:  VADD.F32        S0, S0, S2
547C6C:  VADD.F32        S0, S0, S3
547C70:  VCMPE.F32       S0, S4
547C74:  VMRS            APSR_nzcv, FPSCR
547C78:  BLE             loc_547C7E
547C7A:  MOVS            R6, #0
547C7C:  B               loc_547D08
547C7E:  LDR.W           R1, [R8,#0xC]
547C82:  CMP             R1, R0
547C84:  BEQ             loc_547D04
547C86:  LDR             R2, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x547C90)
547C88:  LDR.W           R1, [R8,#8]
547C8C:  ADD             R2, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
547C8E:  STR.W           R0, [R8,#0xC]
547C92:  VLDR            S2, [R0,#4]
547C96:  LDR             R2, [R2]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
547C98:  VLDR            S4, [R1,#0x10]
547C9C:  VCMP.F32        S4, S2
547CA0:  VLDR            S0, [R2]
547CA4:  VMRS            APSR_nzcv, FPSCR
547CA8:  BNE             loc_547CE0
547CAA:  ADD.W           R2, R0, #8
547CAE:  VLDR            S4, [R1,#0x14]
547CB2:  VLDR            S2, [R2]
547CB6:  VCMP.F32        S4, S2
547CBA:  VMRS            APSR_nzcv, FPSCR
547CBE:  BNE             loc_547CE0
547CC0:  VLDR            S2, [R0,#0xC]
547CC4:  VLDR            S4, [R1,#0x18]
547CC8:  VCMP.F32        S4, S2
547CCC:  VMRS            APSR_nzcv, FPSCR
547CD0:  BNE             loc_547CE0
547CD2:  VLDR            S2, [R1,#0x20]
547CD6:  VCMP.F32        S2, S0
547CDA:  VMRS            APSR_nzcv, FPSCR
547CDE:  BEQ             loc_547D04
547CE0:  ADDS            R0, #4
547CE2:  LDRB.W          R2, [R1,#0x24]
547CE6:  MOV.W           R3, #0x3FC00000
547CEA:  VLDR            D16, [R0]
547CEE:  LDR             R0, [R0,#8]
547CF0:  STRD.W          R0, R3, [R1,#0x18]
547CF4:  ORR.W           R0, R2, #4
547CF8:  VSTR            S0, [R1,#0x20]
547CFC:  STRB.W          R0, [R1,#0x24]
547D00:  VSTR            D16, [R1,#0x10]
547D04:  LDR.W           R6, [R8,#8]
547D08:  MOV             R0, R6
547D0A:  POP.W           {R8,R9,R11}
547D0E:  POP             {R4-R7,PC}
