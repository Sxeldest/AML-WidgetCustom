; =========================================================
; Game Engine Function: _ZN6CWorld37FindObjectsIntersectingCubeSectorListER8CPtrListRK7CVectorS4_PssPP7CEntity
; Address            : 0x429B38 - 0x429C2C
; =========================================================

429B38:  PUSH            {R4-R7,LR}
429B3A:  ADD             R7, SP, #0xC
429B3C:  PUSH.W          {R8-R10}
429B40:  LDR.W           R10, [R0]
429B44:  CMP.W           R10, #0
429B48:  BEQ             loc_429C26
429B4A:  LDR             R4, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x429B52)
429B4C:  LDR             R5, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x429B58)
429B4E:  ADD             R4, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
429B50:  LDRD.W          LR, R12, [R7,#arg_0]
429B54:  ADD             R5, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
429B56:  LDR.W           R9, [R4]; CWorld::ms_nCurrentScanCode ...
429B5A:  LDR.W           R8, [R5]; CModelInfo::ms_modelInfoPtrs ...
429B5E:  LDRD.W          R6, R10, [R10]
429B62:  LDRH.W          R5, [R9]; CWorld::ms_nCurrentScanCode
429B66:  LDRH            R4, [R6,#0x30]
429B68:  CMP             R4, R5
429B6A:  BEQ             loc_429C08
429B6C:  LDRSH.W         R4, [R6,#0x26]
429B70:  LDR             R0, [R6,#0x14]
429B72:  STRH            R5, [R6,#0x30]
429B74:  LDR.W           R4, [R8,R4,LSL#2]
429B78:  ADD.W           R5, R0, #0x30 ; '0'
429B7C:  CMP             R0, #0
429B7E:  LDR             R4, [R4,#0x2C]
429B80:  IT EQ
429B82:  ADDEQ           R5, R6, #4
429B84:  VLDR            S2, [R5]
429B88:  VLDR            S6, [R1]
429B8C:  VLDR            S0, [R4,#0x24]
429B90:  VADD.F32        S4, S2, S0
429B94:  VCMPE.F32       S4, S6
429B98:  VMRS            APSR_nzcv, FPSCR
429B9C:  BLT             loc_429C08
429B9E:  VSUB.F32        S2, S2, S0
429BA2:  VLDR            S4, [R2]
429BA6:  VCMPE.F32       S2, S4
429BAA:  VMRS            APSR_nzcv, FPSCR
429BAE:  BGT             loc_429C08
429BB0:  VLDR            S2, [R5,#4]
429BB4:  VLDR            S6, [R1,#4]
429BB8:  VADD.F32        S4, S0, S2
429BBC:  VCMPE.F32       S4, S6
429BC0:  VMRS            APSR_nzcv, FPSCR
429BC4:  BLT             loc_429C08
429BC6:  VSUB.F32        S2, S2, S0
429BCA:  VLDR            S4, [R2,#4]
429BCE:  VCMPE.F32       S2, S4
429BD2:  VMRS            APSR_nzcv, FPSCR
429BD6:  BGT             loc_429C08
429BD8:  VLDR            S2, [R5,#8]
429BDC:  VLDR            S6, [R1,#8]
429BE0:  VADD.F32        S4, S0, S2
429BE4:  VCMPE.F32       S4, S6
429BE8:  VMRS            APSR_nzcv, FPSCR
429BEC:  BLT             loc_429C08
429BEE:  VSUB.F32        S0, S2, S0
429BF2:  VLDR            S2, [R2,#8]
429BF6:  VCMPE.F32       S0, S2
429BFA:  VMRS            APSR_nzcv, FPSCR
429BFE:  ITT LE
429C00:  LDRSHLE.W       R5, [R3]
429C04:  CMPLE           R5, LR
429C06:  BLT             loc_429C10
429C08:  CMP.W           R10, #0
429C0C:  BNE             loc_429B5E
429C0E:  B               loc_429C26
429C10:  CMP.W           R12, #0
429C14:  ITT NE
429C16:  STRNE.W         R6, [R12,R5,LSL#2]
429C1A:  LDRHNE          R5, [R3]
429C1C:  ADDS            R0, R5, #1
429C1E:  STRH            R0, [R3]
429C20:  CMP.W           R10, #0
429C24:  BNE             loc_429B5E
429C26:  POP.W           {R8-R10}
429C2A:  POP             {R4-R7,PC}
