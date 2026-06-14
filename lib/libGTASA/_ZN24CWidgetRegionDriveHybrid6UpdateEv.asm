; =========================================================
; Game Engine Function: _ZN24CWidgetRegionDriveHybrid6UpdateEv
; Address            : 0x2C0098 - 0x2C02BC
; =========================================================

2C0098:  PUSH            {R4-R7,LR}
2C009A:  ADD             R7, SP, #0xC
2C009C:  PUSH.W          {R11}
2C00A0:  VPUSH           {D8}
2C00A4:  SUB             SP, SP, #0x10
2C00A6:  MOV             R4, R0
2C00A8:  BLX             j__ZN13CWidgetRegion6UpdateEv; CWidgetRegion::Update(void)
2C00AC:  MOV.W           R0, #0xFFFFFFFF; int
2C00B0:  MOVS            R1, #0; bool
2C00B2:  MOVS            R5, #0
2C00B4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2C00B8:  CMP             R0, #0
2C00BA:  BEQ.W           loc_2C0254
2C00BE:  MOV.W           R0, #0xFFFFFFFF; int
2C00C2:  MOVS            R1, #0; bool
2C00C4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2C00C8:  MOV             R1, R0
2C00CA:  ADD             R0, SP, #0x28+var_24
2C00CC:  MOVS            R2, #0
2C00CE:  MOVS            R3, #0
2C00D0:  STR             R5, [SP,#0x28+var_28]
2C00D2:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
2C00D6:  MOV.W           R0, #0xFFFFFFFF; int
2C00DA:  MOVS            R1, #0; bool
2C00DC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2C00E0:  LDR             R0, [R0,#0x14]
2C00E2:  MOVS            R1, #0
2C00E4:  VLDR            S0, [SP,#0x28+var_24]
2C00E8:  VLDR            S2, [SP,#0x28+var_20]
2C00EC:  VLDR            S6, [R0,#0x10]
2C00F0:  VLDR            S8, [R0,#0x14]
2C00F4:  VMUL.F32        S0, S0, S6
2C00F8:  VLDR            S10, [R0,#0x18]
2C00FC:  VMUL.F32        S2, S2, S8
2C0100:  VLDR            S4, [SP,#0x28+var_1C]
2C0104:  VLDR            D16, =0.42
2C0108:  VMUL.F32        S4, S4, S10
2C010C:  LDR             R0, [R4]
2C010E:  VADD.F32        S0, S0, S2
2C0112:  VLDR            S2, =0.0055556
2C0116:  VADD.F32        S0, S0, S4
2C011A:  VDIV.F32        S16, S0, S2
2C011E:  VABS.F32        S0, S16
2C0122:  VCVT.F64.F32    D17, S0
2C0126:  VCMPE.F64       D17, D16
2C012A:  VMRS            APSR_nzcv, FPSCR
2C012E:  VLDR            S0, =0.0
2C0132:  IT LT
2C0134:  VMOVLT.F32      S16, S0
2C0138:  LDR             R2, [R0,#0x50]
2C013A:  MOV             R0, R4
2C013C:  BLX             R2
2C013E:  CMP             R0, #1
2C0140:  BNE             loc_2C0172
2C0142:  VMOV.F32        S0, #15.0
2C0146:  VCMPE.F32       S16, S0
2C014A:  VMRS            APSR_nzcv, FPSCR
2C014E:  BGT             loc_2C016E
2C0150:  LDR             R0, [R4]
2C0152:  LDR             R1, [R0,#0x28]
2C0154:  MOV             R0, R4
2C0156:  BLX             R1
2C0158:  CMP             R0, #1
2C015A:  BNE             loc_2C016E
2C015C:  MOV.W           R0, #0xFFFFFFFF; int
2C0160:  MOVS            R1, #0; bool
2C0162:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2C0166:  LDR.W           R0, [R0,#0x5A4]
2C016A:  CMP             R0, #0xA
2C016C:  BNE             loc_2C01F6
2C016E:  MOVS            R5, #1
2C0170:  B               loc_2C0254
2C0172:  MOV.W           R0, #0xFFFFFFFF; int
2C0176:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2C017A:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
2C017E:  LDRB.W          R0, [R0,#0x11B]
2C0182:  CBZ             R0, loc_2C0188
2C0184:  MOVS            R6, #1
2C0186:  B               loc_2C019E
2C0188:  MOV.W           R0, #0xFFFFFFFF; int
2C018C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2C0190:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
2C0194:  LDRB.W          R6, [R0,#0x11C]
2C0198:  CMP             R6, #0
2C019A:  IT NE
2C019C:  MOVNE           R6, #1
2C019E:  MOV.W           R0, #0xFFFFFFFF; int
2C01A2:  MOVS            R1, #0; bool
2C01A4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2C01A8:  LDR.W           R0, [R0,#0x5A4]
2C01AC:  CMP             R0, #4
2C01AE:  BEQ             loc_2C01CE
2C01B0:  MOV.W           R0, #0xFFFFFFFF; int
2C01B4:  MOVS            R1, #0; bool
2C01B6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2C01BA:  LDR.W           R0, [R0,#0x5A4]
2C01BE:  CMP             R0, #3
2C01C0:  BEQ             loc_2C01CE
2C01C2:  MOVS            R0, #0; this
2C01C4:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2C01C8:  BLX             j__ZN4CPad17IsFlyingRCVehicleEv; CPad::IsFlyingRCVehicle(void)
2C01CC:  CBZ             R0, loc_2C0218
2C01CE:  CMP             R6, #0
2C01D0:  BEQ             loc_2C0252
2C01D2:  MOV.W           R0, #0xFFFFFFFF; int
2C01D6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2C01DA:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
2C01DE:  MOVS            R5, #0
2C01E0:  STRB.W          R5, [R0,#0x11B]
2C01E4:  MOV.W           R0, #0xFFFFFFFF; int
2C01E8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2C01EC:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
2C01F0:  STRB.W          R5, [R0,#0x11C]
2C01F4:  B               loc_2C0254
2C01F6:  MOV.W           R0, #0xFFFFFFFF; int
2C01FA:  MOVS            R1, #0; bool
2C01FC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2C0200:  LDR.W           R0, [R0,#0x5A4]
2C0204:  MOVS            R5, #1
2C0206:  CMP             R0, #4
2C0208:  BEQ             loc_2C0254
2C020A:  MOV.W           R0, #0xFFFFFFFF; int
2C020E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2C0212:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
2C0216:  B               loc_2C01E0
2C0218:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x2C021E)
2C021A:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
2C021C:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
2C021E:  LDR             R0, [R0]; CTheScripts::pActiveScripts
2C0220:  CBZ             R0, loc_2C022E
2C0222:  ADDS            R0, #8; char *
2C0224:  ADR             R1, aLowgame_0; "lowgame"
2C0226:  BLX             strcmp
2C022A:  CMP             R0, #0
2C022C:  BEQ             loc_2C01CE
2C022E:  VCMP.F32        S16, #0.0
2C0232:  VMRS            APSR_nzcv, FPSCR
2C0236:  BNE             loc_2C024E
2C0238:  MOVS            R0, #4
2C023A:  MOVS            R1, #0
2C023C:  MOVS            R2, #1
2C023E:  MOVS            R5, #0
2C0240:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
2C0244:  EOR.W           R0, R0, #1
2C0248:  TST             R6, R0
2C024A:  BNE             loc_2C01D2
2C024C:  B               loc_2C0254
2C024E:  CMP             R6, #1
2C0250:  BEQ             loc_2C01D2
2C0252:  MOVS            R5, #0
2C0254:  LDR             R0, =(_ZN7CWidget14m_fElapsedTimeE_ptr - 0x2C0260)
2C0256:  CMP             R5, #1
2C0258:  VLDR            S0, [R4,#0x1C]
2C025C:  ADD             R0, PC; _ZN7CWidget14m_fElapsedTimeE_ptr
2C025E:  VLDR            S2, [R4,#0x90]
2C0262:  VCVT.F64.F32    D16, S0
2C0266:  LDR             R0, [R0]; CWidget::m_fElapsedTime ...
2C0268:  VLDR            D17, [R0]
2C026C:  VMUL.F64        D17, D17, D16
2C0270:  VCVT.F64.S32    D16, S2
2C0274:  BNE             loc_2C0290
2C0276:  VLDR            D18, =0.389999986
2C027A:  VLDR            S2, =100.0
2C027E:  VMUL.F64        D17, D17, D18
2C0282:  VADD.F64        D16, D17, D16
2C0286:  VCVT.F32.F64    S0, D16
2C028A:  VMIN.F32        D0, D0, D1
2C028E:  B               loc_2C02A8
2C0290:  VLDR            D18, =-0.689999998
2C0294:  VLDR            S2, =0.0
2C0298:  VMUL.F64        D17, D17, D18
2C029C:  VADD.F64        D16, D16, D17
2C02A0:  VCVT.F32.F64    S0, D16
2C02A4:  VMAX.F32        D0, D0, D1
2C02A8:  VCVT.S32.F32    S0, S0
2C02AC:  VSTR            S0, [R4,#0x90]
2C02B0:  ADD             SP, SP, #0x10
2C02B2:  VPOP            {D8}
2C02B6:  POP.W           {R11}
2C02BA:  POP             {R4-R7,PC}
