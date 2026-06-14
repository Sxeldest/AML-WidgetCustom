; =========================================================
; Game Engine Function: _ZN8CShadows19StoreRealTimeShadowEP9CPhysicalffffff
; Address            : 0x5BA020 - 0x5BA36A
; =========================================================

5BA020:  PUSH            {R4-R7,LR}
5BA022:  ADD             R7, SP, #0xC
5BA024:  PUSH.W          {R8,R9,R11}
5BA028:  VPUSH           {D8-D11}
5BA02C:  SUB             SP, SP, #0x20
5BA02E:  MOV             R5, R0
5BA030:  LDR.W           R9, [R5,#0x138]
5BA034:  CMP.W           R9, #0
5BA038:  BEQ.W           loc_5BA1DE
5BA03C:  LDR             R0, [R5,#0x14]
5BA03E:  ADD.W           R1, R0, #0x30 ; '0'
5BA042:  CMP             R0, #0
5BA044:  IT EQ
5BA046:  ADDEQ           R1, R5, #4
5BA048:  VLDR            D16, [R1]
5BA04C:  LDR             R0, [R1,#8]
5BA04E:  STR             R0, [SP,#0x58+var_40]
5BA050:  VSTR            D16, [SP,#0x58+var_48]
5BA054:  LDRB.W          R0, [R5,#0x3A]
5BA058:  AND.W           R0, R0, #7
5BA05C:  CMP             R0, #3
5BA05E:  BNE             loc_5BA092
5BA060:  ADD             R1, SP, #0x58+var_48
5BA062:  MOV             R0, R5; this
5BA064:  MOVS            R2, #0
5BA066:  MOVS            R3, #0
5BA068:  VLDR            S16, [SP,#0x58+var_40]
5BA06C:  BLX.W           j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
5BA070:  VLDR            S0, [SP,#0x58+var_40]
5BA074:  VLDR            S2, =-0.85
5BA078:  VCMPE.F32       S16, S0
5BA07C:  VMRS            APSR_nzcv, FPSCR
5BA080:  ITT GT
5BA082:  VSTRGT          S16, [SP,#0x58+var_40]
5BA086:  VMOVGT.F32      S0, S16
5BA08A:  VADD.F32        S0, S0, S2
5BA08E:  VSTR            S0, [SP,#0x58+var_40]
5BA092:  LDR             R0, =(TheCamera_ptr - 0x5BA09C)
5BA094:  VLDR            S16, [SP,#0x58+var_48]
5BA098:  ADD             R0, PC; TheCamera_ptr
5BA09A:  VLDR            S18, [SP,#0x58+var_48+4]
5BA09E:  LDR             R0, [R0]; TheCamera
5BA0A0:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
5BA0A2:  ADD.W           R2, R1, #0x30 ; '0'
5BA0A6:  CMP             R1, #0
5BA0A8:  IT EQ
5BA0AA:  ADDEQ           R2, R0, #4
5BA0AC:  MOV.W           R0, #0xFFFFFFFF; int
5BA0B0:  VLDR            S20, [R2]
5BA0B4:  VLDR            S22, [R2,#4]
5BA0B8:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5BA0BC:  CMP             R0, R5
5BA0BE:  BEQ             loc_5BA0EE
5BA0C0:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5BA0D0)
5BA0C2:  VMOV.F32        S2, #6.0
5BA0C6:  VMOV.F32        S0, #2.0
5BA0CA:  ADD             R1, SP, #0x58+var_48; CVector *
5BA0CC:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5BA0CE:  LDR             R0, [R0]; MobileSettings::settings ...
5BA0D0:  LDR.W           R0, [R0,#(dword_6E049C - 0x6E03F4)]
5BA0D4:  CMP             R0, #2
5BA0D6:  LDR             R0, =(TheCamera_ptr - 0x5BA0E6)
5BA0D8:  IT EQ
5BA0DA:  VMOVEQ.F32      S0, S2
5BA0DE:  VMOV            R2, S0; float
5BA0E2:  ADD             R0, PC; TheCamera_ptr
5BA0E4:  LDR             R0, [R0]; TheCamera ; this
5BA0E6:  BLX.W           j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
5BA0EA:  CMP             R0, #1
5BA0EC:  BNE             loc_5BA1DE
5BA0EE:  VSUB.F32        S2, S16, S20
5BA0F2:  LDR             R0, =(MAX_DISTANCE_PED_SHADOWS_ptr - 0x5BA0FE)
5BA0F4:  VSUB.F32        S0, S18, S22
5BA0F8:  LDR             R1, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5BA104)
5BA0FA:  ADD             R0, PC; MAX_DISTANCE_PED_SHADOWS_ptr
5BA0FC:  VMOV.F32        S16, #0.5
5BA100:  ADD             R1, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5BA102:  LDR             R0, [R0]; MAX_DISTANCE_PED_SHADOWS
5BA104:  VMUL.F32        S2, S2, S2
5BA108:  VMUL.F32        S0, S0, S0
5BA10C:  VADD.F32        S0, S2, S0
5BA110:  VLDR            S2, [R0]
5BA114:  LDR             R0, [R1]; CTimeCycle::m_CurrentColours ...
5BA116:  VMUL.F32        S2, S2, S16
5BA11A:  LDRH.W          R0, [R0,#(dword_966594 - 0x96654C)]
5BA11E:  VSQRT.F32       S0, S0
5BA122:  VCMPE.F32       S0, S2
5BA126:  VMRS            APSR_nzcv, FPSCR
5BA12A:  BLT             loc_5BA152
5BA12C:  VSUB.F32        S0, S0, S2
5BA130:  SXTH            R0, R0
5BA132:  VMOV            S4, R0
5BA136:  VCVT.F32.S32    S4, S4
5BA13A:  VDIV.F32        S0, S0, S2
5BA13E:  VMOV.F32        S2, #1.0
5BA142:  VSUB.F32        S0, S2, S0
5BA146:  VMUL.F32        S0, S0, S4
5BA14A:  VCVT.S32.F32    S0, S0
5BA14E:  VMOV            R0, S0
5BA152:  LDRSB.W         R1, [R9,#5]
5BA156:  SXTH            R0, R0
5BA158:  VLDR            S2, =100.0
5BA15C:  LDR             R4, =(_ZN10CTimeCycle13m_VectorToSunE_ptr - 0x5BA168)
5BA15E:  VMOV            S0, R1
5BA162:  LDR             R1, =(_ZN10CTimeCycle20m_CurrentStoredValueE_ptr - 0x5BA16E)
5BA164:  ADD             R4, PC; _ZN10CTimeCycle13m_VectorToSunE_ptr
5BA166:  VCVT.F32.S32    S0, S0
5BA16A:  ADD             R1, PC; _ZN10CTimeCycle20m_CurrentStoredValueE_ptr
5BA16C:  LDR             R6, [R1]; CTimeCycle::m_CurrentStoredValue ...
5BA16E:  VDIV.F32        S18, S0, S2
5BA172:  VMOV            S0, R0
5BA176:  MOV             R0, R9; this
5BA178:  VCVT.F32.S32    S20, S0
5BA17C:  BLX.W           j__ZN15CRealTimeShadow18GetShadowRwTextureEv; CRealTimeShadow::GetShadowRwTexture(void)
5BA180:  MOV             R8, R0
5BA182:  LDR             R0, [R6]; CTimeCycle::m_CurrentStoredValue
5BA184:  VMUL.F32        S10, S18, S20
5BA188:  LDR             R1, [R4]; CTimeCycle::m_VectorToSun ...
5BA18A:  VMOV.F32        S12, #0.75
5BA18E:  ADD.W           R0, R0, R0,LSL#1
5BA192:  ADD.W           R0, R1, R0,LSL#2
5BA196:  VLDR            S4, [R0]
5BA19A:  VLDR            S6, [R0,#4]
5BA19E:  VLDR            S8, [R0,#8]
5BA1A2:  VNEG.F32        S2, S4
5BA1A6:  VNEG.F32        S0, S6
5BA1AA:  VCVT.S32.F32    S18, S10
5BA1AE:  VCMPE.F32       S8, S12
5BA1B2:  VMRS            APSR_nzcv, FPSCR
5BA1B6:  BGE             loc_5BA1E2
5BA1B8:  VMUL.F32        S6, S6, S6
5BA1BC:  VMUL.F32        S4, S4, S4
5BA1C0:  VMOV.F32        S8, #0.5625
5BA1C4:  VMOV.F32        S20, #-0.75
5BA1C8:  VADD.F32        S4, S4, S6
5BA1CC:  VADD.F32        S4, S4, S8
5BA1D0:  VSQRT.F32       S4, S4
5BA1D4:  VDIV.F32        S0, S0, S4
5BA1D8:  VDIV.F32        S2, S2, S4
5BA1DC:  B               loc_5BA1E6
5BA1DE:  MOVS            R0, #0
5BA1E0:  B               loc_5BA35E
5BA1E2:  VNEG.F32        S20, S8
5BA1E6:  VMOV            R6, S0
5BA1EA:  VMOV            R0, S2; y
5BA1EE:  MOV             R1, R6; x
5BA1F0:  BLX.W           atan2f
5BA1F4:  VMOV            R1, S20; x
5BA1F8:  MOV             R4, R0
5BA1FA:  MOV             R0, R6; y
5BA1FC:  BLX.W           atan2f
5BA200:  VLDR            S0, =180.0
5BA204:  VMOV            S2, R0
5BA208:  VMOV            S4, R4
5BA20C:  VLDR            S6, =3.1416
5BA210:  VMUL.F32        S2, S2, S0
5BA214:  MOVS            R3, #1; bool
5BA216:  VMUL.F32        S0, S4, S0
5BA21A:  VDIV.F32        S2, S2, S6
5BA21E:  VDIV.F32        S0, S0, S6
5BA222:  VMOV            R0, S2
5BA226:  VMOV            R1, S0; float
5BA22A:  EOR.W           R2, R0, #0x80000000; float
5BA22E:  MOV             R0, R9; this
5BA230:  BLX.W           j__ZN15CRealTimeShadow18SetLightPropertiesEffb; CRealTimeShadow::SetLightProperties(float,float,bool)
5BA234:  VLDR            D16, [R0,#0x30]
5BA238:  LDR             R0, [R0,#0x38]
5BA23A:  STR             R0, [SP,#0x58+var_50]
5BA23C:  MOV             R0, SP; this
5BA23E:  VSTR            D16, [SP,#0x58+var_58]
5BA242:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5BA246:  VMOV.F32        S2, #-0.5
5BA24A:  VLDR            S4, [SP,#0x58+var_58]
5BA24E:  VLDR            S6, [SP,#0x58+var_58+4]
5BA252:  VMOV.F32        S0, #2.5
5BA256:  VLDR            S12, [SP,#0x58+var_48+4]
5BA25A:  LDR             R0, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5BA260)
5BA25C:  ADD             R0, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5BA25E:  VMUL.F32        S8, S6, S2
5BA262:  LDR             R0, [R0]; CShadows::ShadowsStoredToBeRendered ...
5BA264:  VMUL.F32        S10, S4, S2
5BA268:  VMUL.F32        S8, S8, S0
5BA26C:  VMUL.F32        S0, S10, S0
5BA270:  VLDR            S10, [SP,#0x58+var_48]
5BA274:  VSUB.F32        S8, S12, S8
5BA278:  VSUB.F32        S10, S10, S0
5BA27C:  VMOV.F32        S0, #2.25
5BA280:  VSTR            S10, [SP,#0x58+var_48]
5BA284:  VSTR            S8, [SP,#0x58+var_48+4]
5BA288:  VMOV.F32        S8, #1.5
5BA28C:  LDRB.W          R1, [R5,#0x3A]
5BA290:  AND.W           R1, R1, #7
5BA294:  CMP             R1, #3
5BA296:  IT EQ
5BA298:  VMOVEQ.F32      S0, S8
5BA29C:  LDRH            R0, [R0]; CShadows::ShadowsStoredToBeRendered
5BA29E:  CMP             R0, #0x2F ; '/'
5BA2A0:  BHI             loc_5BA35C
5BA2A2:  VMUL.F32        S8, S6, S6
5BA2A6:  LDR             R2, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5BA2B6)
5BA2A8:  VMUL.F32        S10, S4, S4
5BA2AC:  MOVS            R3, #0x34 ; '4'
5BA2AE:  VNEG.F32        S6, S6
5BA2B2:  ADD             R2, PC; _ZN8CShadows15asShadowsStoredE_ptr
5BA2B4:  VMOV            R1, S18
5BA2B8:  MOVS            R5, #3
5BA2BA:  LDR             R2, [R2]; CShadows::asShadowsStored ...
5BA2BC:  MLA.W           R2, R0, R3, R2
5BA2C0:  LDR             R3, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5BA2CA)
5BA2C2:  VLDR            D16, [SP,#0x58+var_48]
5BA2C6:  ADD             R3, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5BA2C8:  ADDS            R0, #1
5BA2CA:  VADD.F32        S8, S10, S8
5BA2CE:  VMOV.F32        S10, #1.0
5BA2D2:  LDR             R3, [R3]; CShadows::ShadowsStoredToBeRendered ...
5BA2D4:  STR.W           R8, [R2,#0x24]
5BA2D8:  LDRB.W          R6, [R2,#0x32]
5BA2DC:  STRB.W          R5, [R2,#0x2E]
5BA2E0:  LDR             R5, [SP,#0x58+var_40]
5BA2E2:  VSQRT.F32       S8, S8
5BA2E6:  STR             R5, [R2,#8]
5BA2E8:  STRH            R0, [R3]; CShadows::ShadowsStoredToBeRendered
5BA2EA:  STRH            R1, [R2,#0x2C]
5BA2EC:  STRB.W          R1, [R2,#0x2F]
5BA2F0:  STRB.W          R1, [R2,#0x30]
5BA2F4:  STRB.W          R1, [R2,#0x31]
5BA2F8:  MOV.W           R1, #0x40800000
5BA2FC:  STR             R1, [R2,#0x1C]
5BA2FE:  AND.W           R1, R6, #0xFA
5BA302:  STRB.W          R1, [R2,#0x32]
5BA306:  MOV.W           R1, #0x3F800000
5BA30A:  STR             R1, [R2,#0x20]
5BA30C:  STR.W           R9, [R2,#0x28]
5BA310:  VADD.F32        S10, S8, S10
5BA314:  VSTR            D16, [R2]
5BA318:  VDIV.F32        S12, S6, S8
5BA31C:  VDIV.F32        S10, S10, S8
5BA320:  VDIV.F32        S8, S4, S8
5BA324:  VMUL.F32        S4, S4, S10
5BA328:  VMUL.F32        S6, S10, S6
5BA32C:  VMUL.F32        S8, S8, S16
5BA330:  VMUL.F32        S2, S4, S2
5BA334:  VMUL.F32        S4, S6, S16
5BA338:  VMUL.F32        S6, S12, S16
5BA33C:  VMUL.F32        S2, S2, S0
5BA340:  VMUL.F32        S4, S4, S0
5BA344:  VMUL.F32        S6, S6, S0
5BA348:  VMUL.F32        S0, S8, S0
5BA34C:  VSTR            S2, [R2,#0xC]
5BA350:  VSTR            S4, [R2,#0x10]
5BA354:  VSTR            S6, [R2,#0x14]
5BA358:  VSTR            S0, [R2,#0x18]
5BA35C:  MOVS            R0, #1
5BA35E:  ADD             SP, SP, #0x20 ; ' '
5BA360:  VPOP            {D8-D11}
5BA364:  POP.W           {R8,R9,R11}
5BA368:  POP             {R4-R7,PC}
