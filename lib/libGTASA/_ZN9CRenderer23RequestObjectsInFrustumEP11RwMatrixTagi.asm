; =========================================================
; Game Engine Function: _ZN9CRenderer23RequestObjectsInFrustumEP11RwMatrixTagi
; Address            : 0x411AA4 - 0x411CDC
; =========================================================

411AA4:  PUSH            {R4-R7,LR}
411AA6:  ADD             R7, SP, #0xC
411AA8:  PUSH.W          {R11}
411AAC:  VPUSH           {D8}
411AB0:  SUB             SP, SP, #0xC0
411AB2:  MOV             R4, R0
411AB4:  LDR             R0, =(TheCamera_ptr - 0x411ABE)
411AB6:  MOV             R5, R1
411AB8:  MOVS            R1, #0
411ABA:  ADD             R0, PC; TheCamera_ptr
411ABC:  VMOV.I32        Q8, #0
411AC0:  ADD             R6, SP, #0xD8+var_B4
411AC2:  LDR             R0, [R0]; TheCamera
411AC4:  LDR.W           R0, [R0,#(dword_952880 - 0x951FA8)]
411AC8:  VLDR            S16, [R0,#0x84]
411ACC:  STRD.W          R1, R1, [SP,#0xD8+var_B4]
411AD0:  STR             R1, [SP,#0xD8+var_AC]
411AD2:  ADD.W           R1, R6, #0x8C
411AD6:  VLDR            S0, [R0,#0x68]
411ADA:  VLDR            S2, [R0,#0x6C]
411ADE:  VNMUL.F32       S4, S16, S0
411AE2:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x411AF0)
411AE4:  VMUL.F32        S6, S16, S2
411AE8:  VMUL.F32        S0, S16, S0
411AEC:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
411AEE:  VNMUL.F32       S2, S16, S2
411AF2:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
411AF4:  VSTR            S4, [SP,#0xD8+var_A8]
411AF8:  VSTR            S16, [SP,#0xD8+var_A0]
411AFC:  VSTR            S16, [SP,#0xD8+var_94]
411B00:  VSTR            S0, [SP,#0xD8+var_9C]
411B04:  VSTR            S16, [SP,#0xD8+var_88]
411B08:  VSTR            S0, [SP,#0xD8+var_90]
411B0C:  VSTR            S16, [SP,#0xD8+var_7C]
411B10:  VSTR            S4, [SP,#0xD8+var_84]
411B14:  VSTR            S6, [SP,#0xD8+var_A4]
411B18:  VSTR            S6, [SP,#0xD8+var_98]
411B1C:  VSTR            S2, [SP,#0xD8+var_8C]
411B20:  VSTR            S2, [SP,#0xD8+var_80]
411B24:  VST1.32         {D16-D17}, [R1]
411B28:  ADD.W           R1, R6, #0x7C ; '|'
411B2C:  VST1.32         {D16-D17}, [R1]
411B30:  ADD.W           R1, R6, #0x6C ; 'l'
411B34:  VST1.32         {D16-D17}, [R1]
411B38:  ADD.W           R1, R6, #0x5C ; '\'
411B3C:  VST1.32         {D16-D17}, [R1]
411B40:  ADD.W           R1, R6, #0x4C ; 'L'
411B44:  VST1.32         {D16-D17}, [R1]
411B48:  ADD.W           R1, R6, #0x3C ; '<'
411B4C:  LDRH            R0, [R0]; this
411B4E:  VST1.32         {D16-D17}, [R1]
411B52:  MOVW            R1, #0xFFFF
411B56:  CMP             R0, R1
411B58:  BEQ             loc_411B5E
411B5A:  ADDS            R0, #1
411B5C:  B               loc_411B64
411B5E:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
411B62:  MOVS            R0, #1
411B64:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x411B6C)
411B66:  CMP             R4, #0
411B68:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
411B6A:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
411B6C:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
411B6E:  BNE             loc_411B80
411B70:  LDR             R0, =(TheCamera_ptr - 0x411B76)
411B72:  ADD             R0, PC; TheCamera_ptr
411B74:  LDR             R0, [R0]; TheCamera
411B76:  LDR.W           R0, [R0,#(dword_952880 - 0x951FA8)]
411B7A:  LDR             R0, [R0,#4]
411B7C:  ADD.W           R4, R0, #0x10
411B80:  LDR             R0, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x411B88)
411B82:  LDR             R1, =(_ZN9CRenderer16ms_fFarClipPlaneE_ptr - 0x411B8C)
411B84:  ADD             R0, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
411B86:  LDR             R2, =(dword_962E90 - 0x411B94)
411B88:  ADD             R1, PC; _ZN9CRenderer16ms_fFarClipPlaneE_ptr
411B8A:  VLDR            D16, [R4,#0x30]
411B8E:  LDR             R0, [R0]; CRenderer::ms_vecCameraPosition ...
411B90:  ADD             R2, PC; dword_962E90
411B92:  LDR             R3, [R4,#0x38]
411B94:  LDR             R1, [R1]; CRenderer::ms_fFarClipPlane ...
411B96:  STR             R3, [R0,#(dword_960B58 - 0x960B50)]
411B98:  VSTR            D16, [R0]
411B9C:  MOVS            R0, #0x43960000
411BA2:  STR             R5, [R2]
411BA4:  STR             R0, [R1]; CRenderer::ms_fFarClipPlane
411BA6:  VLDR            S0, [R4,#0x28]
411BAA:  VCMPE.F32       S0, #0.0
411BAE:  VMRS            APSR_nzcv, FPSCR
411BB2:  BLE             loc_411BD2
411BB4:  VMOV.F32        S0, #1.0
411BB8:  ADD.W           R0, R6, #0x2C ; ','
411BBC:  ADD.W           R1, R6, #0x28 ; '('
411BC0:  ADD.W           R2, R6, #0x24 ; '$'
411BC4:  VLDR            S2, [SP,#0xD8+var_84]
411BC8:  VLDR            S4, [SP,#0xD8+var_80]
411BCC:  VLDR            S6, [SP,#0xD8+var_7C]
411BD0:  B               loc_411BEE
411BD2:  VMOV.F32        S0, #1.0
411BD6:  ADD.W           R0, R6, #0x20 ; ' '
411BDA:  ADD.W           R1, R6, #0x1C
411BDE:  ADD.W           R2, R6, #0x18
411BE2:  VLDR            S2, [SP,#0xD8+var_A8]
411BE6:  VLDR            S4, [SP,#0xD8+var_A4]
411BEA:  VLDR            S6, [SP,#0xD8+var_A0]
411BEE:  VDIV.F32        S0, S0, S16
411BF2:  VLDR            S8, =300.0
411BF6:  MOV             R3, R4
411BF8:  VMUL.F32        S4, S4, S8
411BFC:  VMUL.F32        S6, S6, S8
411C00:  VMUL.F32        S8, S2, S8
411C04:  VMUL.F32        S4, S0, S4
411C08:  VMUL.F32        S2, S0, S6
411C0C:  VMUL.F32        S6, S0, S8
411C10:  VLDR            S8, =300.0
411C14:  VSTR            S2, [SP,#0xD8+var_70]
411C18:  VSTR            S4, [SP,#0xD8+var_74]
411C1C:  VSTR            S6, [SP,#0xD8+var_78]
411C20:  VLDR            S2, [R0]
411C24:  ADD             R0, SP, #0xD8+var_B4
411C26:  VLDR            S4, [R1]
411C2A:  VLDR            S6, [R2]
411C2E:  VMUL.F32        S2, S2, S8
411C32:  VMUL.F32        S4, S4, S8
411C36:  MOV             R1, R0
411C38:  VMUL.F32        S6, S6, S8
411C3C:  MOVS            R2, #0xD
411C3E:  VMUL.F32        S2, S0, S2
411C42:  VMUL.F32        S4, S0, S4
411C46:  VMUL.F32        S0, S0, S6
411C4A:  VSTR            S2, [SP,#0xD8+var_64]
411C4E:  VSTR            S4, [SP,#0xD8+var_68]
411C52:  VSTR            S0, [SP,#0xD8+var_6C]
411C56:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
411C5A:  VLDR            S0, =50.0
411C5E:  MOVS            R1, #3
411C60:  VLDR            S2, [SP,#0xD8+var_B4]
411C64:  VLDR            S4, [SP,#0xD8+var_B0]
411C68:  VLDR            S6, [SP,#0xD8+var_78]
411C6C:  VLDR            S8, [SP,#0xD8+var_74]
411C70:  VLDR            S10, [SP,#0xD8+var_6C]
411C74:  VLDR            S12, [SP,#0xD8+var_68]
411C78:  VDIV.F32        S2, S2, S0
411C7C:  LDR             R0, =(_ZN9CRenderer28ScanSectorList_RequestModelsEii_ptr - 0x411C82)
411C7E:  ADD             R0, PC; _ZN9CRenderer28ScanSectorList_RequestModelsEii_ptr
411C80:  LDR             R2, [R0]; CRenderer::ScanSectorList_RequestModels(int,int)
411C82:  ADD             R0, SP, #0xD8+var_D4
411C84:  VDIV.F32        S4, S4, S0
411C88:  VDIV.F32        S6, S6, S0
411C8C:  VDIV.F32        S8, S8, S0
411C90:  VDIV.F32        S10, S10, S0
411C94:  VDIV.F32        S0, S12, S0
411C98:  VLDR            S12, =60.0
411C9C:  VADD.F32        S2, S2, S12
411CA0:  VADD.F32        S4, S4, S12
411CA4:  VADD.F32        S6, S6, S12
411CA8:  VADD.F32        S8, S8, S12
411CAC:  VADD.F32        S10, S10, S12
411CB0:  VADD.F32        S0, S0, S12
411CB4:  VSTR            S2, [SP,#0xD8+var_D4]
411CB8:  VSTR            S4, [SP,#0xD8+var_D0]
411CBC:  VSTR            S6, [SP,#0xD8+var_CC]
411CC0:  VSTR            S8, [SP,#0xD8+var_C8]
411CC4:  VSTR            S10, [SP,#0xD8+var_C4]
411CC8:  VSTR            S0, [SP,#0xD8+var_C0]
411CCC:  BLX             j__ZN10CWorldScan9ScanWorldEP5RwV2diPFviiE; CWorldScan::ScanWorld(RwV2d *,int,void (*)(int,int))
411CD0:  ADD             SP, SP, #0xC0
411CD2:  VPOP            {D8}
411CD6:  POP.W           {R11}
411CDA:  POP             {R4-R7,PC}
