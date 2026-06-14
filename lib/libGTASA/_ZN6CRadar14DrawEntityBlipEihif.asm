; =========================================================
; Game Engine Function: _ZN6CRadar14DrawEntityBlipEihif
; Address            : 0x43FED4 - 0x440DC2
; =========================================================

43FED4:  PUSH            {R4-R7,LR}
43FED6:  ADD             R7, SP, #0xC
43FED8:  PUSH.W          {R8-R11}
43FEDC:  SUB             SP, SP, #4
43FEDE:  VPUSH           {D8-D14}
43FEE2:  SUB             SP, SP, #0x70; unsigned __int8
43FEE4:  STRD.W          R3, R2, [SP,#0xC8+var_A8]
43FEE8:  ADD.W           R11, R0, R0,LSL#2
43FEEC:  STR             R1, [SP,#0xC8+var_A0]
43FEEE:  LDR.W           R1, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43FEF8)
43FEF2:  STR             R0, [SP,#0xC8+var_AC]
43FEF4:  ADD             R1, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43FEF6:  LDR             R1, [R1]; CRadar::ms_RadarTrace ...
43FEF8:  ADD.W           R8, R1, R11,LSL#3
43FEFC:  MOVS            R1, #0; int
43FEFE:  LDRH.W          R0, [R8,#0x25]!
43FF02:  UBFX.W          R0, R0, #0xA, #4
43FF06:  SUBS            R0, #1; switch 8 cases
43FF08:  CMP             R0, #7
43FF0A:  BHI.W           def_43FF14; jumptable 0043FF14 default case
43FF0E:  MOV.W           R9, #0
43FF12:  MOVS            R5, #0
43FF14:  TBH.W           [PC,R0,LSL#1]; switch jump
43FF18:  DCW 8; jump table for switch statement
43FF1A:  DCW 0x1F
43FF1C:  DCW 0x48
43FF1E:  DCW 0x235
43FF20:  DCW 0x235
43FF22:  DCW 0x67
43FF24:  DCW 0x81
43FF26:  DCW 0x98
43FF28:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43FF30); jumptable 0043FF14 case 1
43FF2C:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43FF2E:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
43FF30:  ADD.W           R0, R0, R11,LSL#3
43FF34:  LDR             R1, [R0,#4]
43FF36:  CMP             R1, #0
43FF38:  BLT             loc_43FFDC
43FF3A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x43FF46)
43FF3E:  UXTB            R3, R1
43FF40:  LSRS            R1, R1, #8
43FF42:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
43FF44:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
43FF46:  LDR             R0, [R0]; CPools::ms_pVehiclePool
43FF48:  LDR             R2, [R0,#4]
43FF4A:  LDRB            R2, [R2,R1]
43FF4C:  CMP             R2, R3
43FF4E:  BNE             loc_43FFDC
43FF50:  MOVW            R2, #0xA2C
43FF54:  B               loc_43FFD4
43FF56:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43FF5E); jumptable 0043FF14 case 2
43FF5A:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43FF5C:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
43FF5E:  ADD.W           R0, R0, R11,LSL#3
43FF62:  LDR             R0, [R0,#4]
43FF64:  CMP             R0, #0
43FF66:  BLT.W           loc_44037A
43FF6A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x43FF76)
43FF6E:  UXTB            R3, R0
43FF70:  LSRS            R0, R0, #8
43FF72:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
43FF74:  LDR             R1, [R1]; CPools::ms_pPedPool ...
43FF76:  LDR             R1, [R1]; CPools::ms_pPedPool
43FF78:  LDR             R2, [R1,#4]
43FF7A:  LDRB            R2, [R2,R0]
43FF7C:  CMP             R2, R3
43FF7E:  BNE.W           loc_44037A
43FF82:  MOVW            R2, #0x7CC
43FF86:  LDR             R1, [R1]
43FF88:  MLA.W           R5, R0, R2, R1
43FF8C:  CMP             R5, #0
43FF8E:  BEQ.W           loc_44037A
43FF92:  LDRB.W          R2, [R5,#0x485]
43FF96:  LSLS            R2, R2, #0x1F
43FF98:  BEQ             loc_43FFDE
43FF9A:  MOVW            R2, #0x7CC
43FF9E:  MLA.W           R0, R0, R2, R1
43FFA2:  LDR.W           R5, [R0,#0x590]
43FFA6:  B               loc_43FFDE
43FFA8:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43FFB0); jumptable 0043FF14 case 3
43FFAC:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43FFAE:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
43FFB0:  ADD.W           R0, R0, R11,LSL#3
43FFB4:  LDR             R1, [R0,#4]
43FFB6:  CMP             R1, #0
43FFB8:  BLT             loc_43FFDC
43FFBA:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x43FFC6)
43FFBE:  UXTB            R3, R1
43FFC0:  LSRS            R1, R1, #8
43FFC2:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
43FFC4:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
43FFC6:  LDR             R0, [R0]; CPools::ms_pObjectPool
43FFC8:  LDR             R2, [R0,#4]
43FFCA:  LDRB            R2, [R2,R1]
43FFCC:  CMP             R2, R3
43FFCE:  BNE             loc_43FFDC
43FFD0:  MOV.W           R2, #0x1A4; unsigned __int8
43FFD4:  LDR             R0, [R0]
43FFD6:  MLA.W           R5, R1, R2, R0
43FFDA:  B               loc_43FFDE
43FFDC:  MOVS            R5, #0
43FFDE:  MOVS            R1, #0
43FFE0:  MOV.W           R9, #0
43FFE4:  B               loc_440382; jumptable 0043FF14 cases 4,5
43FFE6:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43FFF0); jumptable 0043FF14 case 6
43FFEA:  MOVS            R1, #2; int
43FFEC:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43FFEE:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
43FFF0:  ADD.W           R0, R0, R11,LSL#3
43FFF4:  LDR             R0, [R0,#4]; this
43FFF6:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
43FFFA:  LDR.W           R1, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x44000E)
43FFFE:  RSB.W           R3, R0, R0,LSL#5
440002:  CMP.W           R0, #0xFFFFFFFF
440006:  MOV.W           R9, #0
44000A:  ADD             R1, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
44000C:  LDR             R2, [R1]; CTheScripts::ScriptSearchLightArray ...
44000E:  MOV.W           R1, #0
440012:  IT GT
440014:  ADDGT.W         R9, R2, R3,LSL#2
440018:  B               loc_440380
44001A:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x440022); jumptable 0043FF14 case 7
44001E:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
440020:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
440022:  ADD.W           R0, R0, R11,LSL#3
440026:  LDR             R0, [R0,#4]; this
440028:  BLX             j__ZN8CPickups20GetActualPickupIndexEi; CPickups::GetActualPickupIndex(int)
44002C:  LDR.W           R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x44003C)
440030:  CMP.W           R0, #0xFFFFFFFF
440034:  MOV.W           R9, #0
440038:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
44003A:  LDR             R2, [R1]; CPickups::aPickUps ...
44003C:  MOV.W           R1, #0
440040:  IT GT
440042:  ADDGT.W         R1, R2, R0,LSL#5
440046:  B               loc_440380
440048:  LDR.W           R0, =(_ZN6CRadar17airstrip_locationE_ptr - 0x440056); jumptable 0043FF14 case 8
44004C:  MOVS            R5, #0
44004E:  LDR.W           R1, =(airstrip_table_ptr - 0x440058)
440052:  ADD             R0, PC; _ZN6CRadar17airstrip_locationE_ptr
440054:  ADD             R1, PC; airstrip_table_ptr
440056:  LDR             R6, [R0]; CRadar::airstrip_location ...
440058:  LDR             R4, [R1]; airstrip_table
44005A:  MOVS            R1, #0; bool
44005C:  LDRB            R0, [R6]; CRadar::airstrip_location
44005E:  ADD.W           R0, R4, R0,LSL#4
440062:  VLDR            S16, [R0]
440066:  MOV.W           R0, #0xFFFFFFFF; int
44006A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
44006E:  LDRB            R1, [R6]; CRadar::airstrip_location
440070:  LDR             R2, [R0,#0x14]
440072:  ADD.W           R1, R4, R1,LSL#4
440076:  ADD.W           R3, R2, #0x30 ; '0'
44007A:  CMP             R2, #0
44007C:  VLDR            S18, [R1]
440080:  IT EQ
440082:  ADDEQ           R3, R0, #4
440084:  MOV.W           R0, #0xFFFFFFFF; int
440088:  MOVS            R1, #0; bool
44008A:  VLDR            S20, [R3]
44008E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
440092:  LDRB            R1, [R6]; CRadar::airstrip_location
440094:  LDR             R2, [R0,#0x14]
440096:  ADD.W           R1, R4, R1,LSL#4
44009A:  ADD.W           R3, R2, #0x30 ; '0'
44009E:  CMP             R2, #0
4400A0:  VLDR            S22, [R1,#4]
4400A4:  IT EQ
4400A6:  ADDEQ           R3, R0, #4
4400A8:  MOV.W           R0, #0xFFFFFFFF; int
4400AC:  MOVS            R1, #0; bool
4400AE:  VLDR            S24, [R3]
4400B2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4400B6:  LDRB            R1, [R6]; CRadar::airstrip_location
4400B8:  LDR             R2, [R0,#0x14]
4400BA:  ADD.W           R1, R4, R1,LSL#4
4400BE:  ADD.W           R3, R2, #0x30 ; '0'
4400C2:  CMP             R2, #0
4400C4:  VLDR            S26, [R1,#4]
4400C8:  IT EQ
4400CA:  ADDEQ           R3, R0, #4
4400CC:  MOV.W           R0, #0xFFFFFFFF; int
4400D0:  MOVS            R1, #0; bool
4400D2:  VLDR            S28, [R3,#4]
4400D6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4400DA:  LDR             R1, [R0,#0x14]
4400DC:  VSUB.F32        S0, S16, S20
4400E0:  VSUB.F32        S4, S18, S24
4400E4:  ADD.W           R2, R1, #0x30 ; '0'
4400E8:  CMP             R1, #0
4400EA:  IT EQ
4400EC:  ADDEQ           R2, R0, #4
4400EE:  VSUB.F32        S6, S22, S28
4400F2:  VLDR            S2, [R2,#4]
4400F6:  VSUB.F32        S2, S26, S2
4400FA:  VMUL.F32        S0, S0, S4
4400FE:  VMUL.F32        S2, S6, S2
440102:  VADD.F32        S0, S0, S2
440106:  VSQRT.F32       S16, S0
44010A:  VLDR            S0, =500.0
44010E:  VCMPE.F32       S16, S0
440112:  VMRS            APSR_nzcv, FPSCR
440116:  BGE.W           loc_4403FC
44011A:  LDR.W           R0, =(byte_994ED0 - 0x440122)
44011E:  ADD             R0, PC; byte_994ED0
440120:  LDRB            R0, [R0]
440122:  DMB.W           ISH
440126:  TST.W           R0, #1
44012A:  BNE             loc_440170
44012C:  LDR.W           R0, =(byte_994ED0 - 0x440134)
440130:  ADD             R0, PC; byte_994ED0 ; __guard *
440132:  BLX             j___cxa_guard_acquire
440136:  CBZ             R0, loc_440170
440138:  LDR.W           R0, =(_ZN6CRadar17airstrip_locationE_ptr - 0x440144)
44013C:  LDR.W           R1, =(airstrip_table_ptr - 0x440146)
440140:  ADD             R0, PC; _ZN6CRadar17airstrip_locationE_ptr
440142:  ADD             R1, PC; airstrip_table_ptr
440144:  LDR             R0, [R0]; CRadar::airstrip_location ...
440146:  LDR             R1, [R1]; airstrip_table
440148:  LDRB            R0, [R0]; CRadar::airstrip_location
44014A:  ADD.W           R0, R1, R0,LSL#4
44014E:  LDR.W           R1, =(word_994ECE - 0x44015A)
440152:  VLDR            S0, [R0,#0xC]
440156:  ADD             R1, PC; word_994ECE
440158:  LDR.W           R0, =(byte_994ED0 - 0x440164)
44015C:  VNEG.F32        S0, S0
440160:  ADD             R0, PC; byte_994ED0 ; __guard *
440162:  VCVT.S32.F32    S0, S0
440166:  VMOV            R2, S0
44016A:  STRH            R2, [R1]
44016C:  BLX             j___cxa_guard_release
440170:  LDR.W           R0, =(byte_994ED8 - 0x440178)
440174:  ADD             R0, PC; byte_994ED8
440176:  LDRB            R0, [R0]
440178:  DMB.W           ISH
44017C:  TST.W           R0, #1
440180:  BNE             loc_4401C6
440182:  LDR.W           R0, =(byte_994ED8 - 0x44018A)
440186:  ADD             R0, PC; byte_994ED8 ; __guard *
440188:  BLX             j___cxa_guard_acquire
44018C:  CBZ             R0, loc_4401C6
44018E:  LDR.W           R0, =(_ZN6CRadar17airstrip_locationE_ptr - 0x44019A)
440192:  LDR.W           R1, =(airstrip_table_ptr - 0x44019C)
440196:  ADD             R0, PC; _ZN6CRadar17airstrip_locationE_ptr
440198:  ADD             R1, PC; airstrip_table_ptr
44019A:  LDR             R0, [R0]; CRadar::airstrip_location ...
44019C:  LDR             R1, [R1]; airstrip_table
44019E:  LDRB            R0, [R0]; CRadar::airstrip_location
4401A0:  ADD.W           R0, R1, R0,LSL#4
4401A4:  LDR.W           R1, =(word_994ED4 - 0x4401B0)
4401A8:  VLDR            S0, [R0,#0xC]
4401AC:  ADD             R1, PC; word_994ED4
4401AE:  LDR.W           R0, =(byte_994ED8 - 0x4401BA)
4401B2:  VNEG.F32        S0, S0
4401B6:  ADD             R0, PC; byte_994ED8 ; __guard *
4401B8:  VCVT.S32.F32    S0, S0
4401BC:  VMOV            R2, S0
4401C0:  STRH            R2, [R1]
4401C2:  BLX             j___cxa_guard_release
4401C6:  LDR.W           R0, =(_ZN6CRadar17airstrip_locationE_ptr - 0x4401D2)
4401CA:  LDR.W           R1, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x4401D8)
4401CE:  ADD             R0, PC; _ZN6CRadar17airstrip_locationE_ptr
4401D0:  LDR.W           R2, =(airstrip_table_ptr - 0x4401E0)
4401D4:  ADD             R1, PC; _ZN6CRadar13ms_RadarTraceE_ptr
4401D6:  VLDR            S0, =3.1416
4401DA:  LDR             R0, [R0]; CRadar::airstrip_location ...
4401DC:  ADD             R2, PC; airstrip_table_ptr
4401DE:  LDR             R1, [R1]; CRadar::ms_RadarTrace ...
4401E0:  LDR             R2, [R2]; airstrip_table
4401E2:  LDRB.W          R9, [R0]; CRadar::airstrip_location
4401E6:  ADD.W           R0, R1, R11,LSL#3
4401EA:  VLDR            D16, [R0,#8]
4401EE:  LDR             R0, [R0,#0x10]
4401F0:  STR             R0, [SP,#0xC8+var_60]
4401F2:  ADD.W           R0, R2, R9,LSL#4
4401F6:  VSTR            D16, [SP,#0xC8+var_68]
4401FA:  VLDR            S2, [R0,#8]
4401FE:  VMUL.F32        S0, S2, S0
440202:  VLDR            S2, =180.0
440206:  VDIV.F32        S0, S0, S2
44020A:  VMOV            R6, S0
44020E:  MOV             R0, R6; x
440210:  BLX             cosf
440214:  MOV             R5, R0
440216:  MOV             R0, R6; x
440218:  BLX             sinf
44021C:  LDR.W           R1, =(word_994ECE - 0x440230)
440220:  VMOV.F32        S2, #1.0
440224:  LDR.W           R2, =(_ZN6CRadar12m_radarRangeE_ptr - 0x440236)
440228:  VMOV            S8, R0
44022C:  ADD             R1, PC; word_994ECE
44022E:  VMOV            S4, R5
440232:  ADD             R2, PC; _ZN6CRadar12m_radarRangeE_ptr
440234:  LDR.W           R0, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x440240)
440238:  LDRH            R1, [R1]
44023A:  LDR             R2, [R2]; CRadar::m_radarRange ...
44023C:  ADD             R0, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
44023E:  SXTH            R3, R1
440240:  LDR             R0, [R0]; CRadar::vec2DRadarOrigin ...
440242:  VMOV            S0, R3
440246:  VCVT.F32.S32    S0, S0
44024A:  VLDR            S6, [R2]
44024E:  LDR.W           R2, =(dword_994EE8 - 0x44025A)
440252:  VDIV.F32        S2, S2, S6
440256:  ADD             R2, PC; dword_994EE8
440258:  VMUL.F32        S4, S4, S0
44025C:  VLDR            S6, [SP,#0xC8+var_68]
440260:  VMUL.F32        S0, S8, S0
440264:  VLDR            S8, [SP,#0xC8+var_68+4]
440268:  VLDR            S10, [R2]
44026C:  VADD.F32        S4, S6, S4
440270:  VSUB.F32        S6, S8, S0
440274:  VLDR            S0, [R0]
440278:  VLDR            S8, [R0,#4]
44027C:  LDR.W           R0, =(dword_994EEC - 0x440284)
440280:  ADD             R0, PC; dword_994EEC
440282:  VSUB.F32        S0, S4, S0
440286:  VSUB.F32        S8, S6, S8
44028A:  VSTR            S6, [SP,#0xC8+var_68+4]
44028E:  VSTR            S4, [SP,#0xC8+var_68]
440292:  VMUL.F32        S0, S0, S2
440296:  VMUL.F32        S2, S8, S2
44029A:  VLDR            S8, [R0]
44029E:  VMUL.F32        S12, S8, S0
4402A2:  VMUL.F32        S14, S10, S2
4402A6:  VMUL.F32        S2, S8, S2
4402AA:  VMUL.F32        S0, S10, S0
4402AE:  VSUB.F32        S8, S14, S12
4402B2:  VADD.F32        S0, S0, S2
4402B6:  VMUL.F32        S2, S8, S8
4402BA:  VMUL.F32        S0, S0, S0
4402BE:  VADD.F32        S0, S0, S2
4402C2:  VLDR            S2, =0.9
4402C6:  VSQRT.F32       S0, S0
4402CA:  VCMPE.F32       S0, S2
4402CE:  VMRS            APSR_nzcv, FPSCR
4402D2:  BGE             loc_4402EC
4402D4:  LDR.W           R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x4402E0)
4402D8:  LDR.W           R2, =(dword_994EDC - 0x4402E2)
4402DC:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
4402DE:  ADD             R2, PC; dword_994EDC
4402E0:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
4402E2:  LDR             R2, [R2]
4402E4:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
4402E6:  SUBS            R0, R0, R2
4402E8:  CMP             R0, #4
4402EA:  BCC             loc_440376
4402EC:  ADD.W           R0, R1, #0x64 ; 'd'
4402F0:  LDR.W           R3, =(airstrip_table_ptr - 0x4402FE)
4402F4:  LDR.W           R2, =(word_994ECE - 0x440304)
4402F8:  SXTH            R1, R0
4402FA:  ADD             R3, PC; airstrip_table_ptr
4402FC:  VMOV            S4, R1
440300:  ADD             R2, PC; word_994ECE
440302:  LDR             R1, [R3]; airstrip_table
440304:  VCVT.F32.S32    S6, S4
440308:  STRH            R0, [R2]
44030A:  ADD.W           R1, R1, R9,LSL#4
44030E:  VLDR            S4, [R1,#0xC]
440312:  VCMPE.F32       S4, S6
440316:  VMRS            APSR_nzcv, FPSCR
44031A:  BGE             loc_440330
44031C:  VNEG.F32        S4, S4
440320:  LDR.W           R1, =(word_994ECE - 0x440328)
440324:  ADD             R1, PC; word_994ECE
440326:  VCVT.S32.F32    S4, S4
44032A:  VMOV            R0, S4
44032E:  STRH            R0, [R1]
440330:  LDR.W           R1, =(word_994ED4 - 0x44033A)
440334:  UXTH            R2, R0
440336:  ADD             R1, PC; word_994ED4
440338:  LDRH            R1, [R1]
44033A:  CMP             R1, R2
44033C:  BNE             loc_440348
44033E:  LDR.W           R1, =(byte_994ECC - 0x440348)
440342:  MOVS            R2, #0
440344:  ADD             R1, PC; byte_994ECC
440346:  STRB            R2, [R1]
440348:  VCMPE.F32       S0, S2
44034C:  VMRS            APSR_nzcv, FPSCR
440350:  BGE             loc_440364
440352:  LDR.W           R1, =(byte_994ECC - 0x440360)
440356:  MOVS            R3, #1
440358:  LDR.W           R2, =(word_994ED4 - 0x440362)
44035C:  ADD             R1, PC; byte_994ECC
44035E:  ADD             R2, PC; word_994ED4
440360:  STRB            R3, [R1]
440362:  STRH            R0, [R2]
440364:  LDR.W           R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x440370)
440368:  LDR.W           R1, =(dword_994EDC - 0x440372)
44036C:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
44036E:  ADD             R1, PC; dword_994EDC
440370:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
440372:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
440374:  STR             R0, [R1]
440376:  MOVS            R5, #0
440378:  B               loc_440404
44037A:  MOVS            R1, #0
44037C:  MOV.W           R9, #0; jumptable 0043FF14 default case
440380:  MOVS            R5, #0
440382:  CMP.W           R9, #0; jumptable 0043FF14 cases 4,5
440386:  MOV             R10, R9
440388:  IT NE
44038A:  MOVNE.W         R10, #1
44038E:  CMP             R1, #0
440390:  IT EQ
440392:  CMPEQ.W         R9, #0
440396:  BNE             loc_44039E
440398:  CMP             R5, #0
44039A:  BEQ.W           loc_44074E
44039E:  CBZ             R5, loc_4403DA
4403A0:  LDR             R0, [R5,#0x14]
4403A2:  ADD.W           R1, R0, #0x30 ; '0'
4403A6:  CMP             R0, #0
4403A8:  IT EQ
4403AA:  ADDEQ           R1, R5, #4
4403AC:  VLDR            D16, [R1]
4403B0:  LDR             R0, [R1,#8]
4403B2:  STR             R0, [SP,#0xC8+var_60]
4403B4:  VSTR            D16, [SP,#0xC8+var_68]
4403B8:  LDRB.W          R0, [R5,#0x3A]
4403BC:  AND.W           R0, R0, #7
4403C0:  CMP             R0, #3
4403C2:  BNE             loc_4403D0
4403C4:  LDR.W           R0, [R5,#0x794]; this
4403C8:  CBZ             R0, loc_4403D0
4403CA:  ADD             R1, SP, #0xC8+var_68; CVector *
4403CC:  BLX             j__ZN10CEntryExit33GetPositionRelativeToOutsideWorldER7CVector; CEntryExit::GetPositionRelativeToOutsideWorld(CVector &)
4403D0:  MOVS            R0, #1
4403D2:  STR             R0, [SP,#0xC8+var_B4]
4403D4:  MOVS            R0, #0
4403D6:  STR             R0, [SP,#0xC8+var_B0]
4403D8:  B               loc_440460
4403DA:  CMP.W           R9, #0
4403DE:  BEQ             loc_44040E
4403E0:  LDR.W           R0, [R9,#0x1C]
4403E4:  MOV.W           R10, #1
4403E8:  VLDR            D16, [R9,#0x14]
4403EC:  MOVS            R5, #0
4403EE:  STR             R0, [SP,#0xC8+var_60]
4403F0:  MOVS            R0, #0
4403F2:  STR             R0, [SP,#0xC8+var_B0]
4403F4:  MOVS            R0, #0
4403F6:  VSTR            D16, [SP,#0xC8+var_68]
4403FA:  B               loc_44045E
4403FC:  LDR.W           R0, =(byte_994ECC - 0x440404)
440400:  ADD             R0, PC; byte_994ECC
440402:  STRB            R5, [R0]
440404:  MOVS            R0, #1
440406:  MOV.W           R9, #0
44040A:  STR             R0, [SP,#0xC8+var_B0]
44040C:  B               loc_440458
44040E:  LDRSH.W         R0, [R1,#0x10]
440412:  VMOV.F32        S0, #0.125
440416:  LDRSH.W         R2, [R1,#0x12]
44041A:  MOVS            R5, #0
44041C:  LDRSH.W         R1, [R1,#0x14]
440420:  MOV.W           R9, #0
440424:  VMOV            S4, R0
440428:  MOVS            R0, #0
44042A:  VMOV            S2, R2
44042E:  VMOV            S6, R1
440432:  VCVT.F32.S32    S2, S2
440436:  VCVT.F32.S32    S4, S4
44043A:  VCVT.F32.S32    S6, S6
44043E:  STR             R0, [SP,#0xC8+var_B0]
440440:  VMUL.F32        S2, S2, S0
440444:  VMUL.F32        S4, S4, S0
440448:  VMUL.F32        S0, S6, S0
44044C:  VSTR            S2, [SP,#0xC8+var_68+4]
440450:  VSTR            S4, [SP,#0xC8+var_68]
440454:  VSTR            S0, [SP,#0xC8+var_60]
440458:  MOVS            R0, #0
44045A:  MOV.W           R10, #0
44045E:  STR             R0, [SP,#0xC8+var_B4]
440460:  LDR.W           R1, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x44046C)
440464:  LDRH.W          R0, [R8]
440468:  ADD             R1, PC; _ZN6CRadar13ms_RadarTraceE_ptr
44046A:  LDR             R1, [R1]; CRadar::ms_RadarTrace ...
44046C:  LDR.W           R6, [R1,R11,LSL#3]
440470:  B               loc_4404E8
440472:  BHI             loc_4404F4
440474:  AND.W           R2, R0, #1
440478:  MOVS            R1, #0xC
44047A:  TBB.W           [PC,R6]; switch 9 cases
44047E:  DCB 5; jump table for switch statement
44047F:  DCB 0xF
440480:  DCB 0xA
440481:  DCB 0x23
440482:  DCB 0x28
440483:  DCB 5
440484:  DCB 0xA
440485:  DCB 0x2D
440486:  DCB 0x31
440487:  ALIGN 2
440488:  MOVS            R1, #0; jumptable 0044047A cases 0,5
44048A:  CMP             R2, #0
44048C:  IT EQ
44048E:  MOVEQ           R1, #0xA
440490:  B               loc_4404E0; jumptable 0044047A case 8
440492:  MOVS            R1, #3; jumptable 0044047A cases 2,6
440494:  CMP             R2, #0
440496:  IT EQ
440498:  MOVEQ           R1, #0xE
44049A:  B               loc_4404E0; jumptable 0044047A case 8
44049C:  MOVS            R1, #1; jumptable 0044047A case 1
44049E:  CMP             R2, #0
4404A0:  IT EQ
4404A2:  MOVEQ           R1, #0xB
4404A4:  B               loc_4404E0; jumptable 0044047A case 8
4404A6:  ALIGN 4
4404A8:  DCFS 500.0
4404AC:  DCFS 3.1416
4404B0:  DCFS 180.0
4404B4:  DCFS 0.9
4404B8:  DCFS -0.1
4404BC:  DCFS 0.6
4404C0:  DCFS -640.0
4404C4:  MOVS            R0, #4; jumptable 0044047A case 3
4404C6:  EOR.W           R0, R0, R2,LSL#2
4404CA:  ADDS            R1, R0, #5
4404CC:  B               loc_4404E0; jumptable 0044047A case 8
4404CE:  MOVS            R1, #0xC; jumptable 0044047A case 4
4404D0:  CMP             R2, #0
4404D2:  IT EQ
4404D4:  MOVEQ           R1, #7
4404D6:  B               loc_4404E0; jumptable 0044047A case 8
4404D8:  LSLS            R0, R0, #0x1C; jumptable 0044047A case 7
4404DA:  MOVS            R1, #0xE
4404DC:  AND.W           R1, R1, R0,ASR#31
4404E0:  LDR.W           R0, =(HudColour_ptr - 0x4404EA); jumptable 0044047A case 8
4404E4:  UXTB            R1, R1; unsigned __int8
4404E6:  ADD             R0, PC; HudColour_ptr
4404E8:  MOV             R0, R6; this
4404EA:  BLX             j__ZN11CHudColours12GetIntColourEh; CHudColours::GetIntColour(uchar)
4404EE:  MOV             R6, R0
4404F0:  LDRH.W          R0, [R8]
4404F4:  UBFX.W          R0, R0, #8, #2
4404F8:  CMP             R0, #3
4404FA:  BNE             loc_440504
4404FC:  LDR.W           R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x440504)
440500:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
440502:  B               loc_44050E
440504:  CMP             R0, #1
440506:  BNE             loc_44055C
440508:  LDR.W           R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x440510)
44050C:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
44050E:  LDR             R0, [R0]; CTheScripts::DbgFlag ...
440510:  LDRB            R0, [R0]; CTheScripts::DbgFlag
440512:  CBZ             R0, loc_44055C
440514:  LDR.W           R3, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x44051E)
440518:  ADD             R2, SP, #0xC8+var_68
44051A:  ADD             R3, PC; _ZN6CRadar13ms_RadarTraceE_ptr
44051C:  LDM             R2, {R0-R2}
44051E:  LDR             R3, [R3]; CRadar::ms_RadarTrace ...
440520:  ADD.W           R4, R3, R11,LSL#3
440524:  MOV             R3, R6
440526:  VLDR            S0, [R4,#0x18]
44052A:  VSTR            S0, [SP,#0xC8+var_C8]
44052E:  BLX             j__ZN6CRadar15ShowRadarMarkerE7CVectorjf; CRadar::ShowRadarMarker(CVector,uint,float)
440532:  VLDR            S0, =-0.1
440536:  VLDR            S2, [R4,#0x18]
44053A:  VADD.F32        S0, S2, S0
44053E:  VMOV.F32        S2, #1.0
440542:  VSTR            S0, [R4,#0x18]
440546:  VCMPE.F32       S0, S2
44054A:  VMRS            APSR_nzcv, FPSCR
44054E:  ITTTT LT
440550:  ADDLT.W         R0, R4, #0x18
440554:  MOVLT           R1, #0
440556:  MOVTLT          R1, #0x40A0
44055A:  STRLT           R1, [R0]
44055C:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x440564)
440560:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
440562:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
440564:  ADD.W           R0, R0, R11,LSL#3
440568:  LDR             R0, [R0,#0x20]; this
44056A:  CMP             R0, #0
44056C:  ITT NE
44056E:  ADDNE.W         R1, SP, #0xC8+var_68; CVector *
440572:  BLXNE           j__ZN10CEntryExit33GetPositionRelativeToOutsideWorldER7CVector; CEntryExit::GetPositionRelativeToOutsideWorld(CVector &)
440576:  LDRH.W          R0, [R8]
44057A:  TST.W           R0, #0x200
44057E:  BEQ.W           loc_44074E
440582:  LDR.W           R1, =(_ZN6CRadar12m_radarRangeE_ptr - 0x440592)
440586:  VMOV.F32        S22, #1.0
44058A:  VLDR            S2, [SP,#0xC8+var_68]
44058E:  ADD             R1, PC; _ZN6CRadar12m_radarRangeE_ptr
440590:  VLDR            S4, [SP,#0xC8+var_68+4]
440594:  LDR.W           R2, =(dword_994EE8 - 0x44059E)
440598:  LDR             R1, [R1]; CRadar::m_radarRange ...
44059A:  ADD             R2, PC; dword_994EE8
44059C:  VLDR            S0, [R1]
4405A0:  LDR.W           R1, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x4405AC)
4405A4:  VDIV.F32        S0, S22, S0
4405A8:  ADD             R1, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
4405AA:  LDR             R1, [R1]; CRadar::vec2DRadarOrigin ...
4405AC:  VLDR            S6, [R1]
4405B0:  VLDR            S8, [R1,#4]
4405B4:  VSUB.F32        S2, S2, S6
4405B8:  LDR.W           R1, =(dword_994EEC - 0x4405C8)
4405BC:  VSUB.F32        S4, S4, S8
4405C0:  VLDR            S6, [R2]
4405C4:  ADD             R1, PC; dword_994EEC
4405C6:  VMUL.F32        S2, S2, S0
4405CA:  VMUL.F32        S0, S4, S0
4405CE:  VLDR            S4, [R1]
4405D2:  LDR.W           R1, =(gMobileMenu_ptr - 0x4405DA)
4405D6:  ADD             R1, PC; gMobileMenu_ptr
4405D8:  LDR             R1, [R1]; gMobileMenu
4405DA:  VMUL.F32        S8, S4, S2
4405DE:  VMUL.F32        S10, S6, S0
4405E2:  VMUL.F32        S0, S4, S0
4405E6:  LDRB.W          R1, [R1,#(byte_6E00D8 - 0x6E006C)]
4405EA:  VMUL.F32        S2, S6, S2
4405EE:  CMP             R1, #0
4405F0:  VSUB.F32        S26, S10, S8
4405F4:  VADD.F32        S24, S2, S0
4405F8:  VMUL.F32        S0, S26, S26
4405FC:  VMUL.F32        S2, S24, S24
440600:  VADD.F32        S0, S2, S0
440604:  VSQRT.F32       S0, S0
440608:  BNE             loc_440620
44060A:  B.W             loc_3F667A
44060E:  VMRS            APSR_nzcv, FPSCR
440612:  BLE             loc_440620
440614:  VDIV.F32        S2, S22, S0
440618:  VMUL.F32        S26, S26, S2
44061C:  VMUL.F32        S24, S24, S2
440620:  CBZ             R1, loc_440644
440622:  LDR.W           R2, =(gMobileMenu_ptr - 0x44062A)
440626:  ADD             R2, PC; gMobileMenu_ptr
440628:  LDR             R2, [R2]; gMobileMenu
44062A:  VLDR            S4, [R2,#0x58]
44062E:  VLDR            S6, [R2,#0x5C]
440632:  VMUL.F32        S8, S24, S4
440636:  VLDR            S2, [R2,#0x60]
44063A:  VMUL.F32        S4, S26, S4
44063E:  VADD.F32        S18, S6, S8
440642:  B               loc_44069A
440644:  LDR.W           R2, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x44064C)
440648:  ADD             R2, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
44064A:  LDR             R2, [R2]; CTouchInterface::m_pWidgets ...
44064C:  LDR.W           R2, [R2,#(dword_6F3A18 - 0x6F3794)]
440650:  CBZ             R2, loc_4406B2
440652:  VLDR            S2, [R2,#0x20]
440656:  VMOV.F32        S14, #0.5
44065A:  VLDR            S6, [R2,#0x28]
44065E:  VLDR            S4, [R2,#0x24]
440662:  VSUB.F32        S10, S6, S2
440666:  VLDR            S8, [R2,#0x2C]
44066A:  VADD.F32        S2, S2, S6
44066E:  VSUB.F32        S12, S4, S8
440672:  VADD.F32        S4, S4, S8
440676:  VABS.F32        S10, S10
44067A:  VABS.F32        S12, S12
44067E:  VMUL.F32        S6, S24, S10
440682:  VMUL.F32        S10, S2, S14
440686:  VMUL.F32        S8, S26, S12
44068A:  VMUL.F32        S2, S4, S14
44068E:  VMUL.F32        S6, S6, S14
440692:  VMUL.F32        S4, S8, S14
440696:  VADD.F32        S18, S10, S6
44069A:  VSUB.F32        S20, S2, S4
44069E:  CBNZ            R1, loc_4406B6
4406A0:  B.W             loc_3F6662
4406A4:  VMRS            APSR_nzcv, FPSCR
4406A8:  BLE             loc_4406B6
4406AA:  ANDS.W          R0, R0, #4
4406AE:  BNE             loc_44074E
4406B0:  B               loc_4406B6
4406B2:  CMP             R1, #0
4406B4:  BEQ             loc_4406A0
4406B6:  LDR.W           R0, =(_ZN11CTheScripts14RadarZoomValueE_ptr - 0x4406BE)
4406BA:  ADD             R0, PC; _ZN11CTheScripts14RadarZoomValueE_ptr
4406BC:  LDR             R0, [R0]; CTheScripts::RadarZoomValue ...
4406BE:  LDRB            R0, [R0]; CTheScripts::RadarZoomValue
4406C0:  CBZ             R0, loc_4406E2
4406C2:  MOV.W           R0, #0xFFFFFFFF; int
4406C6:  MOVS            R1, #0; bool
4406C8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4406CC:  CBNZ            R0, loc_4406E2
4406CE:  LDRH.W          R0, [R8]
4406D2:  MOVS            R1, #0xB
4406D4:  AND.W           R1, R1, R0,LSR#10
4406D8:  ORR.W           R1, R1, #4
4406DC:  CMP             R1, #7
4406DE:  BNE.W           loc_440840
4406E2:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x4406EC)
4406E6:  LDR             R1, [SP,#0xC8+var_A0]
4406E8:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
4406EA:  CMP             R1, #0
4406EC:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
4406EE:  ADD.W           R5, R0, R11,LSL#3
4406F2:  LDRB.W          R0, [R5,#0x24]!
4406F6:  BEQ             loc_44074C
4406F8:  CBZ             R0, loc_44074E
4406FA:  LDR.W           R1, =(gMobileMenu_ptr - 0x440702)
4406FE:  ADD             R1, PC; gMobileMenu_ptr
440700:  LDR             R1, [R1]; gMobileMenu
440702:  LDRB.W          R1, [R1,#(byte_6E00D8 - 0x6E006C)]
440706:  CBZ             R1, loc_440736
440708:  LDRB.W          R1, [R8]
44070C:  LSLS            R1, R1, #0x1D
44070E:  BPL             loc_440736
440710:  LDR.W           R1, =(_ZN9CTheZones13ZonesRevealedE_ptr - 0x440718)
440714:  ADD             R1, PC; _ZN9CTheZones13ZonesRevealedE_ptr
440716:  LDR             R1, [R1]; CTheZones::ZonesRevealed ...
440718:  LDR             R1, [R1]; CTheZones::ZonesRevealed
44071A:  CMP             R1, #0x4F ; 'O'
44071C:  BHI             loc_440736
44071E:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x440726)
440722:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
440724:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
440726:  ADD.W           R1, R0, R11,LSL#3
44072A:  LDRD.W          R0, R1, [R1,#8]; float
44072E:  BLX             j__ZN9CTheZones30GetCurrentZoneLockedOrUnlockedEff; CTheZones::GetCurrentZoneLockedOrUnlocked(float,float)
440732:  CBZ             R0, loc_44074E
440734:  LDRB            R0, [R5]
440736:  VMOV            R1, S18; unsigned __int16
44073A:  LDR             R3, [SP,#0xC8+var_A4]
44073C:  VMOV            R2, S20; float
440740:  SXTB            R0, R0
440742:  UXTH            R0, R0; this
440744:  UXTB            R3, R3; float
440746:  BLX             j__ZN6CRadar15DrawRadarSpriteEtffh; CRadar::DrawRadarSprite(ushort,float,float,uchar)
44074A:  B               loc_44074E
44074C:  CBZ             R0, loc_44075C
44074E:  ADD             SP, SP, #0x70 ; 'p'
440750:  VPOP            {D8-D14}
440754:  ADD             SP, SP, #4
440756:  POP.W           {R8-R11}
44075A:  POP             {R4-R7,PC}
44075C:  CMP.W           R10, #1
440760:  BNE.W           loc_44088A
440764:  VMUL.F32        S0, S26, S26
440768:  VMUL.F32        S2, S24, S24
44076C:  VADD.F32        S0, S2, S0
440770:  VLDR            S2, =0.9
440774:  VSQRT.F32       S0, S0
440778:  VCMPE.F32       S0, S2
44077C:  VMRS            APSR_nzcv, FPSCR
440780:  BGT             loc_44074E
440782:  LDR.W           R0, =(gMobileMenu_ptr - 0x44078A)
440786:  ADD             R0, PC; gMobileMenu_ptr
440788:  LDR             R0, [R0]; gMobileMenu
44078A:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
44078E:  CMP             R0, #0
440790:  BNE             loc_44074E
440792:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x44079A)
440796:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
440798:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
44079A:  LDR.W           R0, [R0,#(dword_6F3A18 - 0x6F3794)]
44079E:  CMP             R0, #0
4407A0:  BEQ             loc_44074E
4407A2:  LDR.W           R1, =(_ZN6CRadar12m_radarRangeE_ptr - 0x4407B2)
4407A6:  ADD             R4, SP, #0xC8+var_88
4407A8:  VLDR            S16, [R0,#0x20]
4407AC:  MOVS            R2, #0; unsigned __int8
4407AE:  ADD             R1, PC; _ZN6CRadar12m_radarRangeE_ptr
4407B0:  VLDR            S22, [R0,#0x28]
4407B4:  MOVS            R0, #0x96
4407B6:  VLDR            S24, [R9,#0x20]
4407BA:  LDR             R1, [R1]; CRadar::m_radarRange ...
4407BC:  MOVS            R3, #0; unsigned __int8
4407BE:  STR             R0, [SP,#0xC8+var_C8]; unsigned __int8
4407C0:  MOV             R0, R4; this
4407C2:  VSTR            S20, [SP,#0xC8+var_94]
4407C6:  VLDR            S26, [R1]
4407CA:  MOVS            R1, #0; unsigned __int8
4407CC:  VSTR            S18, [SP,#0xC8+var_98]
4407D0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4407D4:  VSUB.F32        S0, S22, S16
4407D8:  VLDR            S2, =0.6
4407DC:  ADD             R0, SP, #0xC8+var_98
4407DE:  MOV             R2, R4
4407E0:  MOVS            R3, #0xF
4407E2:  VABS.F32        S0, S0
4407E6:  VDIV.F32        S0, S0, S26
4407EA:  VMUL.F32        S0, S24, S0
4407EE:  VMUL.F32        S16, S0, S2
4407F2:  VMOV            R1, S16
4407F6:  BLX             j__ZN9CSprite2d20DrawCircleAtNearClipERK9CVector2DfRK5CRGBAi; CSprite2d::DrawCircleAtNearClip(CVector2D const&,float,CRGBA const&,int)
4407FA:  LDR.W           R0, =(RsGlobal_ptr - 0x44080A)
4407FE:  ADD             R4, SP, #0xC8+var_88
440800:  VSTR            S20, [SP,#0xC8+var_94]
440804:  MOVS            R1, #0xDC; unsigned __int8
440806:  ADD             R0, PC; RsGlobal_ptr
440808:  MOVS            R2, #0xDC; unsigned __int8
44080A:  MOVS            R3, #0xDC; unsigned __int8
44080C:  LDR             R0, [R0]; RsGlobal
44080E:  VLDR            S0, [R0,#4]
440812:  MOVS            R0, #0xC8
440814:  VCVT.F32.S32    S20, S0
440818:  STR             R0, [SP,#0xC8+var_C8]; unsigned __int8
44081A:  MOV             R0, R4; this
44081C:  VSTR            S18, [SP,#0xC8+var_98]
440820:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
440824:  VLDR            S0, =-640.0
440828:  ADD             R0, SP, #0xC8+var_98
44082A:  MOV             R2, R4
44082C:  MOVS            R3, #0xF
44082E:  VDIV.F32        S0, S20, S0
440832:  VADD.F32        S0, S16, S0
440836:  VMOV            R1, S0
44083A:  BLX             j__ZN9CSprite2d20DrawCircleAtNearClipERK9CVector2DfRK5CRGBAi; CSprite2d::DrawCircleAtNearClip(CVector2D const&,float,CRGBA const&,int)
44083E:  B               loc_44074E
440840:  LDR             R1, [SP,#0xC8+var_A0]
440842:  CMP             R1, #0
440844:  BNE.W           loc_44074E
440848:  LSLS            R0, R0, #0x1B
44084A:  BMI             loc_440868
44084C:  VMUL.F32        S0, S26, S26
440850:  VMUL.F32        S2, S24, S24
440854:  VADD.F32        S0, S2, S0
440858:  VSQRT.F32       S0, S0
44085C:  B.W             loc_3F66CE
440860:  VMRS            APSR_nzcv, FPSCR
440864:  BGT.W           loc_44074E
440868:  LDR             R0, [SP,#0xC8+var_B4]
44086A:  CMP             R0, #1
44086C:  BNE.W           loc_440C86
440870:  LDR             R0, [R5,#0x14]
440872:  CMP             R0, #0
440874:  BEQ.W           loc_440C9C
440878:  LDRD.W          R2, R1, [R0,#0x10]; x
44087C:  EOR.W           R0, R2, #0x80000000; y
440880:  BLX             atan2f
440884:  VMOV            S16, R0
440888:  B               loc_440CA0
44088A:  LDR             R4, [SP,#0xC8+var_B0]
44088C:  CMP             R4, #1
44088E:  BNE             loc_4408A6
440890:  LDR.W           R0, =(gMobileMenu_ptr - 0x440898)
440894:  ADD             R0, PC; gMobileMenu_ptr
440896:  LDR             R0, [R0]; gMobileMenu
440898:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
44089C:  CMP             R0, #0
44089E:  BEQ.W           loc_4409BA
4408A2:  MOVS            R5, #0
4408A4:  B               loc_440A30
4408A6:  LDR             R0, [SP,#0xC8+var_A8]
4408A8:  MOVS            R1, #0
4408AA:  VLDR            S22, [SP,#0xC8+var_60]
4408AE:  MOVS            R5, #0
4408B0:  VMOV            S16, R0
4408B4:  ADD             R0, SP, #0xC8+var_88; int
4408B6:  BLX             j__Z29FindPlayerCentreOfWorldForMapi; FindPlayerCentreOfWorldForMap(int)
4408BA:  VMOV.F32        S0, #-2.0
4408BE:  VADD.F32        S2, S22, S0
4408C2:  VLDR            S0, [SP,#0xC8+var_80]
4408C6:  VCMPE.F32       S0, S2
4408CA:  VMRS            APSR_nzcv, FPSCR
4408CE:  BLT             loc_4408E6
4408D0:  VMOV.F32        S2, #4.0
4408D4:  MOVS            R5, #2
4408D6:  VADD.F32        S2, S22, S2
4408DA:  VCMPE.F32       S0, S2
4408DE:  VMRS            APSR_nzcv, FPSCR
4408E2:  IT GT
4408E4:  MOVGT           R5, #1
4408E6:  VCMPE.F32       S16, #0.0
4408EA:  VMRS            APSR_nzcv, FPSCR
4408EE:  BLE             loc_440962
4408F0:  LDR.W           R0, =(RsGlobal_ptr - 0x440904)
4408F4:  VMOV.F32        S0, #25.0
4408F8:  VLDR            S4, =448.0
4408FC:  ADD.W           R8, SP, #0xC8+var_9C
440900:  ADD             R0, PC; RsGlobal_ptr
440902:  MOVS            R1, #0xFF; unsigned __int8
440904:  MOVS            R2, #0; unsigned __int8
440906:  MOVS            R3, #0; unsigned __int8
440908:  LDR             R0, [R0]; RsGlobal
44090A:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
44090C:  VMOV            S2, R0
440910:  MOVS            R0, #0x64 ; 'd'
440912:  VCVT.F32.S32    S2, S2
440916:  STR             R0, [SP,#0xC8+var_C8]; unsigned __int8
440918:  MOV             R0, R8; this
44091A:  VDIV.F32        S0, S2, S0
44091E:  VDIV.F32        S2, S2, S4
440922:  VMUL.F32        S4, S20, S2
440926:  VMUL.F32        S0, S0, S16
44092A:  VMUL.F32        S2, S18, S2
44092E:  VADD.F32        S6, S4, S0
440932:  VSUB.F32        S8, S2, S0
440936:  VADD.F32        S2, S2, S0
44093A:  VSUB.F32        S0, S4, S0
44093E:  VSTR            S6, [SP,#0xC8+var_8C]
440942:  VSTR            S8, [SP,#0xC8+var_98]
440946:  VSTR            S2, [SP,#0xC8+var_90]
44094A:  VSTR            S0, [SP,#0xC8+var_94]
44094E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
440952:  LDR.W           R0, =(circleTex_ptr - 0x44095E)
440956:  ADD             R1, SP, #0xC8+var_98
440958:  MOV             R2, R8
44095A:  ADD             R0, PC; circleTex_ptr
44095C:  NOP
44095E:  NOP
440960:  NOP
440962:  VMOV            R0, S18; this
440966:  LDR.W           R2, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x440974)
44096A:  VMOV            R1, S20; float
44096E:  UXTB            R3, R5
440970:  ADD             R2, PC; _ZN6CRadar13ms_RadarTraceE_ptr
440972:  STR             R3, [SP,#0xC8+var_BC]; unsigned __int8
440974:  UXTB            R3, R6
440976:  LDR             R2, [R2]; CRadar::ms_RadarTrace ...
440978:  STR             R3, [SP,#0xC8+var_C0]; unsigned __int8
44097A:  ADD.W           R2, R2, R11,LSL#3
44097E:  LDRSH.W         R2, [R2,#0x1C]; float
440982:  UBFX.W          R3, R6, #8, #8
440986:  STR             R3, [SP,#0xC8+var_C4]; unsigned __int8
440988:  UBFX.W          R3, R6, #0x10, #8
44098C:  STR             R3, [SP,#0xC8+var_C8]; unsigned __int8
44098E:  LSRS            R3, R6, #0x18; unsigned int
440990:  BLX             j__ZN6CRadar24ShowRadarTraceWithHeightEffjhhhhh; CRadar::ShowRadarTraceWithHeight(float,float,uint,uchar,uchar,uchar,uchar,uchar)
440994:  LDR.W           R0, =(gMobileMenu_ptr - 0x44099C)
440998:  ADD             R0, PC; gMobileMenu_ptr
44099A:  LDR             R0, [R0]; gMobileMenu
44099C:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
4409A0:  MOVS            R1, #0
4409A2:  CMP             R0, #0
4409A4:  IT EQ
4409A6:  MOVEQ           R1, #1
4409A8:  ORRS.W          R0, R4, R1
4409AC:  BNE.W           loc_44074E
4409B0:  LDR             R1, [SP,#0xC8+var_AC]; unsigned __int8
4409B2:  MOVS            R0, #(stderr+1); this
4409B4:  BLX             j__ZN6CRadar19AddBlipToLegendListEhi; CRadar::AddBlipToLegendList(uchar,int)
4409B8:  B               loc_44074E
4409BA:  VLDR            S0, =500.0
4409BE:  MOVS            R5, #1
4409C0:  VCMPE.F32       S16, S0
4409C4:  VMRS            APSR_nzcv, FPSCR
4409C8:  BGE             loc_440A30
4409CA:  VMUL.F32        S0, S26, S26
4409CE:  VMUL.F32        S2, S24, S24
4409D2:  VADD.F32        S0, S2, S0
4409D6:  VLDR            S2, =0.9
4409DA:  VSQRT.F32       S0, S0
4409DE:  VCMPE.F32       S0, S2
4409E2:  VMRS            APSR_nzcv, FPSCR
4409E6:  BGE             loc_440A30
4409E8:  LDR             R0, [SP,#0xC8+var_A4]
4409EA:  MOVS            R1, #0xFF; unsigned __int8
4409EC:  MOVS            R2, #0xFF; unsigned __int8
4409EE:  MOVS            R3, #0xFF; unsigned __int8
4409F0:  UXTB            R0, R0
4409F2:  STR             R0, [SP,#0xC8+var_C8]; unsigned __int8
4409F4:  ADD             R0, SP, #0xC8+var_74; this
4409F6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4409FA:  VMOV            R1, S18
4409FE:  LDR.W           R3, =(_ZN6CRadar16RadarBlipSpritesE_ptr - 0x440A0E)
440A02:  VMOV            R2, S20
440A06:  MOV.W           R6, #0x3F800000
440A0A:  ADD             R3, PC; _ZN6CRadar16RadarBlipSpritesE_ptr
440A0C:  STRD.W          R6, R0, [SP,#0xC8+var_C8]
440A10:  MOVS            R5, #0
440A12:  LDR             R3, [R3]; CRadar::RadarBlipSprites ...
440A14:  ADD.W           R0, R3, #0xE0
440A18:  MOVS            R3, #0
440A1A:  BLX             j__ZN6CRadar23DrawRotatingRadarSpriteEP9CSprite2dffff5CRGBA; CRadar::DrawRotatingRadarSprite(CSprite2d *,float,float,float,float,CRGBA)
440A1E:  LDR.W           R0, =(gMobileMenu_ptr - 0x440A26)
440A22:  ADD             R0, PC; gMobileMenu_ptr
440A24:  LDR             R0, [R0]; gMobileMenu
440A26:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
440A2A:  CMP             R0, #0
440A2C:  IT EQ
440A2E:  MOVEQ           R5, #1
440A30:  LDR.W           R0, =(_ZN6CRadar12m_radarRangeE_ptr - 0x440A3E)
440A34:  CMP             R5, #1
440A36:  LDR.W           R1, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x440A44)
440A3A:  ADD             R0, PC; _ZN6CRadar12m_radarRangeE_ptr
440A3C:  LDR.W           R2, =(dword_994EE8 - 0x440A48)
440A40:  ADD             R1, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
440A42:  LDR             R0, [R0]; CRadar::m_radarRange ...
440A44:  ADD             R2, PC; dword_994EE8
440A46:  LDR             R1, [R1]; CRadar::vec2DRadarOrigin ...
440A48:  VLDR            S0, [R0]
440A4C:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x440A58)
440A50:  VDIV.F32        S0, S22, S0
440A54:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
440A56:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
440A58:  ADD.W           R0, R0, R11,LSL#3
440A5C:  VLDR            D16, [R0,#8]
440A60:  VLDR            S2, [R1]
440A64:  VSTR            D16, [SP,#0xC8+var_68]
440A68:  VLDR            S4, [R1,#4]
440A6C:  VLDR            S6, [SP,#0xC8+var_68]
440A70:  VLDR            S8, [SP,#0xC8+var_68+4]
440A74:  VSUB.F32        S2, S6, S2
440A78:  LDR.W           R1, =(dword_994EEC - 0x440A88)
440A7C:  VSUB.F32        S4, S8, S4
440A80:  VLDR            S6, [R2]
440A84:  ADD             R1, PC; dword_994EEC
440A86:  LDR             R0, [R0,#0x10]
440A88:  STR             R0, [SP,#0xC8+var_60]
440A8A:  VMUL.F32        S2, S2, S0
440A8E:  VMUL.F32        S0, S4, S0
440A92:  VLDR            S4, [R1]
440A96:  VMUL.F32        S8, S4, S2
440A9A:  VMUL.F32        S10, S6, S0
440A9E:  VMUL.F32        S0, S4, S0
440AA2:  VMUL.F32        S2, S6, S2
440AA6:  VSUB.F32        S24, S10, S8
440AAA:  VADD.F32        S16, S2, S0
440AAE:  BNE             loc_440AD6
440AB0:  VMUL.F32        S0, S24, S24
440AB4:  VMUL.F32        S2, S16, S16
440AB8:  VADD.F32        S0, S2, S0
440ABC:  VSQRT.F32       S0, S0
440AC0:  VCMPE.F32       S0, S22
440AC4:  VMRS            APSR_nzcv, FPSCR
440AC8:  BLE             loc_440AD6
440ACA:  VDIV.F32        S0, S22, S0
440ACE:  VMUL.F32        S24, S24, S0
440AD2:  VMUL.F32        S16, S16, S0
440AD6:  CMP             R5, #1
440AD8:  BNE             loc_440BB4
440ADA:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x440AE2)
440ADE:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
440AE0:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
440AE2:  LDR.W           R0, [R0,#(dword_6F3A18 - 0x6F3794)]
440AE6:  CBZ             R0, loc_440B34
440AE8:  VLDR            S0, [R0,#0x20]
440AEC:  VMOV.F32        S12, #0.5
440AF0:  VLDR            S4, [R0,#0x28]
440AF4:  VLDR            S2, [R0,#0x24]
440AF8:  VLDR            S6, [R0,#0x2C]
440AFC:  VSUB.F32        S10, S4, S0
440B00:  VADD.F32        S0, S0, S4
440B04:  VSUB.F32        S8, S2, S6
440B08:  VADD.F32        S2, S2, S6
440B0C:  VABS.F32        S10, S10
440B10:  VMUL.F32        S0, S0, S12
440B14:  VABS.F32        S8, S8
440B18:  VMUL.F32        S2, S2, S12
440B1C:  VMUL.F32        S4, S16, S10
440B20:  VMUL.F32        S6, S24, S8
440B24:  VMUL.F32        S4, S4, S12
440B28:  VMUL.F32        S6, S6, S12
440B2C:  VADD.F32        S18, S0, S4
440B30:  VSUB.F32        S20, S2, S6
440B34:  LDR.W           R0, =(byte_994ECC - 0x440B3C)
440B38:  ADD             R0, PC; byte_994ECC
440B3A:  LDRB            R0, [R0]
440B3C:  CMP             R0, #0
440B3E:  BNE.W           loc_44074E
440B42:  LDR.W           R0, =(_ZN6CRadar17airstrip_locationE_ptr - 0x440B50)
440B46:  MOVS            R3, #0xFF; unsigned __int8
440B48:  LDR.W           R1, =(airstrip_table_ptr - 0x440B56)
440B4C:  ADD             R0, PC; _ZN6CRadar17airstrip_locationE_ptr
440B4E:  LDR.W           R2, =(dword_994EC8 - 0x440B5A)
440B52:  ADD             R1, PC; airstrip_table_ptr
440B54:  LDR             R0, [R0]; CRadar::airstrip_location ...
440B56:  ADD             R2, PC; dword_994EC8
440B58:  LDR             R1, [R1]; airstrip_table
440B5A:  VLDR            S16, [R2]
440B5E:  MOVS            R2, #0xFF; unsigned __int8
440B60:  LDRB            R0, [R0]; CRadar::airstrip_location
440B62:  ADD.W           R0, R1, R0,LSL#4
440B66:  MOVS            R1, #0xFF; unsigned __int8
440B68:  VLDR            S22, [R0,#8]
440B6C:  LDR             R0, [SP,#0xC8+var_A4]
440B6E:  UXTB            R0, R0
440B70:  STR             R0, [SP,#0xC8+var_C8]; unsigned __int8
440B72:  ADD             R0, SP, #0xC8+var_7C; this
440B74:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
440B78:  VLDR            S0, =-90.0
440B7C:  VMOV            R1, S18
440B80:  VLDR            S2, =-3.1416
440B84:  VMOV            R2, S20
440B88:  VADD.F32        S0, S22, S0
440B8C:  LDR             R6, =(_ZN6CRadar16RadarBlipSpritesE_ptr - 0x440B96)
440B8E:  MOV.W           R5, #0x40000000
440B92:  ADD             R6, PC; _ZN6CRadar16RadarBlipSpritesE_ptr
440B94:  STRD.W          R5, R0, [SP,#0xC8+var_C8]
440B98:  LDR             R6, [R6]; CRadar::RadarBlipSprites ...
440B9A:  ADD.W           R0, R6, #0xE4
440B9E:  VMUL.F32        S0, S0, S2
440BA2:  VLDR            S2, =180.0
440BA6:  VDIV.F32        S0, S0, S2
440BAA:  VSUB.F32        S0, S0, S16
440BAE:  VMOV            R3, S0
440BB2:  B               loc_440DBC
440BB4:  LDR             R0, =(_ZN6CRadar17airstrip_locationE_ptr - 0x440BBE)
440BB6:  MOVS            R3, #0xFF; unsigned __int8
440BB8:  LDR             R2, =(airstrip_table_ptr - 0x440BC2)
440BBA:  ADD             R0, PC; _ZN6CRadar17airstrip_locationE_ptr
440BBC:  LDR             R1, =(gMobileMenu_ptr - 0x440BC6)
440BBE:  ADD             R2, PC; airstrip_table_ptr
440BC0:  LDR             R0, [R0]; CRadar::airstrip_location ...
440BC2:  ADD             R1, PC; gMobileMenu_ptr
440BC4:  LDR             R4, [R1]; gMobileMenu
440BC6:  MOVS            R1, #0xFF; unsigned __int8
440BC8:  LDRB            R5, [R0]; CRadar::airstrip_location
440BCA:  LDR             R0, [R2]; airstrip_table
440BCC:  MOVS            R2, #0xFF; unsigned __int8
440BCE:  VLDR            S18, [R4,#0x58]
440BD2:  ADD.W           R0, R0, R5,LSL#4
440BD6:  VLDR            S20, [R4,#0x5C]
440BDA:  VLDR            S22, [R4,#0x60]
440BDE:  VLDR            S26, [R0,#8]
440BE2:  LDR             R0, [SP,#0xC8+var_A4]
440BE4:  UXTB            R0, R0
440BE6:  STR             R0, [SP,#0xC8+var_C8]; unsigned __int8
440BE8:  ADD             R0, SP, #0xC8+var_78; this
440BEA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
440BEE:  VLDR            S0, =-90.0
440BF2:  CMP             R5, #1
440BF4:  VLDR            S2, =3.1416
440BF8:  VMUL.F32        S4, S24, S18
440BFC:  VADD.F32        S0, S26, S0
440C00:  LDR             R6, =(_ZN6CRadar16RadarBlipSpritesE_ptr - 0x440C18)
440C02:  IT EQ
440C04:  VMOVEQ.F32      S0, S26
440C08:  MOV.W           R5, #0x40000000
440C0C:  VMUL.F32        S0, S0, S2
440C10:  VLDR            S2, =180.0
440C14:  ADD             R6, PC; _ZN6CRadar16RadarBlipSpritesE_ptr
440C16:  STRD.W          R5, R0, [SP,#0xC8+var_C8]
440C1A:  LDR             R6, [R6]; CRadar::RadarBlipSprites ...
440C1C:  VSUB.F32        S4, S22, S4
440C20:  ADD.W           R0, R6, #0xE4
440C24:  VDIV.F32        S0, S0, S2
440C28:  VMUL.F32        S2, S16, S18
440C2C:  VMOV            R2, S4
440C30:  VMOV            R3, S0
440C34:  VADD.F32        S2, S20, S2
440C38:  VMOV            R1, S2
440C3C:  BLX             j__ZN6CRadar23DrawRotatingRadarSpriteEP9CSprite2dffff5CRGBA; CRadar::DrawRotatingRadarSprite(CSprite2d *,float,float,float,float,CRGBA)
440C40:  LDRB.W          R0, [R4,#(byte_6E00D8 - 0x6E006C)]
440C44:  CMP             R0, #0
440C46:  BEQ.W           loc_44074E
440C4A:  LDR             R2, =(_ZN6CRadar13MapLegendListE_ptr - 0x440C54)
440C4C:  MOVS            R1, #0
440C4E:  MOVS            R3, #0
440C50:  ADD             R2, PC; _ZN6CRadar13MapLegendListE_ptr
440C52:  LDR             R2, [R2]; CRadar::MapLegendList ...
440C54:  LDRH.W          R6, [R2,R1,LSL#1]
440C58:  ADDS            R1, #1
440C5A:  CMP             R6, #0x39 ; '9'
440C5C:  IT EQ
440C5E:  MOVEQ           R3, #1
440C60:  CMP             R1, #0xFA
440C62:  BNE             loc_440C54
440C64:  LDR             R4, [SP,#0xC8+var_B0]
440C66:  LSLS            R1, R3, #0x18
440C68:  BNE.W           loc_4409A0
440C6C:  LDR             R1, =(_ZN6CRadar16MapLegendCounterE_ptr - 0x440C76)
440C6E:  MOVS            R6, #0x39 ; '9'
440C70:  LDR             R2, =(_ZN6CRadar13MapLegendListE_ptr - 0x440C78)
440C72:  ADD             R1, PC; _ZN6CRadar16MapLegendCounterE_ptr
440C74:  ADD             R2, PC; _ZN6CRadar13MapLegendListE_ptr
440C76:  LDR             R1, [R1]; CRadar::MapLegendCounter ...
440C78:  LDR             R2, [R2]; CRadar::MapLegendList ...
440C7A:  LDRH            R3, [R1]; CRadar::MapLegendCounter
440C7C:  STRH.W          R6, [R2,R3,LSL#1]
440C80:  ADDS            R2, R3, #1
440C82:  STRH            R2, [R1]; CRadar::MapLegendCounter
440C84:  B               loc_4409A0
440C86:  VLDR            S16, =0.0
440C8A:  B               loc_440CA0
440C8C:  DCFS 448.0
440C90:  DCFS 500.0
440C94:  DCFS 0.9
440C98:  DCD _ZN6CRadar13ms_RadarTraceE_ptr - 0x43FEF8
440C9C:  VLDR            S16, [R5,#0x10]
440CA0:  ADD             R0, SP, #0xC8+var_98; int
440CA2:  MOVS            R1, #0
440CA4:  VLDR            S22, [SP,#0xC8+var_60]
440CA8:  BLX             j__Z29FindPlayerCentreOfWorldForMapi; FindPlayerCentreOfWorldForMap(int)
440CAC:  VMOV.F32        S0, #-2.0
440CB0:  VADD.F32        S2, S22, S0
440CB4:  VLDR            S0, [SP,#0xC8+var_90]
440CB8:  VCMPE.F32       S0, S2
440CBC:  VMRS            APSR_nzcv, FPSCR
440CC0:  BGE             loc_440CE0
440CC2:  LDR             R0, =(_ZN11CTheScripts24RadarShowBlipOnAllLevelsE_ptr - 0x440CC8)
440CC4:  ADD             R0, PC; _ZN11CTheScripts24RadarShowBlipOnAllLevelsE_ptr
440CC6:  LDR             R0, [R0]; CTheScripts::RadarShowBlipOnAllLevels ...
440CC8:  LDRB            R0, [R0]; CTheScripts::RadarShowBlipOnAllLevels
440CCA:  CMP             R0, #0
440CCC:  BEQ.W           loc_44074E
440CD0:  VMOV            R0, S18
440CD4:  LDR             R2, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x440CE0)
440CD6:  VMOV            R1, S20
440CDA:  MOVS            R3, #0
440CDC:  ADD             R2, PC; _ZN6CRadar13ms_RadarTraceE_ptr
440CDE:  B               loc_440D0E
440CE0:  VMOV.F32        S2, #4.0
440CE4:  VADD.F32        S2, S22, S2
440CE8:  VCMPE.F32       S0, S2
440CEC:  VMRS            APSR_nzcv, FPSCR
440CF0:  BLE             loc_440D32
440CF2:  LDR             R0, =(_ZN11CTheScripts24RadarShowBlipOnAllLevelsE_ptr - 0x440CF8)
440CF4:  ADD             R0, PC; _ZN11CTheScripts24RadarShowBlipOnAllLevelsE_ptr
440CF6:  LDR             R0, [R0]; CTheScripts::RadarShowBlipOnAllLevels ...
440CF8:  LDRB            R0, [R0]; CTheScripts::RadarShowBlipOnAllLevels
440CFA:  CMP             R0, #0
440CFC:  BEQ.W           loc_44074E
440D00:  LDR             R2, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x440D10)
440D02:  VMOV            R0, S18; this
440D06:  VMOV            R1, S20; float
440D0A:  MOVS            R3, #1
440D0C:  ADD             R2, PC; _ZN6CRadar13ms_RadarTraceE_ptr
440D0E:  LDR             R2, [R2]; CRadar::ms_RadarTrace ...
440D10:  ADD.W           R2, R2, R11,LSL#3
440D14:  LDRSH.W         R2, [R2,#0x1C]; float
440D18:  STR             R3, [SP,#0xC8+var_BC]; unsigned __int8
440D1A:  UXTB            R3, R6
440D1C:  STR             R3, [SP,#0xC8+var_C0]; unsigned __int8
440D1E:  UBFX.W          R3, R6, #8, #8
440D22:  STR             R3, [SP,#0xC8+var_C4]; unsigned __int8
440D24:  UBFX.W          R3, R6, #0x10, #8
440D28:  STR             R3, [SP,#0xC8+var_C8]; unsigned __int8
440D2A:  LSRS            R3, R6, #0x18; unsigned int
440D2C:  BLX             j__ZN6CRadar24ShowRadarTraceWithHeightEffjhhhhh; CRadar::ShowRadarTraceWithHeight(float,float,uint,uchar,uchar,uchar,uchar,uchar)
440D30:  B               loc_44074E
440D32:  LDR             R0, =(TheCamera_ptr - 0x440D38)
440D34:  ADD             R0, PC; TheCamera_ptr
440D36:  LDR             R0, [R0]; TheCamera
440D38:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
440D3C:  ADD.W           R1, R1, R1,LSL#5
440D40:  ADD.W           R0, R0, R1,LSL#4
440D44:  LDRH.W          R0, [R0,#0x17E]
440D48:  CMP             R0, #1
440D4A:  BNE             loc_440D76
440D4C:  MOVS            R0, #0xFF
440D4E:  LSRS            R1, R6, #0x18; unsigned __int8
440D50:  STR             R0, [SP,#0xC8+var_C8]; unsigned __int8
440D52:  UBFX.W          R2, R6, #0x10, #8; unsigned __int8
440D56:  UBFX.W          R3, R6, #8, #8; unsigned __int8
440D5A:  ADD             R0, SP, #0xC8+var_6C; this
440D5C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
440D60:  VLDR            S0, =3.1416
440D64:  VMOV            R1, S18
440D68:  LDR             R6, =(_ZN6CRadar16RadarBlipSpritesE_ptr - 0x440D76)
440D6A:  VMOV            R2, S20
440D6E:  VADD.F32        S0, S16, S0
440D72:  ADD             R6, PC; _ZN6CRadar16RadarBlipSpritesE_ptr
440D74:  B               loc_440DAA
440D76:  LDR             R0, =(dword_994EC8 - 0x440D7E)
440D78:  LSRS            R1, R6, #0x18; unsigned __int8
440D7A:  ADD             R0, PC; dword_994EC8
440D7C:  VLDR            S22, [R0]
440D80:  MOVS            R0, #0xFF
440D82:  STR             R0, [SP,#0xC8+var_C8]; unsigned __int8
440D84:  UBFX.W          R2, R6, #0x10, #8; unsigned __int8
440D88:  UBFX.W          R3, R6, #8, #8; unsigned __int8
440D8C:  ADD             R0, SP, #0xC8+var_70; this
440D8E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
440D92:  VLDR            S0, =3.1416
440D96:  VMOV            R1, S18
440D9A:  VMOV            R2, S20
440D9E:  LDR             R6, =(_ZN6CRadar16RadarBlipSpritesE_ptr - 0x440DA8)
440DA0:  VADD.F32        S0, S22, S0
440DA4:  ADD             R6, PC; _ZN6CRadar16RadarBlipSpritesE_ptr
440DA6:  VSUB.F32        S0, S16, S0
440DAA:  VMOV            R3, S0
440DAE:  LDR             R6, [R6]; CRadar::RadarBlipSprites ...
440DB0:  MOV.W           R5, #0x3F800000
440DB4:  STRD.W          R5, R0, [SP,#0xC8+var_C8]
440DB8:  ADD.W           R0, R6, #8
440DBC:  BLX             j__ZN6CRadar23DrawRotatingRadarSpriteEP9CSprite2dffff5CRGBA; CRadar::DrawRotatingRadarSprite(CSprite2d *,float,float,float,float,CRGBA)
440DC0:  B               loc_44074E
