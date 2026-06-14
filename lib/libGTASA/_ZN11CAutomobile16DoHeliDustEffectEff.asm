; =========================================================
; Game Engine Function: _ZN11CAutomobile16DoHeliDustEffectEff
; Address            : 0x55FF3C - 0x560228
; =========================================================

55FF3C:  PUSH            {R4-R7,LR}
55FF3E:  ADD             R7, SP, #0xC
55FF40:  PUSH.W          {R8-R11}
55FF44:  SUB             SP, SP, #4
55FF46:  VPUSH           {D8-D9}
55FF4A:  SUB             SP, SP, #0x70
55FF4C:  MOV             R4, R0
55FF4E:  MOV             R10, R2
55FF50:  LDR.W           R0, [R4,#0x5A4]
55FF54:  MOV             R9, R1
55FF56:  CMP             R0, #4
55FF58:  BEQ             loc_55FF78
55FF5A:  CMP             R0, #3
55FF5C:  BNE.W           loc_560128
55FF60:  ADD.W           R0, R4, #0x860
55FF64:  VLDR            S0, =0.1125
55FF68:  VLDR            S2, [R0]
55FF6C:  VCMPE.F32       S2, S0
55FF70:  VMRS            APSR_nzcv, FPSCR
55FF74:  BLE.W           loc_560128
55FF78:  MOVS            R1, #0
55FF7A:  ADD.W           R11, R4, #4
55FF7E:  MOVT            R1, #0xC47A; int
55FF82:  MOVS            R6, #0
55FF84:  STR             R1, [SP,#0xA0+var_34]
55FF86:  MOVS            R0, #1
55FF88:  LDR             R2, [R4,#0x14]
55FF8A:  ADD             R3, SP, #0xA0+var_64; int
55FF8C:  STRD.W          R0, R6, [SP,#0xA0+var_A0]; int
55FF90:  MOV             R0, R11
55FF92:  CMP             R2, #0
55FF94:  STRD.W          R6, R6, [SP,#0xA0+var_98]; CVector *
55FF98:  STRD.W          R6, R6, [SP,#0xA0+var_90]; int
55FF9C:  STR             R6, [SP,#0xA0+var_88]; int
55FF9E:  IT NE
55FFA0:  ADDNE.W         R0, R2, #0x30 ; '0'; CVector *
55FFA4:  ADD             R2, SP, #0xA0+var_60; int
55FFA6:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
55FFAA:  LDR             R0, =(g_surfaceInfos_ptr - 0x55FFB4)
55FFAC:  LDRB.W          R1, [SP,#0xA0+var_3D]; unsigned int
55FFB0:  ADD             R0, PC; g_surfaceInfos_ptr
55FFB2:  VLDR            S16, [SP,#0xA0+var_58]
55FFB6:  LDR             R0, [R0]; g_surfaceInfos ; this
55FFB8:  BLX             j__ZN14SurfaceInfos_c6IsSandEj; SurfaceInfos_c::IsSand(uint)
55FFBC:  MOV             R8, R0
55FFBE:  LDR             R0, [R4,#0x14]
55FFC0:  MOV             R2, R11
55FFC2:  ADD             R3, SP, #0xA0+var_34; float
55FFC4:  CMP             R0, #0
55FFC6:  IT NE
55FFC8:  ADDNE.W         R2, R0, #0x30 ; '0'
55FFCC:  LDM             R2, {R0-R2}; float
55FFCE:  STRD.W          R6, R6, [SP,#0xA0+var_A0]; float *
55FFD2:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
55FFD6:  CMP             R0, #1
55FFD8:  BNE             loc_55FFF0
55FFDA:  VLDR            S0, [SP,#0xA0+var_34]
55FFDE:  VCMPE.F32       S0, S16
55FFE2:  VMRS            APSR_nzcv, FPSCR
55FFE6:  ITTE GT
55FFE8:  MOVGT           R6, #1
55FFEA:  VMOVGT.F32      S16, S0
55FFEE:  MOVLE           R6, #0
55FFF0:  LDRSH.W         R0, [R4,#0x26]
55FFF4:  MOVW            R1, #0x1F5
55FFF8:  CMP             R0, R1
55FFFA:  ITT NE
55FFFC:  MOVWNE          R1, #0x1D1
560000:  CMPNE           R0, R1
560002:  BNE             loc_56000A
560004:  VMOV.F32        S0, #3.0
560008:  B               loc_56000E
56000A:  VMOV.F32        S0, #30.0
56000E:  LDR             R1, =(TheCamera_ptr - 0x560018)
560010:  MOV             R5, R11
560012:  LDR             R2, [R4,#0x14]
560014:  ADD             R1, PC; TheCamera_ptr
560016:  CMP             R2, #0
560018:  LDR             R1, [R1]; TheCamera
56001A:  LDR             R3, [R1,#(dword_951FBC - 0x951FA8)]
56001C:  IT NE
56001E:  ADDNE.W         R5, R2, #0x30 ; '0'
560022:  VLD1.32         {D16}, [R5]!
560026:  ADD.W           R2, R3, #0x30 ; '0'
56002A:  CMP             R3, #0
56002C:  IT EQ
56002E:  ADDEQ           R2, R1, #4
560030:  VLDR            S2, [R5]
560034:  VLD1.32         {D17}, [R2]!
560038:  VSUB.F32        D16, D16, D17
56003C:  VLDR            S4, [R2]
560040:  VSUB.F32        S4, S2, S4
560044:  VMUL.F32        D3, D16, D16
560048:  VADD.F32        S6, S6, S7
56004C:  VMUL.F32        S4, S4, S4
560050:  VADD.F32        S4, S6, S4
560054:  VLDR            S6, =2500.0
560058:  VCMPE.F32       S4, S6
56005C:  VMRS            APSR_nzcv, FPSCR
560060:  BGE             loc_560128
560062:  VMOV            S4, R10
560066:  VMUL.F32        S18, S0, S4
56006A:  VSUB.F32        S0, S2, S16
56006E:  VCMPE.F32       S0, S18
560072:  VMRS            APSR_nzcv, FPSCR
560076:  BGE             loc_560128
560078:  LDR             R1, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x560086)
56007A:  MOV             R2, #0xCCCCCCCD
560082:  ADD             R1, PC; _ZN6CTimer14m_FrameCounterE_ptr
560084:  LDR             R1, [R1]; CTimer::m_FrameCounter ...
560086:  LDR             R1, [R1]; CTimer::m_FrameCounter
560088:  UMULL.W         R2, R3, R1, R2
56008C:  LSRS            R2, R3, #4
56008E:  ADD.W           R2, R2, R2,LSL#2
560092:  SUB.W           R1, R1, R2,LSL#2
560096:  CBNZ            R1, loc_5600D8
560098:  VMOV.F32        S4, #30.0
56009C:  UXTH            R0, R0
56009E:  VMOV.F32        S2, #20.0
5600A2:  CMP.W           R0, #0x208
5600A6:  IT EQ
5600A8:  VMOVEQ.F32      S2, S4
5600AC:  VCMPE.F32       S0, S2
5600B0:  VMRS            APSR_nzcv, FPSCR
5600B4:  BGE             loc_5600D8
5600B6:  VMOV            R2, S2; float
5600BA:  ADD.W           R10, SP, #0xA0+var_80
5600BE:  MOV             R1, R4; CEntity *
5600C0:  MOV             R0, R10; this
5600C2:  BLX             j__ZN12CEventDangerC2EP7CEntityf; CEventDanger::CEventDanger(CEntity *,float)
5600C6:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
5600CA:  MOV             R1, R10; CEvent *
5600CC:  MOVS            R2, #0; bool
5600CE:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5600D2:  MOV             R0, R10; this
5600D4:  BLX             j__ZN12CEventDangerD2Ev; CEventDanger::~CEventDanger()
5600D8:  LDR.W           R0, [R4,#0x590]; this
5600DC:  CMP             R0, #0
5600DE:  BEQ             loc_5601AE
5600E0:  LDR             R1, [R4,#0x14]
5600E2:  MOV             R2, R11
5600E4:  VMOV            S0, R9
5600E8:  CMP             R1, #0
5600EA:  IT NE
5600EC:  ADDNE.W         R2, R1, #0x30 ; '0'
5600F0:  ADDW            R1, R4, #0x998
5600F4:  VLDR            S2, [R2,#8]
5600F8:  VSUB.F32        S2, S2, S16
5600FC:  VSUB.F32        S2, S18, S2
560100:  VDIV.F32        S2, S2, S18
560104:  VMUL.F32        S0, S2, S0
560108:  VMUL.F32        S2, S0, S0
56010C:  VLDR            S0, [R1]
560110:  VCMPE.F32       S2, S0
560114:  VMRS            APSR_nzcv, FPSCR
560118:  BLE             loc_56014A
56011A:  VLDR            S4, =0.04
56011E:  VADD.F32        S0, S0, S4
560122:  VMIN.F32        D0, D0, D1
560126:  B               loc_560158
560128:  LDR.W           R0, [R4,#0x590]; this
56012C:  CBZ             R0, loc_56013C
56012E:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
560132:  MOVS            R0, #0
560134:  STR.W           R0, [R4,#0x998]
560138:  STR.W           R0, [R4,#0x590]
56013C:  ADD             SP, SP, #0x70 ; 'p'
56013E:  VPOP            {D8-D9}
560142:  ADD             SP, SP, #4
560144:  POP.W           {R8-R11}
560148:  POP             {R4-R7,PC}
56014A:  BGE             loc_56015C
56014C:  VLDR            S4, =-0.04
560150:  VADD.F32        S0, S0, S4
560154:  VMAX.F32        D0, D0, D1
560158:  VSTR            S0, [R1]
56015C:  VMOV            R2, S0; float
560160:  MOVS            R1, #1; unsigned __int8
560162:  BLX             j__ZN10FxSystem_c12SetConstTimeEhf; FxSystem_c::SetConstTime(uchar,float)
560166:  LDR             R0, [R4,#0x14]
560168:  CMP             R0, #0
56016A:  IT NE
56016C:  ADDNE.W         R11, R0, #0x30 ; '0'
560170:  LDRD.W          R0, R1, [R11]
560174:  STRD.W          R0, R1, [SP,#0xA0+var_80]
560178:  ADD             R1, SP, #0xA0+var_80
56017A:  VSTR            S16, [SP,#0xA0+var_78]
56017E:  LDR.W           R0, [R4,#0x590]
560182:  BLX             j__ZN10FxSystem_c12SetOffsetPosEP5RwV3d; FxSystem_c::SetOffsetPos(RwV3d *)
560186:  CBZ             R6, loc_5601EC
560188:  LDR.W           R0, [R4,#0x590]; this
56018C:  MOVS            R1, #0; int
56018E:  MOVS            R2, #0; unsigned __int8
560190:  BLX             j__ZN10FxSystem_c10EnablePrimEih; FxSystem_c::EnablePrim(int,uchar)
560194:  LDR.W           R0, [R4,#0x590]; this
560198:  MOVS            R1, #1; int
56019A:  MOVS            R2, #0; unsigned __int8
56019C:  BLX             j__ZN10FxSystem_c10EnablePrimEih; FxSystem_c::EnablePrim(int,uchar)
5601A0:  LDR.W           R0, [R4,#0x590]; this
5601A4:  MOVS            R1, #2; int
5601A6:  MOVS            R2, #1; unsigned __int8
5601A8:  BLX             j__ZN10FxSystem_c10EnablePrimEih; FxSystem_c::EnablePrim(int,uchar)
5601AC:  B               loc_56013C
5601AE:  LDR             R0, =(g_fxMan_ptr - 0x5601BC)
5601B0:  MOVS            R1, #0
5601B2:  STRD.W          R1, R1, [SP,#0xA0+var_80]
5601B6:  ADD             R2, SP, #0xA0+var_80; int
5601B8:  ADD             R0, PC; g_fxMan_ptr
5601BA:  STR             R1, [SP,#0xA0+var_78]
5601BC:  MOVS            R1, #1
5601BE:  MOVS            R3, #0; int
5601C0:  LDR             R0, [R0]; g_fxMan ; int
5601C2:  STR             R1, [SP,#0xA0+var_A0]; int
5601C4:  ADR             R1, aHeliDust_0; "heli_dust"
5601C6:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
5601CA:  CMP             R0, #0
5601CC:  STR.W           R0, [R4,#0x590]
5601D0:  BEQ             loc_56013C
5601D2:  MOVS            R1, #1; unsigned __int8
5601D4:  BLX             j__ZN10FxSystem_c17SetLocalParticlesEh; FxSystem_c::SetLocalParticles(uchar)
5601D8:  LDR.W           R0, [R4,#0x590]; this
5601DC:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
5601E0:  LDR.W           R0, [R4,#0x590]
5601E4:  CMP             R0, #0
5601E6:  BNE.W           loc_5600E0
5601EA:  B               loc_56013C
5601EC:  LDR.W           R0, [R4,#0x590]; this
5601F0:  MOVS            R1, #0; int
5601F2:  CMP.W           R8, #0
5601F6:  BEQ             loc_560208
5601F8:  MOVS            R2, #0; unsigned __int8
5601FA:  BLX             j__ZN10FxSystem_c10EnablePrimEih; FxSystem_c::EnablePrim(int,uchar)
5601FE:  LDR.W           R0, [R4,#0x590]
560202:  MOVS            R1, #1
560204:  MOVS            R2, #1
560206:  B               loc_560216
560208:  MOVS            R2, #1; unsigned __int8
56020A:  BLX             j__ZN10FxSystem_c10EnablePrimEih; FxSystem_c::EnablePrim(int,uchar)
56020E:  LDR.W           R0, [R4,#0x590]; this
560212:  MOVS            R1, #1; int
560214:  MOVS            R2, #0; unsigned __int8
560216:  BLX             j__ZN10FxSystem_c10EnablePrimEih; FxSystem_c::EnablePrim(int,uchar)
56021A:  LDR.W           R0, [R4,#0x590]; this
56021E:  MOVS            R1, #2; int
560220:  MOVS            R2, #0; unsigned __int8
560222:  BLX             j__ZN10FxSystem_c10EnablePrimEih; FxSystem_c::EnablePrim(int,uchar)
560226:  B               loc_56013C
