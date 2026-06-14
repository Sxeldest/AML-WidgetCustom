; =========================================================
; Game Engine Function: _ZN17CEntryExitManager6UpdateEv
; Address            : 0x304EA0 - 0x305186
; =========================================================

304EA0:  PUSH            {R4-R7,LR}
304EA2:  ADD             R7, SP, #0xC
304EA4:  PUSH.W          {R8-R11}
304EA8:  SUB             SP, SP, #4
304EAA:  VPUSH           {D8-D11}
304EAE:  SUB             SP, SP, #0x48
304EB0:  MOV             R4, SP
304EB2:  BFC.W           R4, #0, #4
304EB6:  MOV             SP, R4
304EB8:  LDR             R0, =(_ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr - 0x304EBE)
304EBA:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr
304EBC:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneProcessing ...
304EBE:  LDRB            R0, [R0]; CCutsceneMgr::ms_cutsceneProcessing
304EC0:  CBNZ            R0, loc_304ED8
304EC2:  MOVS            R0, #0; this
304EC4:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
304EC8:  LDRH.W          R0, [R0,#0x110]; this
304ECC:  CBNZ            R0, loc_304ED8
304ECE:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
304ED2:  CMP             R0, #0
304ED4:  BEQ.W           loc_305166
304ED8:  MOV.W           R8, #1
304EDC:  LDR             R0, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x304EE2)
304EDE:  ADD             R0, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
304EE0:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState ...
304EE2:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState
304EE4:  CMP             R0, #0
304EE6:  BNE.W           loc_305072
304EEA:  LDR             R0, =(TheCamera_ptr - 0x304EF6)
304EEC:  VMOV.F32        S0, #30.0
304EF0:  MOVS            R1, #0
304EF2:  ADD             R0, PC; TheCamera_ptr
304EF4:  STR             R1, [SP,#0x88+var_44]
304EF6:  LDR             R0, [R0]; TheCamera
304EF8:  ADD.W           R1, R0, #0x910
304EFC:  LDR             R2, [R0,#(dword_951FBC - 0x951FA8)]
304EFE:  VLDR            S2, [R1]
304F02:  ADDW            R1, R0, #0x90C
304F06:  CMP             R2, #0
304F08:  VLDR            S4, [R1]
304F0C:  VMUL.F32        S2, S2, S0
304F10:  ADD.W           R1, R2, #0x30 ; '0'
304F14:  ADD             R2, SP, #0x88+var_44
304F16:  VMUL.F32        S0, S4, S0
304F1A:  IT EQ
304F1C:  ADDEQ           R1, R0, #4
304F1E:  VLDR            S6, [R1,#4]
304F22:  VLDR            S4, [R1]
304F26:  ADR             R1, dword_305190
304F28:  LDR             R0, =(_ZN17CEntryExitManager11mp_QuadTreeE_ptr - 0x304F38)
304F2A:  VLD1.64         {D16-D17}, [R1@128]
304F2E:  ADD             R1, SP, #0x88+var_58
304F30:  VADD.F32        S9, S2, S6
304F34:  ADD             R0, PC; _ZN17CEntryExitManager11mp_QuadTreeE_ptr
304F36:  VADD.F32        S8, S0, S4
304F3A:  LDR             R0, [R0]; CEntryExitManager::mp_QuadTree ...
304F3C:  LDR             R0, [R0]; CEntryExitManager::mp_QuadTree
304F3E:  VMOV.F32        S10, S8
304F42:  VMOV.F32        S11, S9
304F46:  VADD.F32        Q8, Q2, Q8
304F4A:  VST1.64         {D16-D17}, [R1@128]
304F4E:  BLX             j__ZN13CQuadTreeNode14GetAllMatchingERK5CRectR18CPtrListSingleLink; CQuadTreeNode::GetAllMatching(CRect const&,CPtrListSingleLink &)
304F52:  LDR             R5, [SP,#0x88+var_44]
304F54:  CMP             R5, #0
304F56:  BEQ.W           loc_30506C
304F5A:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x304F6C)
304F5C:  VMOV.F32        S16, #0.5
304F60:  VMOV.F32        S22, #1.0
304F64:  VLDR            S18, =0.0
304F68:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
304F6A:  VLDR            S20, =1600.0
304F6E:  LDR.W           R11, [R0]; CGame::currArea ...
304F72:  LDR             R0, =(TheCamera_ptr - 0x304F78)
304F74:  ADD             R0, PC; TheCamera_ptr
304F76:  LDR             R4, [R0]; TheCamera
304F78:  LDR             R0, =(TheCamera_ptr - 0x304F7E)
304F7A:  ADD             R0, PC; TheCamera_ptr
304F7C:  LDR.W           R9, [R0]; TheCamera
304F80:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x304F86)
304F82:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
304F84:  LDR.W           R10, [R0]; CGame::currArea ...
304F88:  LDR             R6, [R5]
304F8A:  LDRB.W          R0, [R6,#0x31]
304F8E:  LSLS            R0, R0, #0x19
304F90:  BPL             loc_305066
304F92:  LDR             R1, [R6,#0x38]
304F94:  LDRB.W          R0, [R6,#0x32]
304F98:  CBZ             R1, loc_304FA4
304F9A:  LDR.W           R1, [R10]; CGame::currArea
304F9E:  CMP             R1, R0
304FA0:  BEQ             loc_304FAC
304FA2:  B               loc_305066
304FA4:  LDR.W           R1, [R11]; CGame::currArea
304FA8:  CMP             R1, R0
304FAA:  BEQ             loc_305066
304FAC:  VLDR            S0, [R6,#8]
304FB0:  ADD             R1, SP, #0x88+var_68; CVector *
304FB2:  VLDR            S4, [R6,#0x10]
304FB6:  MOV.W           R2, #0x3F800000; float
304FBA:  VLDR            S2, [R6,#0xC]
304FBE:  VADD.F32        S0, S0, S4
304FC2:  VLDR            S6, [R6,#0x14]
304FC6:  VMUL.F32        S0, S0, S16
304FCA:  VSTR            S0, [SP,#0x88+var_68]
304FCE:  VADD.F32        S0, S2, S6
304FD2:  VMUL.F32        S0, S0, S16
304FD6:  VSTR            S0, [SP,#0x88+var_68+4]
304FDA:  LDR             R0, [R6,#0x18]
304FDC:  STR             R0, [SP,#0x88+var_60]
304FDE:  MOV             R0, R4; this
304FE0:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
304FE4:  EOR.W           R0, R0, #1
304FE8:  ORRS.W          R0, R0, R8
304FEC:  BNE             loc_305066
304FEE:  LDRB.W          R0, [R6,#0x34]; this
304FF2:  LDRB.W          R1, [R6,#0x35]; unsigned __int8
304FF6:  BLX             j__ZN6CClock16GetIsTimeInRangeEhh; CClock::GetIsTimeInRange(uchar,uchar)
304FFA:  CMP             R0, #1
304FFC:  BNE             loc_305066
304FFE:  LDR.W           R0, [R9,#(dword_951FBC - 0x951FA8)]
305002:  VLDR            D16, [SP,#0x88+var_68]
305006:  ADD.W           R1, R0, #0x30 ; '0'
30500A:  CMP             R0, #0
30500C:  IT EQ
30500E:  ADDEQ.W         R1, R9, #4
305012:  VLDR            D17, [R1]
305016:  VSUB.F32        D16, D16, D17
30501A:  VMUL.F32        D0, D16, D16
30501E:  VADD.F32        S0, S0, S1
305022:  VADD.F32        S0, S0, S18
305026:  VCMPE.F32       S0, S20
30502A:  VMRS            APSR_nzcv, FPSCR
30502E:  BGE             loc_305066
305030:  VLDR            S0, [SP,#0x88+var_60]
305034:  MOVS            R1, #0xFF
305036:  MOVS            R0, #0
305038:  STR             R1, [SP,#0x88+var_88]; unsigned __int8
30503A:  VADD.F32        S0, S0, S22
30503E:  MOV.W           R2, #0x40000000; CVector *
305042:  MOVS            R3, #0xFF; float
305044:  VSTR            S0, [SP,#0x88+var_60]
305048:  STRD.W          R0, R1, [SP,#0x88+var_84]; unsigned __int8
30504C:  MOV.W           R1, #0x400
305050:  STR             R1, [SP,#0x88+var_7C]; unsigned __int8
305052:  MOV.W           R1, #0x3F800000
305056:  STR             R1, [SP,#0x88+var_78]; float
305058:  MOVS            R1, #5
30505A:  STRD.W          R1, R0, [SP,#0x88+var_74]; float
30505E:  ADD             R1, SP, #0x88+var_68; unsigned __int16
305060:  MOV             R0, R6; this
305062:  BLX             j__ZN10C3dMarkers15PlaceMarkerConeEjR7CVectorfhhhhtfsh; C3dMarkers::PlaceMarkerCone(uint,CVector &,float,uchar,uchar,uchar,uchar,ushort,float,short,uchar)
305066:  LDR             R5, [R5,#4]
305068:  CMP             R5, #0
30506A:  BNE             loc_304F88
30506C:  ADD             R0, SP, #0x88+var_44; this
30506E:  BLX             j__ZN18CPtrListSingleLink5FlushEv; CPtrListSingleLink::Flush(void)
305072:  MOV.W           R0, #0xFFFFFFFF; int
305076:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30507A:  MOV             R9, R0
30507C:  LDR             R0, =(_ZN17CEntryExitManager9mp_ActiveE_ptr - 0x305082)
30507E:  ADD             R0, PC; _ZN17CEntryExitManager9mp_ActiveE_ptr
305080:  LDR             R0, [R0]; CEntryExitManager::mp_Active ...
305082:  LDR             R0, [R0]; this
305084:  CBZ             R0, loc_30509C
305086:  MOV             R1, R9; CPed *
305088:  BLX             j__ZN10CEntryExit18TransitionFinishedEP4CPed; CEntryExit::TransitionFinished(CPed *)
30508C:  CMP             R0, #1
30508E:  BNE             loc_305154
305090:  LDR             R0, =(_ZN17CEntryExitManager9mp_ActiveE_ptr - 0x305098)
305092:  MOVS            R1, #0
305094:  ADD             R0, PC; _ZN17CEntryExitManager9mp_ActiveE_ptr
305096:  LDR             R0, [R0]; CEntryExitManager::mp_Active ...
305098:  STR             R1, [R0]; CEntryExitManager::mp_Active
30509A:  B               loc_305154
30509C:  MOVS            R0, #0
30509E:  STR             R0, [SP,#0x88+var_44]
3050A0:  LDRB.W          R0, [R9,#0x485]
3050A4:  LSLS            R0, R0, #0x1F
3050A6:  BNE             loc_3050C0
3050A8:  LDR.W           R0, [R9,#0x14]
3050AC:  ADD.W           R1, R0, #0x30 ; '0'
3050B0:  CMP             R0, #0
3050B2:  IT EQ
3050B4:  ADDEQ.W         R1, R9, #4
3050B8:  LDR             R0, [R1,#8]
3050BA:  VLDR            D16, [R1]
3050BE:  B               loc_3050D6
3050C0:  LDR.W           R0, [R9,#0x590]
3050C4:  LDR             R1, [R0,#0x14]
3050C6:  ADD.W           R2, R1, #0x30 ; '0'
3050CA:  CMP             R1, #0
3050CC:  IT EQ
3050CE:  ADDEQ           R2, R0, #4
3050D0:  VLDR            D16, [R2]
3050D4:  LDR             R0, [R2,#8]
3050D6:  STR             R0, [SP,#0x88+var_50]
3050D8:  LDR             R0, =(_ZN17CEntryExitManager11mp_QuadTreeE_ptr - 0x3050E2)
3050DA:  VSTR            D16, [SP,#0x88+var_58]
3050DE:  ADD             R0, PC; _ZN17CEntryExitManager11mp_QuadTreeE_ptr
3050E0:  LDR             R0, [R0]; CEntryExitManager::mp_QuadTree ...
3050E2:  LDR             R0, [R0]; CEntryExitManager::mp_QuadTree
3050E4:  LDRD.W          R1, R2, [SP,#0x88+var_58]
3050E8:  STRD.W          R1, R2, [SP,#0x88+var_68]
3050EC:  ADD             R1, SP, #0x88+var_68
3050EE:  ADD             R2, SP, #0x88+var_44
3050F0:  BLX             j__ZN13CQuadTreeNode14GetAllMatchingERK9CVector2DR18CPtrListSingleLink; CQuadTreeNode::GetAllMatching(CVector2D const&,CPtrListSingleLink &)
3050F4:  LDR             R4, [SP,#0x88+var_44]
3050F6:  CBZ             R4, loc_30513C
3050F8:  ADD.W           R10, SP, #0x88+var_58
3050FC:  MOVS            R5, #0
3050FE:  LDR             R6, [R4]
305100:  MOV             R1, R10; CVector *
305102:  MOV             R0, R6; this
305104:  BLX             j__ZN10CEntryExit8IsInAreaERK7CVector; CEntryExit::IsInArea(CVector const&)
305108:  CMP             R0, #1
30510A:  BNE             loc_305132
30510C:  LDRH            R0, [R6,#0x30]
30510E:  MOVS            R1, #0
305110:  ANDS.W          R0, R0, #0x4000
305114:  IT EQ
305116:  MOVEQ           R1, #1
305118:  ORRS.W          R1, R1, R8
30511C:  BEQ             loc_305124
30511E:  ORR.W           R5, R5, R0,LSR#14
305122:  B               loc_305132
305124:  MOV             R0, R6; this
305126:  MOV             R1, R9; CPed *
305128:  BLX             j__ZN10CEntryExit17TransitionStartedEP4CPed; CEntryExit::TransitionStarted(CPed *)
30512C:  CMP             R0, #1
30512E:  BEQ             loc_30517C
305130:  MOVS            R5, #1
305132:  LDR             R4, [R4,#4]
305134:  CMP             R4, #0
305136:  BNE             loc_3050FE
305138:  LSLS            R0, R5, #0x1F
30513A:  BNE             loc_30514E
30513C:  LDR             R0, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x305144)
30513E:  MOVS            R2, #0
305140:  ADD             R0, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
305142:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState ...
305144:  LDR             R1, [R0]; CEntryExitManager::ms_exitEnterState
305146:  CMP             R1, #3
305148:  IT EQ
30514A:  MOVEQ           R2, #4
30514C:  STR             R2, [R0]; CEntryExitManager::ms_exitEnterState
30514E:  ADD             R0, SP, #0x88+var_44; this
305150:  BLX             j__ZN18CPtrListSingleLink5FlushEv; CPtrListSingleLink::Flush(void)
305154:  SUB.W           R4, R7, #-var_40
305158:  MOV             SP, R4
30515A:  VPOP            {D8-D11}
30515E:  ADD             SP, SP, #4
305160:  POP.W           {R8-R11}
305164:  POP             {R4-R7,PC}
305166:  LDR             R0, =(_ZN17CEntryExitManager12ms_bDisabledE_ptr - 0x30516C)
305168:  ADD             R0, PC; _ZN17CEntryExitManager12ms_bDisabledE_ptr
30516A:  LDR             R0, [R0]; CEntryExitManager::ms_bDisabled ...
30516C:  LDRB.W          R8, [R0]; CEntryExitManager::ms_bDisabled
305170:  CMP.W           R8, #0
305174:  IT NE
305176:  MOVNE.W         R8, #1
30517A:  B               loc_304EDC
30517C:  LDR             R0, =(_ZN17CEntryExitManager9mp_ActiveE_ptr - 0x305182)
30517E:  ADD             R0, PC; _ZN17CEntryExitManager9mp_ActiveE_ptr
305180:  LDR             R0, [R0]; CEntryExitManager::mp_Active ...
305182:  STR             R6, [R0]; CEntryExitManager::mp_Active
305184:  B               loc_30514E
