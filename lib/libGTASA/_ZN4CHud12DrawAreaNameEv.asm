; =========================================================
; Game Engine Function: _ZN4CHud12DrawAreaNameEv
; Address            : 0x43801C - 0x438514
; =========================================================

43801C:  PUSH            {R4,R5,R7,LR}
43801E:  ADD             R7, SP, #8
438020:  VPUSH           {D8-D13}
438024:  SUB             SP, SP, #0x10
438026:  LDR.W           R0, =(_ZN4CHud11m_pZoneNameE_ptr - 0x43802E)
43802A:  ADD             R0, PC; _ZN4CHud11m_pZoneNameE_ptr
43802C:  LDR             R0, [R0]; CHud::m_pZoneName ...
43802E:  LDR             R0, [R0]; CHud::m_pZoneName
438030:  CMP             R0, #0
438032:  BEQ.W           loc_438492; jumptable 0043813E case 0
438036:  LDR.W           R1, =(_ZN4CHud15m_pLastZoneNameE_ptr - 0x43803E)
43803A:  ADD             R1, PC; _ZN4CHud15m_pLastZoneNameE_ptr
43803C:  LDR             R1, [R1]; CHud::m_pLastZoneName ...
43803E:  LDR             R2, [R1]; CHud::m_pLastZoneName
438040:  CMP             R0, R2
438042:  BEQ             loc_4380D8
438044:  LDR.W           R1, =(_ZN4CHud11m_ZoneStateE_ptr - 0x43804C)
438048:  ADD             R1, PC; _ZN4CHud11m_ZoneStateE_ptr
43804A:  LDR             R1, [R1]; CHud::m_ZoneState ...
43804C:  LDR             R1, [R1]; CHud::m_ZoneState
43804E:  CMP             R1, #4; switch 5 cases
438050:  BHI             def_438052; jumptable 00438052 default case
438052:  TBB.W           [PC,R1]; switch jump
438056:  DCB 3; jump table for switch statement
438057:  DCB 0x57
438058:  DCB 0x48
438059:  DCB 0x5E
43805A:  DCB 0x4F
43805B:  ALIGN 2
43805C:  LDR.W           R1, =(_ZN11CTheScripts18bPlayerIsOffTheMapE_ptr - 0x438064); jumptable 00438052 case 0
438060:  ADD             R1, PC; _ZN11CTheScripts18bPlayerIsOffTheMapE_ptr
438062:  LDR             R1, [R1]; CTheScripts::bPlayerIsOffTheMap ...
438064:  LDRB            R1, [R1]; CTheScripts::bPlayerIsOffTheMap
438066:  CBNZ            R1, loc_438074
438068:  LDR.W           R1, =(_ZN11CTheScripts11bDisplayHudE_ptr - 0x438070)
43806C:  ADD             R1, PC; _ZN11CTheScripts11bDisplayHudE_ptr
43806E:  LDR             R1, [R1]; CTheScripts::bDisplayHud ...
438070:  LDRB            R1, [R1]; CTheScripts::bDisplayHud
438072:  CBNZ            R1, loc_438086
438074:  LDR.W           R1, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x43807C)
438078:  ADD             R1, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
43807A:  LDR             R1, [R1]; CEntryExitManager::ms_exitEnterState ...
43807C:  LDR             R1, [R1]; CEntryExitManager::ms_exitEnterState
43807E:  SUBS            R1, #1
438080:  CMP             R1, #1
438082:  BHI.W           loc_438510
438086:  LDR.W           R5, =(_ZN4CHud14m_VehicleStateE_ptr - 0x438096)
43808A:  MOV.W           R12, #0
43808E:  LDR.W           R2, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x43809C)
438092:  ADD             R5, PC; _ZN4CHud14m_VehicleStateE_ptr
438094:  LDR.W           R1, =(_ZN4CHud15m_ZoneNameTimerE_ptr - 0x4380A6)
438098:  ADD             R2, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
43809A:  LDR.W           R3, =(_ZN4CHud13m_ZoneToPrintE_ptr - 0x4380AA)
43809E:  LDR.W           R4, =(_ZN4CHud11m_ZoneStateE_ptr - 0x4380AC)
4380A2:  ADD             R1, PC; _ZN4CHud15m_ZoneNameTimerE_ptr
4380A4:  LDR             R5, [R5]; CHud::m_VehicleState ...
4380A6:  ADD             R3, PC; _ZN4CHud13m_ZoneToPrintE_ptr
4380A8:  ADD             R4, PC; _ZN4CHud11m_ZoneStateE_ptr
4380AA:  LDR             R2, [R2]; CHud::m_ZoneFadeTimer ...
4380AC:  LDR             R1, [R1]; CHud::m_ZoneNameTimer ...
4380AE:  LDR             R5, [R5]; CHud::m_VehicleState
4380B0:  LDR             R3, [R3]; CHud::m_ZoneToPrint ...
4380B2:  LDR             R4, [R4]; CHud::m_ZoneState ...
4380B4:  STR.W           R12, [R2]; CHud::m_ZoneFadeTimer
4380B8:  SUBS            R2, R5, #1
4380BA:  STR.W           R12, [R1]; CHud::m_ZoneNameTimer
4380BE:  MOVS            R1, #2
4380C0:  CMP             R2, #1
4380C2:  STR             R1, [R4]; CHud::m_ZoneState
4380C4:  STR             R0, [R3]; CHud::m_ZoneToPrint
4380C6:  BHI             def_438052; jumptable 00438052 default case
4380C8:  LDR.W           R1, =(_ZN4CHud14m_VehicleStateE_ptr - 0x4380D2)
4380CC:  MOVS            R2, #3
4380CE:  ADD             R1, PC; _ZN4CHud14m_VehicleStateE_ptr
4380D0:  LDR             R1, [R1]; CHud::m_VehicleState ...
4380D2:  STR             R2, [R1]; CHud::m_VehicleState
4380D4:  MOVS            R1, #2
4380D6:  B               def_438052; jumptable 00438052 default case
4380D8:  LDR.W           R0, =(_ZN4CHud11m_ZoneStateE_ptr - 0x4380E0)
4380DC:  ADD             R0, PC; _ZN4CHud11m_ZoneStateE_ptr
4380DE:  LDR             R0, [R0]; CHud::m_ZoneState ...
4380E0:  LDR             R1, [R0]; CHud::m_ZoneState
4380E2:  MOV             R0, R2
4380E4:  B               loc_438134
4380E6:  LDR.W           R1, =(_ZN4CHud15m_ZoneNameTimerE_ptr - 0x4380F2); jumptable 00438052 case 2
4380EA:  LDR.W           R2, =(_ZN4CHud11m_ZoneStateE_ptr - 0x4380F4)
4380EE:  ADD             R1, PC; _ZN4CHud15m_ZoneNameTimerE_ptr
4380F0:  ADD             R2, PC; _ZN4CHud11m_ZoneStateE_ptr
4380F2:  B               loc_43811E
4380F4:  LDR.W           R1, =(_ZN4CHud15m_ZoneNameTimerE_ptr - 0x4380FE); jumptable 00438052 case 4
4380F8:  MOVS            R2, #0
4380FA:  ADD             R1, PC; _ZN4CHud15m_ZoneNameTimerE_ptr
4380FC:  LDR             R1, [R1]; CHud::m_ZoneNameTimer ...
4380FE:  STR             R2, [R1]; CHud::m_ZoneNameTimer
438100:  MOVS            R1, #4
438102:  B               def_438052; jumptable 00438052 default case
438104:  LDR.W           R1, =(_ZN4CHud15m_ZoneNameTimerE_ptr - 0x438110); jumptable 00438052 case 1
438108:  LDR.W           R2, =(_ZN4CHud11m_ZoneStateE_ptr - 0x438112)
43810C:  ADD             R1, PC; _ZN4CHud15m_ZoneNameTimerE_ptr
43810E:  ADD             R2, PC; _ZN4CHud11m_ZoneStateE_ptr
438110:  B               loc_43811E
438112:  LDR.W           R1, =(_ZN4CHud15m_ZoneNameTimerE_ptr - 0x43811E); jumptable 00438052 case 3
438116:  LDR.W           R2, =(_ZN4CHud11m_ZoneStateE_ptr - 0x438120)
43811A:  ADD             R1, PC; _ZN4CHud15m_ZoneNameTimerE_ptr
43811C:  ADD             R2, PC; _ZN4CHud11m_ZoneStateE_ptr
43811E:  LDR             R1, [R1]; CHud::m_ZoneNameTimer ...
438120:  MOVS            R3, #0
438122:  LDR             R2, [R2]; CHud::m_ZoneState ...
438124:  STR             R3, [R1]; CHud::m_ZoneNameTimer
438126:  MOVS            R1, #4
438128:  STR             R1, [R2]; CHud::m_ZoneState
43812A:  LDR.W           R2, =(_ZN4CHud15m_pLastZoneNameE_ptr - 0x438132); jumptable 00438052 default case
43812E:  ADD             R2, PC; _ZN4CHud15m_pLastZoneNameE_ptr
438130:  LDR             R2, [R2]; CHud::m_pLastZoneName ...
438132:  STR             R0, [R2]; CHud::m_pLastZoneName
438134:  VLDR            S16, =255.0
438138:  CMP             R1, #4; switch 5 cases
43813A:  BHI.W           def_43813E; jumptable 0043813E default case
43813E:  TBH.W           [PC,R1,LSL#1]; switch jump
438142:  DCW 0x1A8; jump table for switch statement
438144:  DCW 5
438146:  DCW 0x22
438148:  DCW 0x5D
43814A:  DCW 0x89
43814C:  LDR.W           R0, =(_ZN4CHud15m_ZoneNameTimerE_ptr - 0x438158); jumptable 0043813E case 1
438150:  LDR.W           R1, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x43815A)
438154:  ADD             R0, PC; _ZN4CHud15m_ZoneNameTimerE_ptr
438156:  ADD             R1, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
438158:  LDR             R0, [R0]; CHud::m_ZoneNameTimer ...
43815A:  LDR             R1, [R1]; CHud::m_ZoneFadeTimer ...
43815C:  LDR             R2, [R0]; CHud::m_ZoneNameTimer
43815E:  MOV.W           R0, #0x3E8
438162:  STR             R0, [R1]; CHud::m_ZoneFadeTimer
438164:  MOVW            R1, #0xBB9
438168:  CMP             R2, R1
43816A:  BLT.W           def_43813E; jumptable 0043813E default case
43816E:  LDR.W           R1, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x43817A)
438172:  LDR.W           R2, =(_ZN4CHud11m_ZoneStateE_ptr - 0x43817C)
438176:  ADD             R1, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
438178:  ADD             R2, PC; _ZN4CHud11m_ZoneStateE_ptr
43817A:  LDR             R1, [R1]; CHud::m_ZoneFadeTimer ...
43817C:  LDR             R2, [R2]; CHud::m_ZoneState ...
43817E:  STR             R0, [R1]; CHud::m_ZoneFadeTimer
438180:  MOVS            R0, #3
438182:  STR             R0, [R2]; CHud::m_ZoneState
438184:  B               def_43813E; jumptable 0043813E default case
438186:  LDR.W           R0, =(TheCamera_ptr - 0x43818E); jumptable 0043813E case 2
43818A:  ADD             R0, PC; TheCamera_ptr
43818C:  LDR             R0, [R0]; TheCamera ; this
43818E:  BLX             j__ZN7CCamera9GetFadingEv; CCamera::GetFading(void)
438192:  CBNZ            R0, loc_4381A6
438194:  LDR.W           R0, =(TheCamera_ptr - 0x43819C)
438198:  ADD             R0, PC; TheCamera_ptr
43819A:  LDR             R0, [R0]; TheCamera ; this
43819C:  BLX             j__ZN7CCamera19GetScreenFadeStatusEv; CCamera::GetScreenFadeStatus(void)
4381A0:  CMP             R0, #2
4381A2:  BNE.W           loc_4384A0
4381A6:  LDR.W           R0, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x4381AE)
4381AA:  ADD             R0, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
4381AC:  LDR             R0, [R0]; CHud::m_ZoneFadeTimer ...
4381AE:  LDR             R0, [R0]; CHud::m_ZoneFadeTimer
4381B0:  CMP.W           R0, #0x3E8
4381B4:  BLE             loc_4381D0
4381B6:  LDR.W           R0, =(_ZN4CHud11m_ZoneStateE_ptr - 0x4381C4)
4381BA:  MOVS            R2, #1
4381BC:  LDR.W           R1, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x4381C6)
4381C0:  ADD             R0, PC; _ZN4CHud11m_ZoneStateE_ptr
4381C2:  ADD             R1, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
4381C4:  LDR             R0, [R0]; CHud::m_ZoneState ...
4381C6:  LDR             R1, [R1]; CHud::m_ZoneFadeTimer ...
4381C8:  STR             R2, [R0]; CHud::m_ZoneState
4381CA:  MOV.W           R0, #0x3E8
4381CE:  STR             R0, [R1]; CHud::m_ZoneFadeTimer
4381D0:  LDR.W           R0, =(TheCamera_ptr - 0x4381D8)
4381D4:  ADD             R0, PC; TheCamera_ptr
4381D6:  LDR             R0, [R0]; TheCamera ; this
4381D8:  BLX             j__ZN7CCamera19GetScreenFadeStatusEv; CCamera::GetScreenFadeStatus(void)
4381DC:  CMP             R0, #2
4381DE:  BNE             loc_4382B2
4381E0:  LDR.W           R0, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x4381F0)
4381E4:  MOV.W           R2, #0x3E8
4381E8:  LDR.W           R1, =(_ZN4CHud11m_ZoneStateE_ptr - 0x4381F2)
4381EC:  ADD             R0, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
4381EE:  ADD             R1, PC; _ZN4CHud11m_ZoneStateE_ptr
4381F0:  LDR             R0, [R0]; CHud::m_ZoneFadeTimer ...
4381F2:  LDR             R1, [R1]; CHud::m_ZoneState ...
4381F4:  STR             R2, [R0]; CHud::m_ZoneFadeTimer
4381F6:  MOVS            R0, #3
4381F8:  STR             R0, [R1]; CHud::m_ZoneState
4381FA:  B               def_43813E; jumptable 0043813E default case
4381FC:  LDR             R0, =(TheCamera_ptr - 0x438202); jumptable 0043813E case 3
4381FE:  ADD             R0, PC; TheCamera_ptr
438200:  LDR             R0, [R0]; TheCamera ; this
438202:  BLX             j__ZN7CCamera9GetFadingEv; CCamera::GetFading(void)
438206:  CBNZ            R0, loc_438218
438208:  LDR             R0, =(TheCamera_ptr - 0x43820E)
43820A:  ADD             R0, PC; TheCamera_ptr
43820C:  LDR             R0, [R0]; TheCamera ; this
43820E:  BLX             j__ZN7CCamera19GetScreenFadeStatusEv; CCamera::GetScreenFadeStatus(void)
438212:  CMP             R0, #2
438214:  BNE.W           loc_4384D8
438218:  LDR             R0, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x43821E)
43821A:  ADD             R0, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
43821C:  LDR             R0, [R0]; CHud::m_ZoneFadeTimer ...
43821E:  LDR             R0, [R0]; CHud::m_ZoneFadeTimer
438220:  CMP.W           R0, #0xFFFFFFFF
438224:  BGT             loc_438238
438226:  LDR             R0, =(_ZN4CHud11m_ZoneStateE_ptr - 0x438230)
438228:  MOVS            R2, #0
43822A:  LDR             R1, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x438232)
43822C:  ADD             R0, PC; _ZN4CHud11m_ZoneStateE_ptr
43822E:  ADD             R1, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
438230:  LDR             R0, [R0]; CHud::m_ZoneState ...
438232:  LDR             R1, [R1]; CHud::m_ZoneFadeTimer ...
438234:  STR             R2, [R0]; CHud::m_ZoneState
438236:  STR             R2, [R1]; CHud::m_ZoneFadeTimer
438238:  LDR             R0, =(TheCamera_ptr - 0x43823E)
43823A:  ADD             R0, PC; TheCamera_ptr
43823C:  LDR             R0, [R0]; TheCamera ; this
43823E:  BLX             j__ZN7CCamera19GetScreenFadeStatusEv; CCamera::GetScreenFadeStatus(void)
438242:  CMP             R0, #2
438244:  BNE             loc_4382B8
438246:  LDR             R0, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x438250)
438248:  MOV.W           R1, #0x3E8
43824C:  ADD             R0, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
43824E:  LDR             R0, [R0]; CHud::m_ZoneFadeTimer ...
438250:  STR             R1, [R0]; CHud::m_ZoneFadeTimer
438252:  B               def_43813E; jumptable 0043813E default case
438254:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x43825E); jumptable 0043813E case 4
438256:  VLDR            S0, =50.0
43825A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
43825C:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
43825E:  VLDR            S2, [R1]
438262:  LDR             R1, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x43826C)
438264:  VDIV.F32        S2, S2, S0
438268:  ADD             R1, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
43826A:  LDR             R2, [R1]; CHud::m_ZoneFadeTimer ...
43826C:  LDR             R1, [R2]; CHud::m_ZoneFadeTimer
43826E:  VLDR            S0, =1000.0
438272:  VMUL.F32        S2, S2, S0
438276:  VCVT.U32.F32    S2, S2
43827A:  VMOV            R3, S2
43827E:  SUBS            R1, R1, R3
438280:  STR             R1, [R2]; CHud::m_ZoneFadeTimer
438282:  CMP.W           R1, #0xFFFFFFFF
438286:  BGT             loc_4382A4
438288:  LDR             R1, =(_ZN4CHud11m_ZoneStateE_ptr - 0x438294)
43828A:  MOVS            R5, #2
43828C:  LDR             R2, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x438296)
43828E:  LDR             R3, =(_ZN4CHud13m_ZoneToPrintE_ptr - 0x438298)
438290:  ADD             R1, PC; _ZN4CHud11m_ZoneStateE_ptr
438292:  ADD             R2, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
438294:  ADD             R3, PC; _ZN4CHud13m_ZoneToPrintE_ptr
438296:  LDR             R1, [R1]; CHud::m_ZoneState ...
438298:  LDR             R2, [R2]; CHud::m_ZoneFadeTimer ...
43829A:  LDR             R3, [R3]; CHud::m_ZoneToPrint ...
43829C:  STR             R5, [R1]; CHud::m_ZoneState
43829E:  MOVS            R1, #0
4382A0:  STR             R1, [R2]; CHud::m_ZoneFadeTimer
4382A2:  STR             R0, [R3]; CHud::m_ZoneToPrint
4382A4:  VMOV            S2, R1
4382A8:  VCVT.F32.S32    S2, S2
4382AC:  VDIV.F32        S0, S2, S0
4382B0:  B               loc_4382CE
4382B2:  LDR             R0, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x4382B8)
4382B4:  ADD             R0, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
4382B6:  B               loc_4382BC
4382B8:  LDR             R0, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x4382BE)
4382BA:  ADD             R0, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
4382BC:  LDR             R0, [R0]; CHud::m_ZoneFadeTimer ...
4382BE:  VLDR            S2, =1000.0
4382C2:  VLDR            S0, [R0]
4382C6:  VCVT.F32.S32    S0, S0
4382CA:  VDIV.F32        S0, S0, S2
4382CE:  VLDR            S2, =255.0
4382D2:  VMUL.F32        S16, S0, S2
4382D6:  LDR             R0, =(_ZN4CHud9m_MessageE_ptr - 0x4382DC); jumptable 0043813E default case
4382D8:  ADD             R0, PC; _ZN4CHud9m_MessageE_ptr
4382DA:  LDR             R0, [R0]; CHud::m_Message ...
4382DC:  LDRH            R0, [R0]; CHud::m_Message
4382DE:  CMP             R0, #0
4382E0:  BNE.W           loc_438488
4382E4:  LDR             R0, =(BigMessageInUse_ptr - 0x4382EA)
4382E6:  ADD             R0, PC; BigMessageInUse_ptr
4382E8:  LDR             R0, [R0]; BigMessageInUse
4382EA:  VLDR            S0, [R0,#4]
4382EE:  VCMP.F32        S0, #0.0
4382F2:  VMRS            APSR_nzcv, FPSCR
4382F6:  ITTT EQ
4382F8:  VLDREQ          S0, [R0,#8]
4382FC:  VCMPEQ.F32      S0, #0.0
438300:  VMRSEQ          APSR_nzcv, FPSCR
438304:  BNE.W           loc_438488
438308:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x438312)
43830A:  VLDR            S0, =50.0
43830E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
438310:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
438312:  VLDR            S2, [R0]
438316:  LDR             R0, =(_ZN4CHud15m_ZoneNameTimerE_ptr - 0x438320)
438318:  VDIV.F32        S0, S2, S0
43831C:  ADD             R0, PC; _ZN4CHud15m_ZoneNameTimerE_ptr
43831E:  LDR             R0, [R0]; CHud::m_ZoneNameTimer ...
438320:  LDR             R1, [R0]; CHud::m_ZoneNameTimer
438322:  VLDR            S2, =1000.0
438326:  VMUL.F32        S0, S0, S2
43832A:  VCVT.U32.F32    S0, S0
43832E:  VMOV            R2, S0
438332:  ADD             R1, R2; unsigned __int8
438334:  STR             R1, [R0]; CHud::m_ZoneNameTimer
438336:  MOVS            R0, #(stderr+1); this
438338:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
43833C:  MOVS            R0, #0; this
43833E:  MOVS            R1, #0; unsigned __int8
438340:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
438344:  LDR             R0, =(RsGlobal_ptr - 0x43834E)
438346:  VLDR            S2, =448.0
43834A:  ADD             R0, PC; RsGlobal_ptr
43834C:  LDR             R4, [R0]; RsGlobal
43834E:  LDR             R0, [R4,#(dword_9FC904 - 0x9FC8FC)]
438350:  VMOV            S0, R0
438354:  VCVT.F32.S32    S0, S0
438358:  VDIV.F32        S0, S0, S2
43835C:  VLDR            S2, =1.2
438360:  VMUL.F32        S0, S0, S2
438364:  VMOV            R0, S0; this
438368:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
43836C:  MOVS            R0, #(stderr+2); this
43836E:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
438372:  MOVS            R0, #(stderr+2); this
438374:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
438378:  LDR             R0, [R4,#(dword_9FC900 - 0x9FC8FC)]
43837A:  VLDR            S2, =640.0
43837E:  VMOV            S0, R0
438382:  VCVT.F32.S32    S0, S0
438386:  VDIV.F32        S0, S0, S2
43838A:  VLDR            S2, =180.0
43838E:  VMUL.F32        S0, S0, S2
438392:  VMOV            R0, S0; this
438396:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
43839A:  VCVT.U32.F32    S0, S16
43839E:  ADD             R0, SP, #0x48+var_3C; this
4383A0:  MOVS            R1, #0; unsigned __int8
4383A2:  MOVS            R2, #0; unsigned __int8
4383A4:  MOVS            R3, #0; unsigned __int8
4383A6:  VMOV            R4, S0
4383AA:  STR             R4, [SP,#0x48+var_48]; unsigned __int8
4383AC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4383B0:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
4383B4:  MOVS            R0, #0; this
4383B6:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
4383BA:  LDR             R0, =(_ZN9CGangWars15bGangWarsActiveE_ptr - 0x4383C0)
4383BC:  ADD             R0, PC; _ZN9CGangWars15bGangWarsActiveE_ptr
4383BE:  LDR             R0, [R0]; CGangWars::bGangWarsActive ...
4383C0:  LDRB            R0, [R0]; CGangWars::bGangWarsActive
4383C2:  CBZ             R0, loc_4383EC
4383C4:  LDR             R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x4383CA)
4383C6:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
4383C8:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
4383CA:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
4383CC:  CMP             R0, #0
4383CE:  ITT NE
4383D0:  LDRBNE          R1, [R0,#0xB]; unsigned __int8
4383D2:  CMPNE           R1, #0
4383D4:  BEQ             loc_4383EC
4383D6:  LDRB            R2, [R0,#0xC]; unsigned __int8
4383D8:  CMP             R2, #0
4383DA:  ITT NE
4383DC:  LDRBNE          R3, [R0,#0xD]; unsigned __int8
4383DE:  CMPNE           R3, #0
4383E0:  BEQ             loc_4383EC
4383E2:  ADD             R0, SP, #0x48+var_40; this
4383E4:  STR             R4, [SP,#0x48+var_48]; unsigned __int8
4383E6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4383EA:  B               loc_438400
4383EC:  LDR             R0, =(HudColour_ptr - 0x4383F8)
4383EE:  ADD             R5, SP, #0x48+var_44
4383F0:  MOVS            R2, #3; unsigned __int8
4383F2:  MOV             R3, R4
4383F4:  ADD             R0, PC; HudColour_ptr
4383F6:  LDR             R1, [R0]; HudColour ; unsigned __int8
4383F8:  MOV             R0, R5; this
4383FA:  BLX             j__ZN11CHudColours6GetRGBEhh; CHudColours::GetRGB(uchar,uchar)
4383FE:  MOV             R0, R5
438400:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
438404:  LDR             R0, =(RsGlobal_ptr - 0x438416)
438406:  VMOV.F32        S6, #10.0
43840A:  VLDR            S4, =0.0
43840E:  VMOV.F32        S10, #30.0
438412:  ADD             R0, PC; RsGlobal_ptr
438414:  LDR             R0, [R0]; RsGlobal
438416:  VLDR            S0, [R0,#4]
43841A:  VLDR            S2, [R0,#8]
43841E:  MOVS            R0, #0; this
438420:  VCVT.F32.S32    S16, S0
438424:  VLDR            S0, =-640.0
438428:  VCVT.F32.S32    S18, S2
43842C:  VLDR            S2, =-448.0
438430:  VDIV.F32        S0, S16, S0
438434:  VDIV.F32        S2, S18, S2
438438:  VMUL.F32        S8, S18, S4
43843C:  VMUL.F32        S20, S16, S4
438440:  VMUL.F32        S22, S0, S6
438444:  VMUL.F32        S26, S2, S10
438448:  VSUB.F32        S24, S18, S8
43844C:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
438450:  VMOV            S0, R0
438454:  LDR             R2, =(_ZN4CHud13m_ZoneToPrintE_ptr - 0x438462)
438456:  VSUB.F32        S2, S16, S20
43845A:  VADD.F32        S4, S16, S22
43845E:  ADD             R2, PC; _ZN4CHud13m_ZoneToPrintE_ptr
438460:  VSUB.F32        S0, S24, S0
438464:  VADD.F32        S6, S18, S26
438468:  LDR             R2, [R2]; CHud::m_ZoneToPrint ...
43846A:  LDR             R2, [R2]; CFont *
43846C:  VMIN.F32        D1, D2, D1
438470:  VMIN.F32        D0, D3, D0
438474:  VMOV            R0, S2; this
438478:  VMOV            R1, S0; float
43847C:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
438480:  MOVS            R0, #0; this
438482:  BLX             j__ZN5CFont8SetSlantEf; CFont::SetSlant(float)
438486:  B               loc_438492; jumptable 0043813E case 0
438488:  LDR             R0, =(_ZN4CHud11m_ZoneStateE_ptr - 0x438490)
43848A:  MOVS            R1, #3
43848C:  ADD             R0, PC; _ZN4CHud11m_ZoneStateE_ptr
43848E:  LDR             R0, [R0]; CHud::m_ZoneState ...
438490:  STR             R1, [R0]; CHud::m_ZoneState
438492:  ADD             SP, SP, #0x10; jumptable 0043813E case 0
438494:  VPOP            {D8-D13}
438498:  POP             {R4,R5,R7,PC}
43849A:  ALIGN 4
43849C:  DCFS 255.0
4384A0:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4384AA)
4384A2:  VLDR            S0, =50.0
4384A6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4384A8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4384AA:  VLDR            S2, [R0]
4384AE:  LDR             R0, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x4384B8)
4384B0:  VDIV.F32        S0, S2, S0
4384B4:  ADD             R0, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
4384B6:  LDR             R1, [R0]; CHud::m_ZoneFadeTimer ...
4384B8:  LDR             R0, [R1]; CHud::m_ZoneFadeTimer
4384BA:  VLDR            S2, =1000.0
4384BE:  VMUL.F32        S0, S0, S2
4384C2:  VCVT.U32.F32    S0, S0
4384C6:  VMOV            R2, S0
4384CA:  ADD             R0, R2
4384CC:  STR             R0, [R1]; CHud::m_ZoneFadeTimer
4384CE:  CMP.W           R0, #0x3E8
4384D2:  BGT.W           loc_4381B6
4384D6:  B               loc_4381D0
4384D8:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4384E2)
4384DA:  VLDR            S0, =50.0
4384DE:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4384E0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4384E2:  VLDR            S2, [R0]
4384E6:  LDR             R0, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x4384F0)
4384E8:  VDIV.F32        S0, S2, S0
4384EC:  ADD             R0, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
4384EE:  LDR             R1, [R0]; CHud::m_ZoneFadeTimer ...
4384F0:  LDR             R0, [R1]; CHud::m_ZoneFadeTimer
4384F2:  VLDR            S2, =1000.0
4384F6:  VMUL.F32        S0, S0, S2
4384FA:  VCVT.U32.F32    S0, S0
4384FE:  VMOV            R2, S0
438502:  SUBS            R0, R0, R2
438504:  STR             R0, [R1]; CHud::m_ZoneFadeTimer
438506:  CMP.W           R0, #0xFFFFFFFF
43850A:  BGT.W           loc_438238
43850E:  B               loc_438226
438510:  MOVS            R1, #0
438512:  B               def_438052; jumptable 00438052 default case
