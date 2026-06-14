; =========================================================
; Game Engine Function: _ZN4CCam19Process_DW_BirdyCamEb
; Address            : 0x3CED04 - 0x3CF52C
; =========================================================

3CED04:  PUSH            {R4-R7,LR}
3CED06:  ADD             R7, SP, #0xC
3CED08:  PUSH.W          {R8-R11}
3CED0C:  SUB             SP, SP, #4
3CED0E:  VPUSH           {D8-D14}
3CED12:  SUB.W           SP, SP, #0x900; CEntity **
3CED16:  SUB             SP, SP, #8; __int16 *
3CED18:  MOV             R6, R0
3CED1A:  LDR.W           R0, =(TheCamera_ptr - 0x3CED22)
3CED1E:  ADD             R0, PC; TheCamera_ptr
3CED20:  LDR             R1, [R0]; TheCamera
3CED22:  MOVS            R0, #0
3CED24:  STRB.W          R0, [R1,#(byte_951FD7 - 0x951FA8)]
3CED28:  LDR.W           R1, [R6,#0x1F4]
3CED2C:  CMP             R1, #0
3CED2E:  BEQ.W           loc_3CF472
3CED32:  LDRB.W          R0, [R1,#0x3A]
3CED36:  AND.W           R0, R0, #7
3CED3A:  CMP             R0, #2
3CED3C:  BNE.W           loc_3CF470
3CED40:  SUB.W           LR, R7, #-var_BC
3CED44:  SUB.W           R3, R7, #-var_B0
3CED48:  SUB.W           R0, R7, #-var_D8
3CED4C:  SUB.W           R2, R7, #-var_C0
3CED50:  SUB.W           R5, R7, #-var_98
3CED54:  SUB.W           R4, R7, #-var_8C
3CED58:  SUB.W           R1, R7, #-var_80
3CED5C:  STR             R0, [SP,#0x960+var_940]; CColSphere *
3CED5E:  STMEA.W         SP, {R1,R4,R5}
3CED62:  SUB.W           R0, R7, #-var_A4
3CED66:  SUB.W           R1, R7, #-var_64; CEntity **
3CED6A:  STRD.W          R0, R3, [SP,#0x960+var_954]; CVector *
3CED6E:  SUB.W           R3, R7, #-var_74; CVector *
3CED72:  STRD.W          R2, LR, [SP,#0x960+var_94C]; float *
3CED76:  SUB.W           R2, R7, #-var_68; CVehicle **
3CED7A:  MOV             R0, R6; this
3CED7C:  SUB.W           R12, R7, #-var_C4
3CED80:  STR.W           R12, [SP,#0x960+var_944]; bool
3CED84:  STR             R6, [SP,#0x960+var_938]
3CED86:  BLX             j__ZN4CCam28GetCoreDataForDWCineyCamModeEPP7CEntityPP8CVehicleP7CVectorS7_S7_S7_S7_S7_PfS7_S8_P10CColSphere; CCam::GetCoreDataForDWCineyCamMode(CEntity **,CVehicle **,CVector *,CVector *,CVector *,CVector *,CVector *,CVector *,float *,CVector *,float *,CColSphere *)
3CED8A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CED96)
3CED8E:  LDR.W           R1, =(byte_9530E0 - 0x3CED98)
3CED92:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CED94:  ADD             R1, PC; byte_9530E0
3CED96:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3CED98:  LDR.W           R11, [R0]; CTimer::m_snTimeInMilliseconds
3CED9C:  LDRB            R0, [R1]
3CED9E:  DMB.W           ISH
3CEDA2:  TST.W           R0, #1
3CEDA6:  BNE             loc_3CEDBE
3CEDA8:  LDR.W           R0, =(byte_9530E0 - 0x3CEDB0)
3CEDAC:  ADD             R0, PC; byte_9530E0 ; __guard *
3CEDAE:  BLX             j___cxa_guard_acquire
3CEDB2:  CBZ             R0, loc_3CEDBE
3CEDB4:  LDR.W           R0, =(byte_9530E0 - 0x3CEDBC)
3CEDB8:  ADD             R0, PC; byte_9530E0 ; __guard *
3CEDBA:  BLX             j___cxa_guard_release
3CEDBE:  LDR.W           R0, =(byte_9530E8 - 0x3CEDC6)
3CEDC2:  ADD             R0, PC; byte_9530E8
3CEDC4:  LDRB            R0, [R0]
3CEDC6:  DMB.W           ISH
3CEDCA:  TST.W           R0, #1
3CEDCE:  BNE             loc_3CEDF0
3CEDD0:  LDR.W           R0, =(byte_9530E8 - 0x3CEDD8)
3CEDD4:  ADD             R0, PC; byte_9530E8 ; __guard *
3CEDD6:  BLX             j___cxa_guard_acquire
3CEDDA:  CBZ             R0, loc_3CEDF0
3CEDDC:  LDR.W           R1, =(dword_9530E4 - 0x3CEDEA)
3CEDE0:  MOVS            R2, #0x1E
3CEDE2:  LDR.W           R0, =(byte_9530E8 - 0x3CEDEC)
3CEDE6:  ADD             R1, PC; dword_9530E4
3CEDE8:  ADD             R0, PC; byte_9530E8 ; __guard *
3CEDEA:  STR             R2, [R1]
3CEDEC:  BLX             j___cxa_guard_release
3CEDF0:  LDR.W           R0, =(gDWLastModeForCineyCam_ptr - 0x3CEDF8)
3CEDF4:  ADD             R0, PC; gDWLastModeForCineyCam_ptr
3CEDF6:  LDR             R0, [R0]; gDWLastModeForCineyCam
3CEDF8:  LDR             R0, [R0]
3CEDFA:  CMP             R0, #0x3A ; ':'
3CEDFC:  BNE             loc_3CEE1A
3CEDFE:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x3CEE0A)
3CEE02:  LDR.W           R1, =(gLastFrameProcessedDWCineyCam_ptr - 0x3CEE0C)
3CEE06:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
3CEE08:  ADD             R1, PC; gLastFrameProcessedDWCineyCam_ptr
3CEE0A:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
3CEE0C:  LDR             R1, [R1]; gLastFrameProcessedDWCineyCam
3CEE0E:  LDR             R0, [R0]; CTimer::m_FrameCounter
3CEE10:  LDR             R1, [R1]
3CEE12:  SUBS            R0, #1
3CEE14:  CMP             R1, R0
3CEE16:  BCS.W           loc_3CF336
3CEE1A:  LDR.W           R0, =(gHandShaker_ptr - 0x3CEE2E)
3CEE1E:  MOV.W           R10, #0
3CEE22:  LDR.W           R1, =(gDWCineyCamEndTime_ptr - 0x3CEE34)
3CEE26:  LDR.W           R2, =(gDWCineyCamStartTime_ptr - 0x3CEE3A)
3CEE2A:  ADD             R0, PC; gHandShaker_ptr
3CEE2C:  LDR.W           R3, =(gDWLastModeForCineyCam_ptr - 0x3CEE40)
3CEE30:  ADD             R1, PC; gDWCineyCamEndTime_ptr
3CEE32:  LDR.W           R6, =(dword_9530E4 - 0x3CEE46)
3CEE36:  ADD             R2, PC; gDWCineyCamStartTime_ptr
3CEE38:  LDR.W           R5, =(gbExitCam_ptr - 0x3CEE48)
3CEE3C:  ADD             R3, PC; gDWLastModeForCineyCam_ptr
3CEE3E:  LDR.W           R12, =(gDWCamMaxDurationMs_ptr - 0x3CEE4C)
3CEE42:  ADD             R6, PC; dword_9530E4
3CEE44:  ADD             R5, PC; gbExitCam_ptr
3CEE46:  LDR             R4, [R0]; gHandShaker
3CEE48:  ADD             R12, PC; gDWCamMaxDurationMs_ptr
3CEE4A:  LDR             R0, [R1]; gDWCineyCamEndTime
3CEE4C:  LDR             R1, [R2]; gDWCineyCamStartTime
3CEE4E:  LDR             R2, [R3]; gDWLastModeForCineyCam
3CEE50:  MOVS            R3, #0x1E
3CEE52:  STR             R3, [R6]
3CEE54:  MOVS            R6, #0x3A ; ':'
3CEE56:  LDR             R3, [R5]; gbExitCam
3CEE58:  LDR.W           R5, [R12]; gDWCamMaxDurationMs
3CEE5C:  STR             R6, [R2]
3CEE5E:  STRB.W          R10, [R3,#(byte_952FF6 - 0x952FF4)]
3CEE62:  LDR             R2, [R5,#(dword_6AA650 - 0x6AA648)]
3CEE64:  STR.W           R11, [R1]
3CEE68:  STRD.W          R10, R10, [R4]
3CEE6C:  ADD.W           R1, R2, R11
3CEE70:  STR.W           R10, [R4,#(dword_951C24 - 0x951C1C)]
3CEE74:  VLDR            S18, [R4,#0x18]
3CEE78:  STR             R1, [R0]
3CEE7A:  BLX             rand
3CEE7E:  VMOV            S0, R0
3CEE82:  VLDR            S20, [R4,#0x1C]
3CEE86:  VCVT.F32.S32    S22, S0
3CEE8A:  BLX             rand
3CEE8E:  VMOV            S0, R0
3CEE92:  VLDR            S24, [R4,#0x20]
3CEE96:  VCVT.F32.S32    S26, S0
3CEE9A:  BLX             rand
3CEE9E:  VMOV            S0, R0
3CEEA2:  VLDR            S16, =4.6566e-10
3CEEA6:  VLDR            S6, =0.0
3CEEAA:  MOVW            R9, #0
3CEEAE:  VCVT.F32.S32    S0, S0
3CEEB2:  VLDR            S8, [R7,#var_70]
3CEEB6:  VMUL.F32        S2, S22, S16
3CEEBA:  VLDR            S10, [R7,#var_70+4]
3CEEBE:  VMUL.F32        S4, S26, S16
3CEEC2:  MOVT            R9, #0x4248
3CEEC6:  ADD             R0, SP, #0x960+var_914; this
3CEEC8:  ADD.W           R3, SP, #0x960+var_8DA; bool
3CEECC:  ADD.W           R6, SP, #0x960+var_2D8
3CEED0:  MOVS            R5, #0x7F
3CEED2:  MOV             R1, R9; CVector *
3CEED4:  MOVS            R2, #1; float
3CEED6:  VMUL.F32        S0, S0, S16
3CEEDA:  VMUL.F32        S2, S18, S2
3CEEDE:  VMUL.F32        S4, S20, S4
3CEEE2:  VMUL.F32        S0, S24, S0
3CEEE6:  VADD.F32        S2, S2, S6
3CEEEA:  VADD.F32        S4, S4, S6
3CEEEE:  VADD.F32        S0, S0, S6
3CEEF2:  VLDR            S6, =50.0
3CEEF6:  VSTR            S2, [R4,#0x24]
3CEEFA:  VSTR            S4, [R4,#0x28]
3CEEFE:  VLDR            S2, [R7,#var_A0]
3CEF02:  VLDR            S4, [R7,#var_9C]
3CEF06:  VMUL.F32        S20, S2, S6
3CEF0A:  VMUL.F32        S22, S4, S6
3CEF0E:  VSTR            S0, [R4,#0x2C]
3CEF12:  MOVS            R4, #1
3CEF14:  VLDR            S0, [R7,#var_A4]
3CEF18:  VMUL.F32        S18, S0, S6
3CEF1C:  VLDR            S6, [R7,#var_74]
3CEF20:  VADD.F32        S2, S20, S20
3CEF24:  VADD.F32        S4, S22, S22
3CEF28:  VADD.F32        S0, S18, S18
3CEF2C:  VADD.F32        S2, S2, S8
3CEF30:  VADD.F32        S4, S4, S10
3CEF34:  VADD.F32        S0, S0, S6
3CEF38:  VSTR            S0, [SP,#0x960+var_914]
3CEF3C:  VSTR            S2, [SP,#0x960+var_910]
3CEF40:  VSTR            S4, [SP,#0x960+var_90C]
3CEF44:  STMEA.W         SP, {R5,R6,R10}
3CEF48:  STRD.W          R10, R10, [SP,#0x960+var_954]; bool
3CEF4C:  STRD.W          R4, R4, [SP,#0x960+var_94C]; bool
3CEF50:  BLX             j__ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsInRange(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
3CEF54:  VLDR            S0, [R7,#var_74]
3CEF58:  ADD             R0, SP, #0x960+var_920; this
3CEF5A:  VLDR            S2, [R7,#var_70]
3CEF5E:  ADD             R3, SP, #0x960+var_8DC; bool
3CEF60:  VLDR            S4, [R7,#var_70+4]
3CEF64:  VSUB.F32        S0, S0, S18
3CEF68:  VSUB.F32        S2, S2, S20
3CEF6C:  ADD.W           R8, SP, #0x960+var_4D8
3CEF70:  VSUB.F32        S4, S4, S22
3CEF74:  MOV             R1, R9; CVector *
3CEF76:  MOVS            R2, #1; float
3CEF78:  VSTR            S0, [SP,#0x960+var_920]
3CEF7C:  VSTR            S2, [SP,#0x960+var_91C]
3CEF80:  VSTR            S4, [SP,#0x960+var_918]
3CEF84:  STMEA.W         SP, {R5,R8,R10}
3CEF88:  STRD.W          R10, R10, [SP,#0x960+var_954]; bool
3CEF8C:  STRD.W          R4, R4, [SP,#0x960+var_94C]; bool
3CEF90:  BLX             j__ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsInRange(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
3CEF94:  LDRSH.W         R0, [SP,#0x960+var_8DA]
3CEF98:  CMP             R0, #1
3CEF9A:  BLT             loc_3CEFFE
3CEF9C:  VLDR            S18, =0.9
3CEFA0:  ADD.W           R9, SP, #0x960+var_6D8
3CEFA4:  MOV.W           R10, #0
3CEFA8:  MOVS            R4, #0
3CEFAA:  LDR.W           R5, [R6,R4,LSL#2]
3CEFAE:  LDR             R0, [R5,#0x1C]
3CEFB0:  TST.W           R0, #0x40004
3CEFB4:  BEQ             loc_3CEFF4
3CEFB6:  LDR             R0, [R5,#0x14]
3CEFB8:  CBNZ            R0, loc_3CEFCA
3CEFBA:  MOV             R0, R5; this
3CEFBC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3CEFC0:  LDR             R1, [R5,#0x14]; CMatrix *
3CEFC2:  ADDS            R0, R5, #4; this
3CEFC4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3CEFC8:  LDR             R0, [R5,#0x14]
3CEFCA:  VLDR            S0, [R0,#0x28]
3CEFCE:  VCMPE.F32       S0, S18
3CEFD2:  VMRS            APSR_nzcv, FPSCR
3CEFD6:  BLE             loc_3CEFF4
3CEFD8:  LDR.W           R5, [R6,R4,LSL#2]
3CEFDC:  LDRSH.W         R0, [R5,#0x26]; int
3CEFE0:  BLX             j__Z11bIsLampPosti; bIsLampPost(int)
3CEFE4:  CMP             R0, #1
3CEFE6:  ITTT EQ
3CEFE8:  SXTHEQ.W        R0, R10
3CEFEC:  STREQ.W         R5, [R9,R0,LSL#2]
3CEFF0:  ADDEQ.W         R10, R10, #1
3CEFF4:  LDRSH.W         R0, [SP,#0x960+var_8DA]
3CEFF8:  ADDS            R4, #1
3CEFFA:  CMP             R4, R0
3CEFFC:  BLT             loc_3CEFAA
3CEFFE:  LDRSH.W         R0, [SP,#0x960+var_8DC]
3CF002:  MOVS            R6, #0
3CF004:  STR.W           R11, [SP,#0x960+var_934]
3CF008:  CMP             R0, #1
3CF00A:  BLT             loc_3CF066
3CF00C:  VLDR            S18, =0.9
3CF010:  ADD.W           R9, SP, #0x960+var_8D8
3CF014:  MOVS            R4, #0
3CF016:  LDR.W           R5, [R8,R4,LSL#2]
3CF01A:  LDR             R0, [R5,#0x1C]
3CF01C:  TST.W           R0, #0x40004
3CF020:  BEQ             loc_3CF05C
3CF022:  LDR             R0, [R5,#0x14]
3CF024:  CBNZ            R0, loc_3CF036
3CF026:  MOV             R0, R5; this
3CF028:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3CF02C:  LDR             R1, [R5,#0x14]; CMatrix *
3CF02E:  ADDS            R0, R5, #4; this
3CF030:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3CF034:  LDR             R0, [R5,#0x14]
3CF036:  VLDR            S0, [R0,#0x28]
3CF03A:  VCMPE.F32       S0, S18
3CF03E:  VMRS            APSR_nzcv, FPSCR
3CF042:  BLE             loc_3CF05C
3CF044:  LDR.W           R5, [R8,R4,LSL#2]
3CF048:  LDRSH.W         R0, [R5,#0x26]; int
3CF04C:  BLX             j__Z11bIsLampPosti; bIsLampPost(int)
3CF050:  CMP             R0, #1
3CF052:  ITTT EQ
3CF054:  SXTHEQ          R0, R6
3CF056:  STREQ.W         R5, [R9,R0,LSL#2]
3CF05A:  ADDEQ           R6, #1
3CF05C:  LDRSH.W         R0, [SP,#0x960+var_8DC]
3CF060:  ADDS            R4, #1
3CF062:  CMP             R4, R0
3CF064:  BLT             loc_3CF016
3CF066:  SXTH.W          R10, R10
3CF06A:  CMP.W           R10, #1
3CF06E:  BLT.W           loc_3CF320
3CF072:  VMOV.F32        S20, #-0.5
3CF076:  ADD             R4, SP, #0x960+var_6D8
3CF078:  VMOV.F32        S22, #-1.0
3CF07C:  VLDR            S18, =0.9
3CF080:  VMOV.F32        S24, #1.0
3CF084:  ADD.W           R9, SP, #0x960+var_8D8
3CF088:  SXTH.W          R8, R6
3CF08C:  MOVS            R5, #0
3CF08E:  MOVS            R0, #0
3CF090:  STR.W           R10, [SP,#0x960+var_93C]
3CF094:  B               loc_3CF312
3CF096:  ALIGN 4
3CF098:  DCFS 4.6566e-10
3CF09C:  DCFS 0.0
3CF0A0:  DCFS 50.0
3CF0A4:  DCFS 0.9
3CF0A8:  LDR.W           R6, [R4,R5,LSL#2]
3CF0AC:  LDR             R0, [R6,#0x1C]
3CF0AE:  TST.W           R0, #0x40004
3CF0B2:  BEQ.W           loc_3CF2DA
3CF0B6:  LDR             R0, [R6,#0x14]
3CF0B8:  CBNZ            R0, loc_3CF0CA
3CF0BA:  MOV             R0, R6; this
3CF0BC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3CF0C0:  LDR             R1, [R6,#0x14]; CMatrix *
3CF0C2:  ADDS            R0, R6, #4; this
3CF0C4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3CF0C8:  LDR             R0, [R6,#0x14]
3CF0CA:  VLDR            S0, [R0,#0x28]
3CF0CE:  VCMPE.F32       S0, S18
3CF0D2:  VMRS            APSR_nzcv, FPSCR
3CF0D6:  BLE.W           loc_3CF2DA
3CF0DA:  LDRSH.W         R0, [R6,#0x26]; int
3CF0DE:  BLX             j__Z11bIsLampPosti; bIsLampPost(int)
3CF0E2:  CMP             R0, #1
3CF0E4:  BNE.W           loc_3CF2DA
3CF0E8:  MOV             R0, R6; this
3CF0EA:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3CF0EE:  VLDR            D16, [R0,#0xC]
3CF0F2:  LDR             R0, [R0,#0x14]
3CF0F4:  STR             R0, [SP,#0x960+var_8F0]
3CF0F6:  VSTR            D16, [SP,#0x960+var_8F8]
3CF0FA:  LDR             R1, [R6,#0x14]
3CF0FC:  CBNZ            R1, loc_3CF10E
3CF0FE:  MOV             R0, R6; this
3CF100:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3CF104:  LDR             R1, [R6,#0x14]; CMatrix *
3CF106:  ADDS            R0, R6, #4; this
3CF108:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3CF10C:  LDR             R1, [R6,#0x14]
3CF10E:  ADD             R0, SP, #0x960+var_930
3CF110:  ADD             R2, SP, #0x960+var_8F8
3CF112:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3CF116:  LDR             R0, [SP,#0x960+var_928]
3CF118:  VLDR            D16, [SP,#0x960+var_930]
3CF11C:  STR             R0, [SP,#0x960+var_8F0]
3CF11E:  MOV             R0, R6; this
3CF120:  VSTR            D16, [SP,#0x960+var_8F8]
3CF124:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3CF128:  VLDR            S26, [R0,#0x14]
3CF12C:  MOV             R0, R6; this
3CF12E:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3CF132:  VLDR            S0, [R0,#8]
3CF136:  VMUL.F32        S28, S0, S20
3CF13A:  BLX             rand
3CF13E:  VMOV            S0, R0
3CF142:  ADD             R0, SP, #0x960+var_8E8; this
3CF144:  VADD.F32        S2, S26, S28
3CF148:  VCVT.F32.S32    S0, S0
3CF14C:  VLDR            S6, [SP,#0x960+var_8F0]
3CF150:  VLDR            S4, [SP,#0x960+var_8F8+4]
3CF154:  VLDR            S8, [R7,#var_70]
3CF158:  VSUB.F32        S4, S4, S8
3CF15C:  VADD.F32        S2, S2, S22
3CF160:  VMUL.F32        S0, S0, S16
3CF164:  VMUL.F32        S0, S2, S0
3CF168:  VLDR            S2, [SP,#0x960+var_8F8]
3CF16C:  VADD.F32        S0, S0, S24
3CF170:  VSUB.F32        S0, S6, S0
3CF174:  VLDR            S6, [R7,#var_74]
3CF178:  VSUB.F32        S2, S2, S6
3CF17C:  VLDR            S6, [R7,#var_70+4]
3CF180:  VSTR            S0, [SP,#0x960+var_8F0]
3CF184:  VSUB.F32        S0, S0, S6
3CF188:  VSTR            S2, [SP,#0x960+var_8E8]
3CF18C:  VSTR            S4, [SP,#0x960+var_8E4]
3CF190:  VSTR            S0, [SP,#0x960+var_8E0]
3CF194:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CF198:  VLDR            S0, [SP,#0x960+var_8E8]
3CF19C:  CMP             R5, R8
3CF19E:  VLDR            S6, [R7,#var_74]
3CF1A2:  VLDR            S2, [SP,#0x960+var_8E4]
3CF1A6:  VLDR            S8, [R7,#var_70]
3CF1AA:  VADD.F32        S0, S6, S0
3CF1AE:  VLDR            S4, [SP,#0x960+var_8E0]
3CF1B2:  VLDR            S10, [R7,#var_70+4]
3CF1B6:  VADD.F32        S2, S8, S2
3CF1BA:  VADD.F32        S4, S10, S4
3CF1BE:  VSTR            S0, [SP,#0x960+var_8E8]
3CF1C2:  VSTR            S2, [SP,#0x960+var_8E4]
3CF1C6:  VSTR            S4, [SP,#0x960+var_8E0]
3CF1CA:  BGE.W           loc_3CF2DA
3CF1CE:  MOV             R10, R5
3CF1D0:  LDR.W           R6, [R9,R10,LSL#2]
3CF1D4:  LDR             R0, [R6,#0x1C]
3CF1D6:  TST.W           R0, #0x40004
3CF1DA:  BEQ             loc_3CF2C8
3CF1DC:  LDR             R0, [R6,#0x14]
3CF1DE:  CBNZ            R0, loc_3CF1F0
3CF1E0:  MOV             R0, R6; this
3CF1E2:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3CF1E6:  LDR             R1, [R6,#0x14]; CMatrix *
3CF1E8:  ADDS            R0, R6, #4; this
3CF1EA:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3CF1EE:  LDR             R0, [R6,#0x14]
3CF1F0:  VLDR            S0, [R0,#0x28]
3CF1F4:  VCMPE.F32       S0, S18
3CF1F8:  VMRS            APSR_nzcv, FPSCR
3CF1FC:  BLE             loc_3CF2C8
3CF1FE:  LDRSH.W         R0, [R6,#0x26]; int
3CF202:  BLX             j__Z11bIsLampPosti; bIsLampPost(int)
3CF206:  CMP             R0, #1
3CF208:  BNE             loc_3CF2C8
3CF20A:  MOV             R0, R6; this
3CF20C:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3CF210:  VLDR            D16, [R0,#0xC]
3CF214:  LDR             R0, [R0,#0x14]
3CF216:  STR             R0, [SP,#0x960+var_900]
3CF218:  VSTR            D16, [SP,#0x960+var_908]
3CF21C:  LDR             R1, [R6,#0x14]
3CF21E:  CBNZ            R1, loc_3CF230
3CF220:  MOV             R0, R6; this
3CF222:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3CF226:  LDR             R1, [R6,#0x14]; CMatrix *
3CF228:  ADDS            R0, R6, #4; this
3CF22A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3CF22E:  LDR             R1, [R6,#0x14]
3CF230:  ADD.W           R11, SP, #0x960+var_908
3CF234:  ADD             R0, SP, #0x960+var_930
3CF236:  MOV             R2, R11
3CF238:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3CF23C:  LDR             R0, [SP,#0x960+var_928]
3CF23E:  VLDR            D16, [SP,#0x960+var_930]
3CF242:  STR             R0, [SP,#0x960+var_900]
3CF244:  MOV             R0, R6; this
3CF246:  VSTR            D16, [SP,#0x960+var_908]
3CF24A:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3CF24E:  VLDR            S26, [R0,#0x14]
3CF252:  MOV             R0, R6; this
3CF254:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3CF258:  VLDR            S0, [R0,#8]
3CF25C:  VMUL.F32        S28, S0, S20
3CF260:  BLX             rand
3CF264:  VMOV            S0, R0
3CF268:  MOVS            R0, #0
3CF26A:  VADD.F32        S2, S26, S28
3CF26E:  MOV             R1, R11; CVector *
3CF270:  VCVT.F32.S32    S0, S0
3CF274:  MOVS            R2, #(stderr+1); CVector *
3CF276:  MOVS            R3, #0; bool
3CF278:  VADD.F32        S2, S2, S22
3CF27C:  VMUL.F32        S0, S0, S16
3CF280:  VMUL.F32        S0, S2, S0
3CF284:  VLDR            S2, [SP,#0x960+var_900]
3CF288:  VADD.F32        S0, S0, S24
3CF28C:  VSUB.F32        S0, S2, S0
3CF290:  VSTR            S0, [SP,#0x960+var_900]
3CF294:  STRD.W          R0, R0, [SP,#0x960+var_960]; bool
3CF298:  STR             R0, [SP,#0x960+var_958]; bool
3CF29A:  MOVS            R0, #(stderr+1)
3CF29C:  STRD.W          R0, R0, [SP,#0x960+var_954]; CColLine *
3CF2A0:  ADD             R0, SP, #0x960+var_8F8; this
3CF2A2:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3CF2A6:  CMP             R0, #1
3CF2A8:  BNE             loc_3CF2C8
3CF2AA:  MOVS            R0, #0
3CF2AC:  ADD             R1, SP, #0x960+var_8E8; CVector *
3CF2AE:  STRD.W          R0, R0, [SP,#0x960+var_960]; bool
3CF2B2:  MOVS            R2, #(stderr+1); CVector *
3CF2B4:  STR             R0, [SP,#0x960+var_958]; bool
3CF2B6:  MOVS            R0, #(stderr+1)
3CF2B8:  STRD.W          R0, R0, [SP,#0x960+var_954]; CColLine *
3CF2BC:  ADD             R0, SP, #0x960+var_908; this
3CF2BE:  MOVS            R3, #0; bool
3CF2C0:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3CF2C4:  CMP             R0, #1
3CF2C6:  BEQ             loc_3CF2E4
3CF2C8:  ADD.W           R10, R10, #1
3CF2CC:  CMP             R10, R8
3CF2CE:  BLT.W           loc_3CF1D0
3CF2D2:  MOVS            R0, #0
3CF2D4:  LDR.W           R10, [SP,#0x960+var_93C]
3CF2D8:  B               loc_3CF2DC
3CF2DA:  MOVS            R0, #0
3CF2DC:  ADDS            R5, #1
3CF2DE:  CMP             R5, R10
3CF2E0:  BLT             loc_3CF312
3CF2E2:  B               loc_3CF31A
3CF2E4:  LDR             R2, =(unk_9530C8 - 0x3CF2F0)
3CF2E6:  VLDR            D16, [SP,#0x960+var_8F8]
3CF2EA:  LDR             R0, [SP,#0x960+var_8F0]
3CF2EC:  ADD             R2, PC; unk_9530C8
3CF2EE:  STR.W           R0, [R7,#var_78]
3CF2F2:  VSTR            D16, [R7,#var_80]
3CF2F6:  VLDR            D16, [SP,#0x960+var_8F8]
3CF2FA:  VLDR            D17, [SP,#0x960+var_908]
3CF2FE:  LDR             R0, [SP,#0x960+var_8F0]
3CF300:  LDR             R1, [SP,#0x960+var_900]
3CF302:  STR             R0, [R2,#(dword_9530D0 - 0x9530C8)]
3CF304:  MOVS            R0, #1
3CF306:  STR             R1, [R2,#(dword_9530DC - 0x9530C8)]
3CF308:  VSTR            D16, [R2]
3CF30C:  VSTR            D17, [R2,#0xC]
3CF310:  B               loc_3CF2D4
3CF312:  LSLS            R0, R0, #0x1F
3CF314:  BEQ.W           loc_3CF0A8
3CF318:  B               loc_3CF31C
3CF31A:  CBZ             R0, loc_3CF320
3CF31C:  MOVS            R0, #1
3CF31E:  B               loc_3CF32C
3CF320:  LDR             R0, =(gbExitCam_ptr - 0x3CF328)
3CF322:  MOVS            R1, #1
3CF324:  ADD             R0, PC; gbExitCam_ptr
3CF326:  LDR             R0, [R0]; gbExitCam
3CF328:  STRB            R1, [R0,#(byte_952FF6 - 0x952FF4)]
3CF32A:  MOVS            R0, #0
3CF32C:  LDR.W           R11, [SP,#0x960+var_934]
3CF330:  CMP             R0, #1
3CF332:  BNE.W           loc_3CF470
3CF336:  LDR             R0, =(unk_9530C8 - 0x3CF342)
3CF338:  ADDW            R4, SP, #0x960+var_4D4
3CF33C:  LDR             R1, =(gDWCineyCamEndTime_ptr - 0x3CF346)
3CF33E:  ADD             R0, PC; unk_9530C8
3CF340:  LDR             R2, =(gDWCineyCamStartTime_ptr - 0x3CF34C)
3CF342:  ADD             R1, PC; gDWCineyCamEndTime_ptr
3CF344:  VLDR            D8, [R0,#4]
3CF348:  ADD             R2, PC; gDWCineyCamStartTime_ptr
3CF34A:  VLDR            D10, [R0,#0x10]
3CF34E:  VLDR            S18, [R0]
3CF352:  VLDR            S22, [R0,#0xC]
3CF356:  VSUB.F32        S0, S20, S16
3CF35A:  VSUB.F32        S2, S21, S17
3CF35E:  LDR             R0, [R1]; gDWCineyCamEndTime
3CF360:  VSUB.F32        S4, S22, S18
3CF364:  LDR             R1, [R2]; gDWCineyCamStartTime
3CF366:  LDR             R6, [R0]
3CF368:  ADD.W           R0, SP, #0x960+var_4D8; this
3CF36C:  LDR             R5, [R1]
3CF36E:  VSTR            S4, [R4,#-4]
3CF372:  VSTR            S0, [R4]
3CF376:  VSTR            S2, [R4,#4]
3CF37A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CF37E:  LDR             R0, =(gbExitCam_ptr - 0x3CF384)
3CF380:  ADD             R0, PC; gbExitCam_ptr
3CF382:  LDR             R0, [R0]; gbExitCam
3CF384:  LDRB            R0, [R0,#(byte_952FF6 - 0x952FF4)]
3CF386:  CMP             R0, #0
3CF388:  BNE             loc_3CF466
3CF38A:  SUBS            R0, R6, R5
3CF38C:  VLDR            S24, [R4,#-4]
3CF390:  VLDR            D13, [R4]
3CF394:  VMOV            S0, R0
3CF398:  SUB.W           R0, R11, R5
3CF39C:  VLDR            S4, =270.0
3CF3A0:  VSUB.F32        S22, S22, S24
3CF3A4:  VMOV            S2, R0
3CF3A8:  VCVT.F32.S32    S0, S0
3CF3AC:  VCVT.F32.S32    S2, S2
3CF3B0:  VSUB.F32        D10, D10, D13
3CF3B4:  VDIV.F32        S0, S2, S0
3CF3B8:  VLDR            S2, =180.0
3CF3BC:  VMUL.F32        S0, S0, S2
3CF3C0:  VSUB.F32        S0, S4, S0
3CF3C4:  VLDR            S4, =3.1416
3CF3C8:  VMUL.F32        S0, S0, S4
3CF3CC:  VDIV.F32        S0, S0, S2
3CF3D0:  VMOV            R0, S0; x
3CF3D4:  BLX             sinf
3CF3D8:  VADD.F32        S0, S24, S24
3CF3DC:  VLDR            D17, [R7,#var_70]
3CF3E0:  VMOV.F32        S2, #1.0
3CF3E4:  VMOV            S4, R0
3CF3E8:  SUB.W           R0, R7, #-var_80
3CF3EC:  VMOV.F32        S6, #0.5
3CF3F0:  VADD.F32        D16, D13, D13
3CF3F4:  MOV             R1, R0
3CF3F6:  ORR.W           R0, R1, #4
3CF3FA:  VADD.F32        S0, S18, S0
3CF3FE:  VADD.F32        S2, S4, S2
3CF402:  VADD.F32        D16, D8, D16
3CF406:  VSUB.F32        D16, D16, D10
3CF40A:  VSUB.F32        S0, S0, S22
3CF40E:  VMUL.F32        S2, S2, S6
3CF412:  VMUL.F32        D16, D16, D1[0]
3CF416:  VMUL.F32        S0, S0, S2
3CF41A:  VLDR            S2, [R7,#var_74]
3CF41E:  VADD.F32        D16, D10, D16
3CF422:  VADD.F32        S0, S22, S0
3CF426:  VSTR            S0, [R7,#var_80]
3CF42A:  VSUB.F32        S0, S2, S0
3CF42E:  VST1.32         {D16[0]}, [R0@32]
3CF432:  ADD.W           R0, R1, #8
3CF436:  VST1.32         {D16[1]}, [R0@32]
3CF43A:  VSUB.F32        D16, D17, D16
3CF43E:  LDR             R0, =(gMovieCamMinDist_ptr - 0x3CF44C)
3CF440:  VMUL.F32        S0, S0, S0
3CF444:  VMUL.F32        D1, D16, D16
3CF448:  ADD             R0, PC; gMovieCamMinDist_ptr
3CF44A:  LDR             R0, [R0]; gMovieCamMinDist
3CF44C:  VADD.F32        S0, S0, S2
3CF450:  VADD.F32        S0, S0, S3
3CF454:  VLDR            S2, [R0,#8]
3CF458:  VSQRT.F32       S0, S0
3CF45C:  VCMPE.F32       S0, S2
3CF460:  VMRS            APSR_nzcv, FPSCR
3CF464:  BGE             loc_3CF484
3CF466:  LDR             R0, =(gbExitCam_ptr - 0x3CF46C)
3CF468:  ADD             R0, PC; gbExitCam_ptr
3CF46A:  LDR             R0, [R0]; gbExitCam
3CF46C:  MOVS            R1, #1
3CF46E:  STRB            R1, [R0,#(byte_952FF6 - 0x952FF4)]
3CF470:  MOVS            R0, #0
3CF472:  ADD.W           SP, SP, #0x900
3CF476:  ADD             SP, SP, #8
3CF478:  VPOP            {D8-D14}
3CF47C:  ADD             SP, SP, #4
3CF47E:  POP.W           {R8-R11}
3CF482:  POP             {R4-R7,PC}
3CF484:  LDR             R0, =(gMovieCamMaxDist_ptr - 0x3CF48A)
3CF486:  ADD             R0, PC; gMovieCamMaxDist_ptr
3CF488:  LDR             R0, [R0]; gMovieCamMaxDist
3CF48A:  VLDR            S2, [R0,#8]
3CF48E:  VCMPE.F32       S0, S2
3CF492:  VMRS            APSR_nzcv, FPSCR
3CF496:  BGT             loc_3CF466
3CF498:  LDR             R0, =(gDWCineyCamEndTime_ptr - 0x3CF4A0)
3CF49A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CF4A2)
3CF49C:  ADD             R0, PC; gDWCineyCamEndTime_ptr
3CF49E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CF4A0:  LDR             R0, [R0]; gDWCineyCamEndTime
3CF4A2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3CF4A4:  LDR             R0, [R0]
3CF4A6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3CF4A8:  CMP             R1, R0
3CF4AA:  BHI             loc_3CF466
3CF4AC:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3CF4BC)
3CF4AE:  SUB.W           R1, R7, #-var_80
3CF4B2:  ADD.W           R2, SP, #0x960+var_2D8
3CF4B6:  ADD             R3, SP, #0x960+var_6D8
3CF4B8:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3CF4BA:  MOVS            R5, #0
3CF4BC:  LDR             R4, [R0]; CWorld::pIgnoreEntity ...
3CF4BE:  LDR.W           R0, [R7,#var_64]
3CF4C2:  STR             R0, [R4]; CWorld::pIgnoreEntity
3CF4C4:  MOVS            R0, #1
3CF4C6:  STRD.W          R0, R0, [SP,#0x960+var_960]
3CF4CA:  SUB.W           R0, R7, #-var_74
3CF4CE:  STRD.W          R5, R5, [SP,#0x960+var_958]
3CF4D2:  STRD.W          R5, R5, [SP,#0x960+var_950]
3CF4D6:  STRD.W          R5, R5, [SP,#0x960+var_948]
3CF4DA:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3CF4DE:  LDR             R1, =(dword_9530E4 - 0x3CF4E8)
3CF4E0:  CMP             R0, #1
3CF4E2:  STR             R5, [R4]; CWorld::pIgnoreEntity
3CF4E4:  ADD             R1, PC; dword_9530E4
3CF4E6:  LDR             R1, [R1]
3CF4E8:  BNE             loc_3CF4FE
3CF4EA:  LDR             R0, =(dword_9530E4 - 0x3CF4F4)
3CF4EC:  SUBS            R2, R1, #1
3CF4EE:  CMP             R1, #0
3CF4F0:  ADD             R0, PC; dword_9530E4
3CF4F2:  STR             R2, [R0]
3CF4F4:  LDR             R0, [SP,#0x960+var_938]
3CF4F6:  BNE             loc_3CF50E
3CF4F8:  LDR             R0, =(gbExitCam_ptr - 0x3CF4FE)
3CF4FA:  ADD             R0, PC; gbExitCam_ptr
3CF4FC:  B               loc_3CF46A
3CF4FE:  LDR             R0, =(dword_9530E4 - 0x3CF508)
3CF500:  ADDS            R2, R1, #1
3CF502:  CMP             R1, #0x1E
3CF504:  ADD             R0, PC; dword_9530E4
3CF506:  IT GT
3CF508:  MOVGT           R2, #0x1E
3CF50A:  STR             R2, [R0]
3CF50C:  LDR             R0, [SP,#0x960+var_938]; this
3CF50E:  MOVS            R1, #0
3CF510:  SUB.W           R2, R7, #-var_74; CVector *
3CF514:  STR             R1, [SP,#0x960+var_958]; float
3CF516:  MOVS            R1, #0x428C0000
3CF51C:  MOVS            R3, #0; float
3CF51E:  STR             R1, [SP,#0x960+var_960]; float
3CF520:  SUB.W           R1, R7, #-var_80; CVector *
3CF524:  BLX             j__ZN4CCam21Finalise_DW_CineyCamsEP7CVectorS1_ffff; CCam::Finalise_DW_CineyCams(CVector *,CVector *,float,float,float,float)
3CF528:  MOVS            R0, #1
3CF52A:  B               loc_3CF472
