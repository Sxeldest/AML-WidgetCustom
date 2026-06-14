; =========================================================
; Game Engine Function: _ZN15CClothesBuilder26PlaceTextureOnTopOfTextureEP9RwTextureS1_b
; Address            : 0x45BAEC - 0x45BC26
; =========================================================

45BAEC:  PUSH            {R4-R7,LR}
45BAEE:  ADD             R7, SP, #0xC
45BAF0:  PUSH.W          {R8-R10}
45BAF4:  LDR             R6, [R1]
45BAF6:  MOV             R9, R2
45BAF8:  LDR.W           R8, [R0]
45BAFC:  MOVS            R1, #0
45BAFE:  MOVS            R2, #3
45BB00:  MOVS            R5, #0
45BB02:  MOV             R0, R6
45BB04:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
45BB08:  MOV             R10, R0
45BB0A:  MOV             R0, R8
45BB0C:  MOVS            R1, #0
45BB0E:  MOVS            R2, #3
45BB10:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
45BB14:  LDRD.W          R1, R2, [R6,#0xC]
45BB18:  MULS            R1, R2
45BB1A:  CMP             R1, #1
45BB1C:  BLT             loc_45BC12
45BB1E:  VMOV.F32        S4, #1.0
45BB22:  VLDR            S0, =255.0
45BB26:  VLDR            S2, =0.98
45BB2A:  LDR.W           R1, [R10,R5,LSL#2]
45BB2E:  LSRS            R2, R1, #0x18
45BB30:  VMOV            S6, R2
45BB34:  MOVS            R2, #0
45BB36:  VCVT.F32.U32    S6, S6
45BB3A:  VDIV.F32        S6, S6, S0
45BB3E:  VCMPE.F32       S6, #0.0
45BB42:  VMRS            APSR_nzcv, FPSCR
45BB46:  VCMPE.F32       S6, S2
45BB4A:  IT GT
45BB4C:  MOVGT           R2, #1
45BB4E:  VMRS            APSR_nzcv, FPSCR
45BB52:  BGT             loc_45BC02
45BB54:  AND.W           R2, R2, R9
45BB58:  CMP             R2, #1
45BB5A:  BEQ             loc_45BC02
45BB5C:  VCMP.F32        S6, #0.0
45BB60:  VMRS            APSR_nzcv, FPSCR
45BB64:  BEQ             loc_45BC06
45BB66:  LDRB.W          R2, [R0,R5,LSL#2]
45BB6A:  UXTB            R1, R1
45BB6C:  VMOV            S8, R1
45BB70:  VSUB.F32        S12, S4, S6
45BB74:  ADD.W           R1, R0, R5,LSL#2
45BB78:  VMOV            S10, R2
45BB7C:  ADD.W           R4, R10, R5,LSL#2
45BB80:  VCVT.F32.U32    S8, S8
45BB84:  VCVT.F32.U32    S10, S10
45BB88:  LDRB            R2, [R1,#1]
45BB8A:  LDRB            R3, [R1,#2]
45BB8C:  VMUL.F32        S8, S6, S8
45BB90:  VMUL.F32        S10, S12, S10
45BB94:  VADD.F32        S8, S10, S8
45BB98:  VMOV            S10, R2
45BB9C:  VMIN.F32        D4, D4, D0
45BBA0:  VCVT.U32.F32    S8, S8
45BBA4:  VCVT.F32.U32    S10, S10
45BBA8:  VMOV            R2, S8
45BBAC:  VMUL.F32        S10, S12, S10
45BBB0:  STRB.W          R2, [R0,R5,LSL#2]
45BBB4:  LDRB            R2, [R4,#1]
45BBB6:  VMOV            S8, R2
45BBBA:  VCVT.F32.U32    S8, S8
45BBBE:  VMUL.F32        S8, S6, S8
45BBC2:  VADD.F32        S8, S10, S8
45BBC6:  VMOV            S10, R3
45BBCA:  VMIN.F32        D4, D4, D0
45BBCE:  VCVT.U32.F32    S8, S8
45BBD2:  VCVT.F32.U32    S10, S10
45BBD6:  VMOV            R2, S8
45BBDA:  VMUL.F32        S10, S12, S10
45BBDE:  STRB            R2, [R1,#1]
45BBE0:  LDRB            R2, [R4,#2]
45BBE2:  VMOV            S8, R2
45BBE6:  VCVT.F32.U32    S8, S8
45BBEA:  VMUL.F32        S6, S6, S8
45BBEE:  VADD.F32        S6, S10, S6
45BBF2:  VMIN.F32        D3, D3, D0
45BBF6:  VCVT.U32.F32    S6, S6
45BBFA:  VMOV            R2, S6
45BBFE:  STRB            R2, [R1,#2]
45BC00:  B               loc_45BC06
45BC02:  STR.W           R1, [R0,R5,LSL#2]
45BC06:  LDRD.W          R1, R2, [R6,#0xC]
45BC0A:  ADDS            R5, #1
45BC0C:  MULS            R1, R2
45BC0E:  CMP             R5, R1
45BC10:  BLT             loc_45BB2A
45BC12:  MOV             R0, R6
45BC14:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
45BC18:  MOV             R0, R8
45BC1A:  POP.W           {R8-R10}
45BC1E:  POP.W           {R4-R7,LR}
45BC22:  B.W             sub_19A090
