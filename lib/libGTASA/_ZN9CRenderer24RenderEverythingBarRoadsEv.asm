; =========================================================
; Game Engine Function: _ZN9CRenderer24RenderEverythingBarRoadsEv
; Address            : 0x40FD14 - 0x41023A
; =========================================================

40FD14:  PUSH            {R4-R7,LR}
40FD16:  ADD             R7, SP, #0xC
40FD18:  PUSH.W          {R8-R11}
40FD1C:  SUB             SP, SP, #4
40FD1E:  VPUSH           {D8}
40FD22:  SUB             SP, SP, #8
40FD24:  MOVS            R0, #0xE
40FD26:  MOVS            R1, #1
40FD28:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
40FD2C:  MOVS            R0, #0xC
40FD2E:  MOVS            R1, #1
40FD30:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
40FD34:  MOVS            R0, #0x14
40FD36:  MOVS            R1, #2
40FD38:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
40FD3C:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x40FD44)
40FD40:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
40FD42:  LDR             R0, [R0]; CGame::currArea ...
40FD44:  LDR             R0, [R0]; CGame::currArea
40FD46:  CBNZ            R0, loc_40FD50
40FD48:  MOVS            R0, #0x1E
40FD4A:  MOVS            R1, #0x8C
40FD4C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
40FD50:  LDR.W           R0, =(TheCamera_ptr - 0x40FD58)
40FD54:  ADD             R0, PC; TheCamera_ptr
40FD56:  LDR             R0, [R0]; TheCamera
40FD58:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
40FD5C:  ADD.W           R1, R1, R1,LSL#5
40FD60:  ADD.W           R0, R0, R1,LSL#4
40FD64:  LDRH.W          R0, [R0,#0x17E]
40FD68:  CMP             R0, #0x11
40FD6A:  IT NE
40FD6C:  CMPNE           R0, #0xF
40FD6E:  BNE             loc_40FD76
40FD70:  MOV.W           R8, #1
40FD74:  B               loc_40FD7A
40FD76:  MOV.W           R8, #0
40FD7A:  LDR.W           R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x40FD82)
40FD7E:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
40FD80:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleEntities ...
40FD82:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleEntities
40FD84:  CMP             R0, #1
40FD86:  BLT.W           loc_41010E
40FD8A:  LDR.W           R0, =(_ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr - 0x40FD94)
40FD8E:  MOVS            R6, #0
40FD90:  ADD             R0, PC; _ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr
40FD92:  LDR.W           R10, [R0]; CRenderer::ms_aVisibleEntityPtrs ...
40FD96:  LDR.W           R0, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x40FD9E)
40FD9A:  ADD             R0, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
40FD9C:  LDR.W           R9, [R0]; CRenderer::ms_vecCameraPosition ...
40FDA0:  LDR.W           R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x40FDA8)
40FDA4:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
40FDA6:  LDR             R5, [R0]; CRenderer::ms_nNoOfVisibleEntities ...
40FDA8:  LDR.W           R4, [R10,R6,LSL#2]
40FDAC:  LDRB.W          R0, [R4,#0x3A]
40FDB0:  AND.W           R0, R0, #7
40FDB4:  CMP             R0, #3
40FDB6:  BNE             loc_40FE26
40FDB8:  MOV             R0, R4; this
40FDBA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
40FDBE:  CMP             R0, #1
40FDC0:  BNE             loc_40FE26
40FDC2:  LDR             R0, [R4,#0x18]
40FDC4:  BLX             j__ZN18CVisibilityPlugins13GetClumpAlphaEP7RpClump; CVisibilityPlugins::GetClumpAlpha(RpClump *)
40FDC8:  CMP             R0, #0xFF
40FDCA:  BEQ             loc_40FE20
40FDCC:  LDR             R0, [R4,#0x14]
40FDCE:  ADD.W           R1, R0, #0x30 ; '0'
40FDD2:  CMP             R0, #0
40FDD4:  IT EQ
40FDD6:  ADDEQ           R1, R4, #4
40FDD8:  VLDR            S6, [R9]
40FDDC:  VLDR            S0, [R1]
40FDE0:  MOV             R0, R4; this
40FDE2:  VLDR            S2, [R1,#4]
40FDE6:  VLDR            S8, [R9,#4]
40FDEA:  VSUB.F32        S0, S6, S0
40FDEE:  VLDR            S4, [R1,#8]
40FDF2:  VSUB.F32        S2, S8, S2
40FDF6:  VLDR            S10, [R9,#8]
40FDFA:  VSUB.F32        S4, S10, S4
40FDFE:  VMUL.F32        S0, S0, S0
40FE02:  VMUL.F32        S2, S2, S2
40FE06:  VMUL.F32        S4, S4, S4
40FE0A:  VADD.F32        S0, S0, S2
40FE0E:  VADD.F32        S0, S0, S4
40FE12:  VSQRT.F32       S0, S0
40FE16:  VMOV            R1, S0; CEntity *
40FE1A:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
40FE1E:  CBNZ            R0, loc_40FE26
40FE20:  MOV             R0, R4; this
40FE22:  BLX             j__ZN9CRenderer16RenderOneNonRoadEP7CEntity; CRenderer::RenderOneNonRoad(CEntity *)
40FE26:  LDR             R1, [R5]; CEntity *
40FE28:  ADDS            R6, #1
40FE2A:  CMP             R6, R1
40FE2C:  BLT             loc_40FDA8
40FE2E:  CMP             R1, #1
40FE30:  BLT.W           loc_41010E
40FE34:  LDR.W           R0, =(_ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr - 0x40FE3E)
40FE38:  MOVS            R4, #0
40FE3A:  ADD             R0, PC; _ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr
40FE3C:  LDR             R5, [R0]; CRenderer::ms_aVisibleEntityPtrs ...
40FE3E:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x40FE46)
40FE42:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
40FE44:  LDR             R6, [R0]; CModelInfo::ms_modelInfoPtrs ...
40FE46:  LDR.W           R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x40FE4E)
40FE4A:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
40FE4C:  LDR.W           R9, [R0]; CRenderer::ms_nNoOfVisibleEntities ...
40FE50:  LDR.W           R0, [R5,R4,LSL#2]; this
40FE54:  LDRB.W          R2, [R0,#0x3A]
40FE58:  AND.W           R2, R2, #7
40FE5C:  SUBS            R2, #2
40FE5E:  UXTB            R2, R2
40FE60:  CMP             R2, #3
40FE62:  BCC             loc_40FE7C
40FE64:  LDRSH.W         R2, [R0,#0x26]
40FE68:  LDR.W           R2, [R6,R2,LSL#2]
40FE6C:  LDRB.W          R2, [R2,#0x29]
40FE70:  LSLS            R2, R2, #0x1F
40FE72:  BNE             loc_40FE7C
40FE74:  BLX             j__ZN9CRenderer16RenderOneNonRoadEP7CEntity; CRenderer::RenderOneNonRoad(CEntity *)
40FE78:  LDR.W           R1, [R9]; CRenderer::ms_nNoOfVisibleEntities
40FE7C:  ADDS            R4, #1
40FE7E:  CMP             R4, R1
40FE80:  BLT             loc_40FE50
40FE82:  CMP             R1, #1
40FE84:  BLT.W           loc_41010E
40FE88:  LDR.W           R0, =(_ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr - 0x40FE92)
40FE8C:  MOVS            R6, #0
40FE8E:  ADD             R0, PC; _ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr
40FE90:  LDR.W           R10, [R0]; CRenderer::ms_aVisibleEntityPtrs ...
40FE94:  LDR.W           R0, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x40FE9C)
40FE98:  ADD             R0, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
40FE9A:  LDR.W           R9, [R0]; CRenderer::ms_vecCameraPosition ...
40FE9E:  LDR.W           R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x40FEA6)
40FEA2:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
40FEA4:  LDR             R5, [R0]; CRenderer::ms_nNoOfVisibleEntities ...
40FEA6:  LDR.W           R4, [R10,R6,LSL#2]
40FEAA:  LDRB.W          R0, [R4,#0x3A]
40FEAE:  AND.W           R0, R0, #7
40FEB2:  CMP             R0, #3
40FEB4:  BNE             loc_40FF22
40FEB6:  MOV             R0, R4; this
40FEB8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
40FEBC:  CBNZ            R0, loc_40FF22
40FEBE:  LDR             R0, [R4,#0x18]
40FEC0:  BLX             j__ZN18CVisibilityPlugins13GetClumpAlphaEP7RpClump; CVisibilityPlugins::GetClumpAlpha(RpClump *)
40FEC4:  CMP             R0, #0xFF
40FEC6:  BEQ             loc_40FF1C
40FEC8:  LDR             R0, [R4,#0x14]
40FECA:  ADD.W           R1, R0, #0x30 ; '0'
40FECE:  CMP             R0, #0
40FED0:  IT EQ
40FED2:  ADDEQ           R1, R4, #4
40FED4:  VLDR            S6, [R9]
40FED8:  VLDR            S0, [R1]
40FEDC:  MOV             R0, R4; this
40FEDE:  VLDR            S2, [R1,#4]
40FEE2:  VLDR            S8, [R9,#4]
40FEE6:  VSUB.F32        S0, S6, S0
40FEEA:  VLDR            S4, [R1,#8]
40FEEE:  VSUB.F32        S2, S8, S2
40FEF2:  VLDR            S10, [R9,#8]
40FEF6:  VSUB.F32        S4, S10, S4
40FEFA:  VMUL.F32        S0, S0, S0
40FEFE:  VMUL.F32        S2, S2, S2
40FF02:  VMUL.F32        S4, S4, S4
40FF06:  VADD.F32        S0, S0, S2
40FF0A:  VADD.F32        S0, S0, S4
40FF0E:  VSQRT.F32       S0, S0
40FF12:  VMOV            R1, S0; CEntity *
40FF16:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
40FF1A:  CBNZ            R0, loc_40FF22
40FF1C:  MOV             R0, R4; this
40FF1E:  BLX             j__ZN9CRenderer16RenderOneNonRoadEP7CEntity; CRenderer::RenderOneNonRoad(CEntity *)
40FF22:  LDR             R0, [R5]; CRenderer::ms_nNoOfVisibleEntities
40FF24:  ADDS            R6, #1
40FF26:  CMP             R6, R0
40FF28:  BLT             loc_40FEA6
40FF2A:  CMP             R0, #1
40FF2C:  BLT.W           loc_41010E
40FF30:  LDR             R0, =(_ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr - 0x40FF38)
40FF32:  MOVS            R5, #0
40FF34:  ADD             R0, PC; _ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr
40FF36:  LDR.W           R10, [R0]; CRenderer::ms_aVisibleEntityPtrs ...
40FF3A:  LDR             R0, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x40FF40)
40FF3C:  ADD             R0, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
40FF3E:  LDR.W           R9, [R0]; CRenderer::ms_vecCameraPosition ...
40FF42:  LDR             R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x40FF48)
40FF44:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
40FF46:  LDR             R6, [R0]; CRenderer::ms_nNoOfVisibleEntities ...
40FF48:  LDR.W           R4, [R10,R5,LSL#2]
40FF4C:  LDRB.W          R0, [R4,#0x3A]
40FF50:  AND.W           R0, R0, #7
40FF54:  CMP             R0, #4
40FF56:  BNE             loc_40FFB8
40FF58:  CMP.W           R8, #1
40FF5C:  BNE             loc_40FFB2
40FF5E:  LDR             R0, [R4,#0x14]
40FF60:  ADD.W           R1, R0, #0x30 ; '0'
40FF64:  CMP             R0, #0
40FF66:  IT EQ
40FF68:  ADDEQ           R1, R4, #4
40FF6A:  VLDR            S6, [R9]
40FF6E:  VLDR            S0, [R1]
40FF72:  MOV             R0, R4; this
40FF74:  VLDR            S2, [R1,#4]
40FF78:  VLDR            S8, [R9,#4]
40FF7C:  VSUB.F32        S0, S6, S0
40FF80:  VLDR            S4, [R1,#8]
40FF84:  VSUB.F32        S2, S8, S2
40FF88:  VLDR            S10, [R9,#8]
40FF8C:  VSUB.F32        S4, S10, S4
40FF90:  VMUL.F32        S0, S0, S0
40FF94:  VMUL.F32        S2, S2, S2
40FF98:  VMUL.F32        S4, S4, S4
40FF9C:  VADD.F32        S0, S0, S2
40FFA0:  VADD.F32        S0, S0, S4
40FFA4:  VSQRT.F32       S0, S0
40FFA8:  VMOV            R1, S0; CEntity *
40FFAC:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
40FFB0:  CBNZ            R0, loc_40FFB8
40FFB2:  MOV             R0, R4; this
40FFB4:  BLX             j__ZN9CRenderer16RenderOneNonRoadEP7CEntity; CRenderer::RenderOneNonRoad(CEntity *)
40FFB8:  LDR             R0, [R6]; CRenderer::ms_nNoOfVisibleEntities
40FFBA:  ADDS            R5, #1
40FFBC:  CMP             R5, R0
40FFBE:  BLT             loc_40FF48
40FFC0:  CMP             R0, #1
40FFC2:  BLT.W           loc_41010E
40FFC6:  LDR             R0, =(_ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr - 0x40FFCE)
40FFC8:  MOVS            R5, #0
40FFCA:  ADD             R0, PC; _ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr
40FFCC:  LDR             R4, [R0]; CRenderer::ms_aVisibleEntityPtrs ...
40FFCE:  LDR             R0, =(TheCamera_ptr - 0x40FFD4)
40FFD0:  ADD             R0, PC; TheCamera_ptr
40FFD2:  LDR.W           R10, [R0]; TheCamera
40FFD6:  LDR             R0, =(TheCamera_ptr - 0x40FFDC)
40FFD8:  ADD             R0, PC; TheCamera_ptr
40FFDA:  LDR             R0, [R0]; TheCamera
40FFDC:  STR             R0, [SP,#0x30+var_2C]
40FFDE:  LDR             R0, =(TheCamera_ptr - 0x40FFE4)
40FFE0:  ADD             R0, PC; TheCamera_ptr
40FFE2:  LDR             R0, [R0]; TheCamera
40FFE4:  STR             R0, [SP,#0x30+var_30]
40FFE6:  LDR             R0, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x40FFEC)
40FFE8:  ADD             R0, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
40FFEA:  LDR.W           R11, [R0]; CRenderer::ms_vecCameraPosition ...
40FFEE:  LDR             R0, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x40FFF4)
40FFF0:  ADD             R0, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
40FFF2:  LDR.W           R8, [R0]; CRenderer::ms_vecCameraPosition ...
40FFF6:  LDR             R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x40FFFC)
40FFF8:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
40FFFA:  LDR.W           R9, [R0]; CRenderer::ms_nNoOfVisibleEntities ...
40FFFE:  LDR.W           R6, [R4,R5,LSL#2]
410002:  LDRB.W          R0, [R6,#0x3A]
410006:  AND.W           R0, R0, #7
41000A:  CMP             R0, #2
41000C:  BNE             loc_410102
41000E:  LDR.W           R0, [R6,#0x5A0]
410012:  CMP             R0, #5
410014:  BNE             loc_41009E
410016:  LDRB.W          R0, [R10,#(byte_951FFF - 0x951FA8)]
41001A:  ADD.W           R0, R0, R0,LSL#5
41001E:  ADD.W           R0, R10, R0,LSL#4
410022:  LDRH.W          R0, [R0,#0x17E]
410026:  CMP             R0, #0xE
410028:  BEQ             loc_41004A
41002A:  CMP             R0, #0x10
41002C:  BNE             loc_410040
41002E:  LDR             R0, [SP,#0x30+var_2C]; this
410030:  BLX             j__ZN7CCamera16GetLookDirectionEv; CCamera::GetLookDirection(void)
410034:  CMP             R0, #3
410036:  BEQ             loc_410040
410038:  LDR             R0, [SP,#0x30+var_30]; this
41003A:  BLX             j__ZN7CCamera16GetLookDirectionEv; CCamera::GetLookDirection(void)
41003E:  CBNZ            R0, loc_41004A
410040:  LDR             R0, [R6,#0x18]
410042:  BLX             j__ZN18CVisibilityPlugins13GetClumpAlphaEP7RpClump; CVisibilityPlugins::GetClumpAlpha(RpClump *)
410046:  CMP             R0, #0xFF
410048:  BEQ             loc_4100A6
41004A:  LDR             R0, [R6,#0x14]
41004C:  ADD.W           R1, R0, #0x30 ; '0'
410050:  CMP             R0, #0
410052:  IT EQ
410054:  ADDEQ           R1, R6, #4
410056:  VLDR            S6, [R11]
41005A:  VLDR            S0, [R1]
41005E:  MOV             R0, R6; this
410060:  VLDR            S2, [R1,#4]
410064:  VLDR            S8, [R11,#4]
410068:  VSUB.F32        S0, S6, S0
41006C:  VLDR            S4, [R1,#8]
410070:  VSUB.F32        S2, S8, S2
410074:  VLDR            S10, [R11,#8]
410078:  VSUB.F32        S4, S10, S4
41007C:  VMUL.F32        S0, S0, S0
410080:  VMUL.F32        S2, S2, S2
410084:  VMUL.F32        S4, S4, S4
410088:  VADD.F32        S0, S0, S2
41008C:  VADD.F32        S0, S0, S4
410090:  VSQRT.F32       S0, S0
410094:  VMOV            R1, S0; CEntity *
410098:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
41009C:  B               loc_4100F8
41009E:  LDRB.W          R0, [R6,#0x47]
4100A2:  LSLS            R0, R0, #0x1C
4100A4:  BPL             loc_41004A
4100A6:  LDR             R0, [R6,#0x14]
4100A8:  ADD.W           R1, R0, #0x30 ; '0'
4100AC:  CMP             R0, #0
4100AE:  IT EQ
4100B0:  ADDEQ           R1, R6, #4
4100B2:  VLDR            S6, [R8]
4100B6:  VLDR            S0, [R1]
4100BA:  MOV             R0, R6; this
4100BC:  VLDR            S2, [R1,#4]
4100C0:  VLDR            S8, [R8,#4]
4100C4:  VSUB.F32        S0, S6, S0
4100C8:  VLDR            S4, [R1,#8]
4100CC:  VSUB.F32        S2, S8, S2
4100D0:  VLDR            S10, [R8,#8]
4100D4:  VSUB.F32        S4, S10, S4
4100D8:  VMUL.F32        S0, S0, S0
4100DC:  VMUL.F32        S2, S2, S2
4100E0:  VMUL.F32        S4, S4, S4
4100E4:  VADD.F32        S0, S0, S2
4100E8:  VADD.F32        S0, S0, S4
4100EC:  VSQRT.F32       S0, S0
4100F0:  VMOV            R1, S0; CEntity *
4100F4:  BLX             j__ZN18CVisibilityPlugins30InsertEntityIntoUnderwaterListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoUnderwaterList(CEntity *,float)
4100F8:  CMP             R0, #0
4100FA:  ITT EQ
4100FC:  MOVEQ           R0, R6; this
4100FE:  BLXEQ           j__ZN9CRenderer16RenderOneNonRoadEP7CEntity; CRenderer::RenderOneNonRoad(CEntity *)
410102:  LDR.W           R0, [R9]; CRenderer::ms_nNoOfVisibleEntities
410106:  ADDS            R5, #1
410108:  CMP             R5, R0
41010A:  BLT.W           loc_40FFFE
41010E:  LDR             R0, =(RQCaps_ptr - 0x410116)
410110:  LDR             R1, =(Scene_ptr - 0x410118)
410112:  ADD             R0, PC; RQCaps_ptr
410114:  ADD             R1, PC; Scene_ptr
410116:  LDR             R0, [R0]; RQCaps
410118:  LDR             R6, [R1]; Scene
41011A:  LDRB            R4, [R0]
41011C:  LDR             R0, [R6,#(dword_9FC93C - 0x9FC938)]
41011E:  BLX             j__Z17RwCameraEndUpdateP8RwCamera; RwCameraEndUpdate(RwCamera *)
410122:  LDR             R0, [R6,#(dword_9FC93C - 0x9FC938)]
410124:  ADR             R1, dword_41029C
410126:  CMP             R4, #0
410128:  LDR.W           R9, [R0,#4]
41012C:  IT NE
41012E:  ADDNE           R1, #4
410130:  VLDR            S16, [R1]
410134:  ADD.W           R8, R9, #0x10
410138:  VLDR            S0, [R9,#0x30]
41013C:  VLDR            S2, [R9,#0x34]
410140:  MOV             R0, R8
410142:  VLDR            S4, [R9,#0x38]
410146:  VMUL.F32        S0, S16, S0
41014A:  VMUL.F32        S2, S16, S2
41014E:  VLDR            S6, [R9,#0x40]
410152:  VMUL.F32        S4, S16, S4
410156:  VLDR            S8, [R9,#0x44]
41015A:  VLDR            S10, [R9,#0x48]
41015E:  VSUB.F32        S0, S6, S0
410162:  VSUB.F32        S2, S8, S2
410166:  VSUB.F32        S4, S10, S4
41016A:  VSTR            S0, [R9,#0x40]
41016E:  VSTR            S2, [R9,#0x44]
410172:  VSTR            S4, [R9,#0x48]
410176:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
41017A:  MOV             R0, R9
41017C:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
410180:  MOV             R0, R9
410182:  BLX             j__Z21RwFrameOrthoNormalizeP7RwFrame; RwFrameOrthoNormalize(RwFrame *)
410186:  LDR             R0, [R6,#(dword_9FC93C - 0x9FC938)]
410188:  BLX             j__Z19RwCameraBeginUpdateP8RwCamera; RwCameraBeginUpdate(RwCamera *)
41018C:  LDR             R0, =(_ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr - 0x410194)
41018E:  LDR             R2, =(_ZN9CRenderer18ms_aVisibleLodPtrsE_ptr - 0x410198)
410190:  ADD             R0, PC; _ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr
410192:  LDR             R3, =(_Z8sortLODsPKvS0__ptr - 0x41019C)
410194:  ADD             R2, PC; _ZN9CRenderer18ms_aVisibleLodPtrsE_ptr
410196:  LDR             R4, [R0]; CRenderer::ms_nNoOfVisibleLods ...
410198:  ADD             R3, PC; _Z8sortLODsPKvS0__ptr
41019A:  LDR             R0, [R2]; void *
41019C:  MOVS            R2, #4; size_t
41019E:  LDR             R3, [R3]; sortLODs(void const*,void const*) ; int (*)(const void *, const void *)
4101A0:  LDR             R1, [R4]; size_t
4101A2:  BLX             qsort
4101A6:  LDR             R0, [R4]; CRenderer::ms_nNoOfVisibleLods
4101A8:  CMP             R0, #1
4101AA:  BLT             loc_4101CA
4101AC:  LDR             R0, =(_ZN9CRenderer18ms_aVisibleLodPtrsE_ptr - 0x4101B4)
4101AE:  MOVS            R6, #0
4101B0:  ADD             R0, PC; _ZN9CRenderer18ms_aVisibleLodPtrsE_ptr
4101B2:  LDR             R5, [R0]; CRenderer::ms_aVisibleLodPtrs ...
4101B4:  LDR             R0, =(_ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr - 0x4101BA)
4101B6:  ADD             R0, PC; _ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr
4101B8:  LDR             R4, [R0]; CRenderer::ms_nNoOfVisibleLods ...
4101BA:  LDR.W           R0, [R5,R6,LSL#2]; this
4101BE:  BLX             j__ZN9CRenderer16RenderOneNonRoadEP7CEntity; CRenderer::RenderOneNonRoad(CEntity *)
4101C2:  LDR             R0, [R4]; CRenderer::ms_nNoOfVisibleLods
4101C4:  ADDS            R6, #1
4101C6:  CMP             R6, R0
4101C8:  BLT             loc_4101BA
4101CA:  LDR             R0, =(Scene_ptr - 0x4101D0)
4101CC:  ADD             R0, PC; Scene_ptr
4101CE:  LDR             R6, [R0]; Scene
4101D0:  LDR             R0, [R6,#(dword_9FC93C - 0x9FC938)]
4101D2:  BLX             j__Z17RwCameraEndUpdateP8RwCamera; RwCameraEndUpdate(RwCamera *)
4101D6:  VLDR            S0, [R9,#0x30]
4101DA:  MOV             R0, R8
4101DC:  VLDR            S2, [R9,#0x34]
4101E0:  VLDR            S4, [R9,#0x38]
4101E4:  VMUL.F32        S0, S16, S0
4101E8:  VMUL.F32        S2, S16, S2
4101EC:  VLDR            S6, [R9,#0x40]
4101F0:  VMUL.F32        S4, S16, S4
4101F4:  VLDR            S8, [R9,#0x44]
4101F8:  VLDR            S10, [R9,#0x48]
4101FC:  VADD.F32        S0, S6, S0
410200:  VADD.F32        S2, S8, S2
410204:  VADD.F32        S4, S10, S4
410208:  VSTR            S0, [R9,#0x40]
41020C:  VSTR            S2, [R9,#0x44]
410210:  VSTR            S4, [R9,#0x48]
410214:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
410218:  MOV             R0, R9
41021A:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
41021E:  MOV             R0, R9
410220:  BLX             j__Z21RwFrameOrthoNormalizeP7RwFrame; RwFrameOrthoNormalize(RwFrame *)
410224:  LDR             R0, [R6,#(dword_9FC93C - 0x9FC938)]
410226:  ADD             SP, SP, #8
410228:  VPOP            {D8}
41022C:  ADD             SP, SP, #4
41022E:  POP.W           {R8-R11}
410232:  POP.W           {R4-R7,LR}
410236:  B.W             sub_1992D0
