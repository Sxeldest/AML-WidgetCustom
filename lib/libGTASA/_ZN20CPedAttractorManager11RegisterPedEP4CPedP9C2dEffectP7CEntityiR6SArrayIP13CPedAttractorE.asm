; =========================================================
; Game Engine Function: _ZN20CPedAttractorManager11RegisterPedEP4CPedP9C2dEffectP7CEntityiR6SArrayIP13CPedAttractorE
; Address            : 0x4A9FF0 - 0x4AA6B6
; =========================================================

4A9FF0:  PUSH            {R4-R7,LR}
4A9FF2:  ADD             R7, SP, #0xC
4A9FF4:  PUSH.W          {R8-R11}
4A9FF8:  SUB             SP, SP, #0x24
4A9FFA:  LDR.W           R9, [R7,#arg_4]
4A9FFE:  MOV             R8, R1
4AA000:  LDR.W           R0, [R9,#4]
4AA004:  CMP             R0, #1
4AA006:  BLT             loc_4AA024
4AA008:  LDR.W           R1, [R9,#8]
4AA00C:  MOVS            R6, #0
4AA00E:  LDR.W           R5, [R1,R6,LSL#2]
4AA012:  LDR             R4, [R5,#4]
4AA014:  CMP             R4, R2
4AA016:  ITT EQ
4AA018:  LDREQ           R4, [R5,#8]
4AA01A:  CMPEQ           R4, R3
4AA01C:  BEQ             loc_4AA0EA
4AA01E:  ADDS            R6, #1
4AA020:  CMP             R6, R0
4AA022:  BLT             loc_4AA00E
4AA024:  LDRB.W          R0, [R2,#0x34]
4AA028:  CMP             R0, #9; switch 10 cases
4AA02A:  BHI             def_4AA030; jumptable 004AA030 default case
4AA02C:  LDR.W           R12, [R7,#arg_0]
4AA030:  TBH.W           [PC,R0,LSL#1]; switch jump
4AA034:  DCW 0xA; jump table for switch statement
4AA036:  DCW 0x61
4AA038:  DCW 0xAC
4AA03A:  DCW 0xF9
4AA03C:  DCW 0x146
4AA03E:  DCW 0x194
4AA040:  DCW 0x1DD
4AA042:  DCW 0x226
4AA044:  DCW 0x26F
4AA046:  DCW 0x2B8
4AA048:  LDR.W           R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AA052); jumptable 004AA030 case 0
4AA04C:  MOVS            R6, #0
4AA04E:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AA050:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AA052:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AA054:  LDRD.W          LR, R5, [R0,#8]
4AA058:  ADDS            R5, #1
4AA05A:  STR             R5, [R0,#0xC]
4AA05C:  CMP             R5, LR
4AA05E:  BNE             loc_4AA06A
4AA060:  MOVS            R5, #0
4AA062:  LSLS            R1, R6, #0x1F
4AA064:  STR             R5, [R0,#0xC]
4AA066:  BNE             loc_4AA098
4AA068:  MOVS            R6, #1
4AA06A:  LDR             R4, [R0,#4]
4AA06C:  LDRSB           R1, [R4,R5]
4AA06E:  CMP.W           R1, #0xFFFFFFFF
4AA072:  BGT             loc_4AA058
4AA074:  AND.W           R1, R1, #0x7F
4AA078:  STRB            R1, [R4,R5]
4AA07A:  LDR             R1, [R0,#4]
4AA07C:  LDR             R6, [R0,#0xC]
4AA07E:  LDRB            R5, [R1,R6]
4AA080:  AND.W           R4, R5, #0x80
4AA084:  ADDS            R5, #1
4AA086:  AND.W           R5, R5, #0x7F
4AA08A:  ORRS            R5, R4
4AA08C:  STRB            R5, [R1,R6]
4AA08E:  MOVS            R6, #0xEC
4AA090:  LDR             R1, [R0]
4AA092:  LDR             R0, [R0,#0xC]
4AA094:  MLA.W           R5, R0, R6, R1
4AA098:  MOVW            R0, #0xCCCD
4AA09C:  MOVW            LR, #0x999A
4AA0A0:  MOVW            R10, #0xCCCD
4AA0A4:  MOVW            R11, #0x8000
4AA0A8:  MOVW            R1, #0x6000
4AA0AC:  MOVT            R0, #0x3DCC
4AA0B0:  MOVT            LR, #0x3E19
4AA0B4:  MOVT            R10, #0x3E4C
4AA0B8:  MOVT            R11, #0x453B
4AA0BC:  MOVT            R1, #0x46EA
4AA0C0:  MOV.W           R6, #0x3F800000
4AA0C4:  MOVS            R4, #5
4AA0C6:  STRD.W          R4, R6, [SP,#0x40+var_40]; int
4AA0CA:  STRD.W          R1, R11, [SP,#0x40+var_38]; float
4AA0CE:  MOV             R1, R2; C2dEffect *
4AA0D0:  STRD.W          R10, LR, [SP,#0x40+var_30]; float
4AA0D4:  MOV             R2, R3; CEntity *
4AA0D6:  STRD.W          R0, R0, [SP,#0x40+var_28]; float
4AA0DA:  MOV             R0, R5; this
4AA0DC:  MOV             R3, R12; int
4AA0DE:  BLX             j__ZN13CPedAttractorC2EP9C2dEffectP7CEntityiifffffff; CPedAttractor::CPedAttractor(C2dEffect *,CEntity *,int,int,float,float,float,float,float,float,float)
4AA0E2:  LDR.W           R0, =(_ZTV16CPedAtmAttractor_ptr - 0x4AA0EA)
4AA0E6:  ADD             R0, PC; _ZTV16CPedAtmAttractor_ptr
4AA0E8:  B               loc_4AA634
4AA0EA:  CMP             R5, #0
4AA0EC:  BNE.W           loc_4AA6A4
4AA0F0:  B               loc_4AA024
4AA0F2:  MOVS            R5, #0; jumptable 004AA030 default case
4AA0F4:  B               loc_4AA6AC
4AA0F6:  LDR.W           R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AA100); jumptable 004AA030 case 1
4AA0FA:  MOVS            R6, #0
4AA0FC:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AA0FE:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AA100:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AA102:  LDRD.W          LR, R5, [R0,#8]
4AA106:  ADDS            R5, #1
4AA108:  STR             R5, [R0,#0xC]
4AA10A:  CMP             R5, LR
4AA10C:  BNE             loc_4AA118
4AA10E:  MOVS            R5, #0
4AA110:  LSLS            R1, R6, #0x1F
4AA112:  STR             R5, [R0,#0xC]
4AA114:  BNE             loc_4AA146
4AA116:  MOVS            R6, #1
4AA118:  LDR             R4, [R0,#4]
4AA11A:  LDRSB           R1, [R4,R5]
4AA11C:  CMP.W           R1, #0xFFFFFFFF
4AA120:  BGT             loc_4AA106
4AA122:  AND.W           R1, R1, #0x7F
4AA126:  STRB            R1, [R4,R5]
4AA128:  LDR             R1, [R0,#4]
4AA12A:  LDR             R6, [R0,#0xC]
4AA12C:  LDRB            R5, [R1,R6]
4AA12E:  AND.W           R4, R5, #0x80
4AA132:  ADDS            R5, #1
4AA134:  AND.W           R5, R5, #0x7F
4AA138:  ORRS            R5, R4
4AA13A:  STRB            R5, [R1,R6]
4AA13C:  MOVS            R6, #0xEC
4AA13E:  LDR             R1, [R0]
4AA140:  LDR             R0, [R0,#0xC]
4AA142:  MLA.W           R5, R0, R6, R1
4AA146:  MOVW            R0, #0xCCCD
4AA14A:  MOVW            R10, #0x8000
4AA14E:  MOVW            R4, #0x6000
4AA152:  MOV.W           R1, #0x3F800000
4AA156:  MOVS            R6, #1
4AA158:  MOVT            R0, #0x3DCC
4AA15C:  STRD.W          R6, R1, [SP,#0x40+var_40]; int
4AA160:  MOV.W           LR, #0x3E000000
4AA164:  MOVT            R10, #0x453B
4AA168:  MOVT            R4, #0x46EA
4AA16C:  ADD             R1, SP, #0x40+var_38
4AA16E:  STM.W           R1, {R4,R10,LR}
4AA172:  MOV             R1, R2; C2dEffect *
4AA174:  MOV             R2, R3; CEntity *
4AA176:  STRD.W          R0, R0, [SP,#0x40+var_2C]; float
4AA17A:  MOV             R3, R12; int
4AA17C:  STR             R0, [SP,#0x40+var_24]; float
4AA17E:  MOV             R0, R5; this
4AA180:  BLX             j__ZN13CPedAttractorC2EP9C2dEffectP7CEntityiifffffff; CPedAttractor::CPedAttractor(C2dEffect *,CEntity *,int,int,float,float,float,float,float,float,float)
4AA184:  LDR.W           R0, =(_ZTV17CPedSeatAttractor_ptr - 0x4AA18C)
4AA188:  ADD             R0, PC; _ZTV17CPedSeatAttractor_ptr
4AA18A:  B               loc_4AA634
4AA18C:  LDR.W           R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AA196); jumptable 004AA030 case 2
4AA190:  MOVS            R6, #0
4AA192:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AA194:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AA196:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AA198:  LDRD.W          LR, R5, [R0,#8]
4AA19C:  ADDS            R5, #1
4AA19E:  STR             R5, [R0,#0xC]
4AA1A0:  CMP             R5, LR
4AA1A2:  BNE             loc_4AA1AE
4AA1A4:  MOVS            R5, #0
4AA1A6:  LSLS            R1, R6, #0x1F
4AA1A8:  STR             R5, [R0,#0xC]
4AA1AA:  BNE             loc_4AA1DC
4AA1AC:  MOVS            R6, #1
4AA1AE:  LDR             R4, [R0,#4]
4AA1B0:  LDRSB           R1, [R4,R5]
4AA1B2:  CMP.W           R1, #0xFFFFFFFF
4AA1B6:  BGT             loc_4AA19C
4AA1B8:  AND.W           R1, R1, #0x7F
4AA1BC:  STRB            R1, [R4,R5]
4AA1BE:  LDR             R1, [R0,#4]
4AA1C0:  LDR             R6, [R0,#0xC]
4AA1C2:  LDRB            R5, [R1,R6]
4AA1C4:  AND.W           R4, R5, #0x80
4AA1C8:  ADDS            R5, #1
4AA1CA:  AND.W           R5, R5, #0x7F
4AA1CE:  ORRS            R5, R4
4AA1D0:  STRB            R5, [R1,R6]
4AA1D2:  MOVS            R6, #0xEC
4AA1D4:  LDR             R1, [R0]
4AA1D6:  LDR             R0, [R0,#0xC]
4AA1D8:  MLA.W           R5, R0, R6, R1
4AA1DC:  MOVW            R0, #0xCCCD
4AA1E0:  MOVW            LR, #0xCCCD
4AA1E4:  MOVW            R10, #0x8000
4AA1E8:  MOVW            R4, #0x6000
4AA1EC:  MOV.W           R1, #0x3F800000
4AA1F0:  MOVS            R6, #5
4AA1F2:  STRD.W          R6, R1, [SP,#0x40+var_40]; int
4AA1F6:  MOVT            R0, #0x3DCC
4AA1FA:  MOVT            LR, #0x3E4C
4AA1FE:  MOVT            R10, #0x453B
4AA202:  MOVT            R4, #0x46EA
4AA206:  ADD             R1, SP, #0x40+var_38
4AA208:  STM.W           R1, {R4,R10,LR}
4AA20C:  MOV             R1, R2; C2dEffect *
4AA20E:  MOV             R2, R3; CEntity *
4AA210:  STRD.W          R0, R0, [SP,#0x40+var_2C]; float
4AA214:  MOV             R3, R12; int
4AA216:  STR             R0, [SP,#0x40+var_24]; float
4AA218:  MOV             R0, R5; this
4AA21A:  BLX             j__ZN13CPedAttractorC2EP9C2dEffectP7CEntityiifffffff; CPedAttractor::CPedAttractor(C2dEffect *,CEntity *,int,int,float,float,float,float,float,float,float)
4AA21E:  LDR.W           R0, =(_ZTV17CPedStopAttractor_ptr - 0x4AA226)
4AA222:  ADD             R0, PC; _ZTV17CPedStopAttractor_ptr
4AA224:  B               loc_4AA634
4AA226:  LDR.W           R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AA230); jumptable 004AA030 case 3
4AA22A:  MOVS            R6, #0
4AA22C:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AA22E:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AA230:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AA232:  LDRD.W          LR, R5, [R0,#8]
4AA236:  ADDS            R5, #1
4AA238:  STR             R5, [R0,#0xC]
4AA23A:  CMP             R5, LR
4AA23C:  BNE             loc_4AA248
4AA23E:  MOVS            R5, #0
4AA240:  LSLS            R1, R6, #0x1F
4AA242:  STR             R5, [R0,#0xC]
4AA244:  BNE             loc_4AA276
4AA246:  MOVS            R6, #1
4AA248:  LDR             R4, [R0,#4]
4AA24A:  LDRSB           R1, [R4,R5]
4AA24C:  CMP.W           R1, #0xFFFFFFFF
4AA250:  BGT             loc_4AA236
4AA252:  AND.W           R1, R1, #0x7F
4AA256:  STRB            R1, [R4,R5]
4AA258:  LDR             R1, [R0,#4]
4AA25A:  LDR             R6, [R0,#0xC]
4AA25C:  LDRB            R5, [R1,R6]
4AA25E:  AND.W           R4, R5, #0x80
4AA262:  ADDS            R5, #1
4AA264:  AND.W           R5, R5, #0x7F
4AA268:  ORRS            R5, R4
4AA26A:  STRB            R5, [R1,R6]
4AA26C:  MOVS            R6, #0xEC
4AA26E:  LDR             R1, [R0]
4AA270:  LDR             R0, [R0,#0xC]
4AA272:  MLA.W           R5, R0, R6, R1
4AA276:  MOVW            R0, #0xCCCD
4AA27A:  MOVW            LR, #0xCCCD
4AA27E:  MOVW            R10, #0x8000
4AA282:  MOVW            R4, #0x6000
4AA286:  MOV.W           R1, #0x3F800000
4AA28A:  MOVS            R6, #5
4AA28C:  STRD.W          R6, R1, [SP,#0x40+var_40]; int
4AA290:  MOVT            R0, #0x3DCC
4AA294:  MOVT            LR, #0x3E4C
4AA298:  MOVT            R10, #0x453B
4AA29C:  MOVT            R4, #0x46EA
4AA2A0:  ADD             R1, SP, #0x40+var_38
4AA2A2:  STM.W           R1, {R4,R10,LR}
4AA2A6:  MOV             R1, R2; C2dEffect *
4AA2A8:  MOV             R2, R3; CEntity *
4AA2AA:  STRD.W          R0, R0, [SP,#0x40+var_2C]; float
4AA2AE:  MOV             R3, R12; int
4AA2B0:  STR             R0, [SP,#0x40+var_24]; float
4AA2B2:  MOV             R0, R5; this
4AA2B4:  BLX             j__ZN13CPedAttractorC2EP9C2dEffectP7CEntityiifffffff; CPedAttractor::CPedAttractor(C2dEffect *,CEntity *,int,int,float,float,float,float,float,float,float)
4AA2B8:  LDR.W           R0, =(_ZTV18CPedPizzaAttractor_ptr - 0x4AA2C0)
4AA2BC:  ADD             R0, PC; _ZTV18CPedPizzaAttractor_ptr
4AA2BE:  B               loc_4AA634
4AA2C0:  LDR.W           R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AA2CA); jumptable 004AA030 case 4
4AA2C4:  MOVS            R6, #0
4AA2C6:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AA2C8:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AA2CA:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AA2CC:  LDRD.W          LR, R5, [R0,#8]
4AA2D0:  ADDS            R5, #1
4AA2D2:  STR             R5, [R0,#0xC]
4AA2D4:  CMP             R5, LR
4AA2D6:  BNE             loc_4AA2E2
4AA2D8:  MOVS            R5, #0
4AA2DA:  LSLS            R1, R6, #0x1F
4AA2DC:  STR             R5, [R0,#0xC]
4AA2DE:  BNE             loc_4AA310
4AA2E0:  MOVS            R6, #1
4AA2E2:  LDR             R4, [R0,#4]
4AA2E4:  LDRSB           R1, [R4,R5]
4AA2E6:  CMP.W           R1, #0xFFFFFFFF
4AA2EA:  BGT             loc_4AA2D0
4AA2EC:  AND.W           R1, R1, #0x7F
4AA2F0:  STRB            R1, [R4,R5]
4AA2F2:  LDR             R1, [R0,#4]
4AA2F4:  LDR             R6, [R0,#0xC]
4AA2F6:  LDRB            R5, [R1,R6]
4AA2F8:  AND.W           R4, R5, #0x80
4AA2FC:  ADDS            R5, #1
4AA2FE:  AND.W           R5, R5, #0x7F
4AA302:  ORRS            R5, R4
4AA304:  STRB            R5, [R1,R6]
4AA306:  MOVS            R6, #0xEC
4AA308:  LDR             R1, [R0]
4AA30A:  LDR             R0, [R0,#0xC]
4AA30C:  MLA.W           R5, R0, R6, R1
4AA310:  MOVW            R0, #0xCCCD
4AA314:  MOVW            LR, #0xF5C3
4AA318:  MOVW            R11, #0x8000
4AA31C:  MOVW            R1, #0x6000
4AA320:  MOVT            R0, #0x3DCC
4AA324:  MOVT            LR, #0x40C8
4AA328:  MOV.W           R10, #0x3F000000
4AA32C:  MOVT            R11, #0x453B
4AA330:  MOVT            R1, #0x46EA
4AA334:  MOV.W           R6, #0x3F800000
4AA338:  MOVS            R4, #5
4AA33A:  STRD.W          R4, R6, [SP,#0x40+var_40]; int
4AA33E:  STRD.W          R1, R11, [SP,#0x40+var_38]; float
4AA342:  MOV             R1, R2; C2dEffect *
4AA344:  STRD.W          R10, LR, [SP,#0x40+var_30]; float
4AA348:  MOV             R2, R3; CEntity *
4AA34A:  STRD.W          R0, R0, [SP,#0x40+var_28]; float
4AA34E:  MOV             R0, R5; this
4AA350:  MOV             R3, R12; int
4AA352:  BLX             j__ZN13CPedAttractorC2EP9C2dEffectP7CEntityiifffffff; CPedAttractor::CPedAttractor(C2dEffect *,CEntity *,int,int,float,float,float,float,float,float,float)
4AA356:  LDR             R0, =(_ZTV20CPedShelterAttractor_ptr - 0x4AA35C)
4AA358:  ADD             R0, PC; _ZTV20CPedShelterAttractor_ptr
4AA35A:  B               loc_4AA634
4AA35C:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AA364); jumptable 004AA030 case 5
4AA35E:  MOVS            R6, #0
4AA360:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AA362:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AA364:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AA366:  LDRD.W          LR, R5, [R0,#8]
4AA36A:  ADDS            R5, #1
4AA36C:  STR             R5, [R0,#0xC]
4AA36E:  CMP             R5, LR
4AA370:  BNE             loc_4AA37C
4AA372:  MOVS            R5, #0
4AA374:  LSLS            R1, R6, #0x1F
4AA376:  STR             R5, [R0,#0xC]
4AA378:  BNE             loc_4AA3AA
4AA37A:  MOVS            R6, #1
4AA37C:  LDR             R4, [R0,#4]
4AA37E:  LDRSB           R1, [R4,R5]
4AA380:  CMP.W           R1, #0xFFFFFFFF
4AA384:  BGT             loc_4AA36A
4AA386:  AND.W           R1, R1, #0x7F
4AA38A:  STRB            R1, [R4,R5]
4AA38C:  LDR             R1, [R0,#4]
4AA38E:  LDR             R6, [R0,#0xC]
4AA390:  LDRB            R5, [R1,R6]
4AA392:  AND.W           R4, R5, #0x80
4AA396:  ADDS            R5, #1
4AA398:  AND.W           R5, R5, #0x7F
4AA39C:  ORRS            R5, R4
4AA39E:  STRB            R5, [R1,R6]
4AA3A0:  MOVS            R6, #0xEC
4AA3A2:  LDR             R1, [R0]
4AA3A4:  LDR             R0, [R0,#0xC]
4AA3A6:  MLA.W           R5, R0, R6, R1
4AA3AA:  MOVW            R0, #0xCCCD
4AA3AE:  MOVW            R10, #0x8000
4AA3B2:  MOVW            R4, #0x6000
4AA3B6:  MOV.W           R1, #0x3F800000
4AA3BA:  MOVS            R6, #1
4AA3BC:  MOVT            R0, #0x3DCC
4AA3C0:  STRD.W          R6, R1, [SP,#0x40+var_40]; int
4AA3C4:  MOV.W           LR, #0x3E000000
4AA3C8:  MOVT            R10, #0x453B
4AA3CC:  MOVT            R4, #0x46EA
4AA3D0:  ADD             R1, SP, #0x40+var_38
4AA3D2:  STM.W           R1, {R4,R10,LR}
4AA3D6:  MOV             R1, R2; C2dEffect *
4AA3D8:  MOV             R2, R3; CEntity *
4AA3DA:  STRD.W          R0, R0, [SP,#0x40+var_2C]; float
4AA3DE:  MOV             R3, R12; int
4AA3E0:  STR             R0, [SP,#0x40+var_24]; float
4AA3E2:  MOV             R0, R5; this
4AA3E4:  BLX             j__ZN13CPedAttractorC2EP9C2dEffectP7CEntityiifffffff; CPedAttractor::CPedAttractor(C2dEffect *,CEntity *,int,int,float,float,float,float,float,float,float)
4AA3E8:  LDR             R0, =(_ZTV26CPedTriggerScriptAttractor_ptr - 0x4AA3EE)
4AA3EA:  ADD             R0, PC; _ZTV26CPedTriggerScriptAttractor_ptr
4AA3EC:  B               loc_4AA634
4AA3EE:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AA3F6); jumptable 004AA030 case 6
4AA3F0:  MOVS            R6, #0
4AA3F2:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AA3F4:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AA3F6:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AA3F8:  LDRD.W          LR, R5, [R0,#8]
4AA3FC:  ADDS            R5, #1
4AA3FE:  STR             R5, [R0,#0xC]
4AA400:  CMP             R5, LR
4AA402:  BNE             loc_4AA40E
4AA404:  MOVS            R5, #0
4AA406:  LSLS            R1, R6, #0x1F
4AA408:  STR             R5, [R0,#0xC]
4AA40A:  BNE             loc_4AA43C
4AA40C:  MOVS            R6, #1
4AA40E:  LDR             R4, [R0,#4]
4AA410:  LDRSB           R1, [R4,R5]
4AA412:  CMP.W           R1, #0xFFFFFFFF
4AA416:  BGT             loc_4AA3FC
4AA418:  AND.W           R1, R1, #0x7F
4AA41C:  STRB            R1, [R4,R5]
4AA41E:  LDR             R1, [R0,#4]
4AA420:  LDR             R6, [R0,#0xC]
4AA422:  LDRB            R5, [R1,R6]
4AA424:  AND.W           R4, R5, #0x80
4AA428:  ADDS            R5, #1
4AA42A:  AND.W           R5, R5, #0x7F
4AA42E:  ORRS            R5, R4
4AA430:  STRB            R5, [R1,R6]
4AA432:  MOVS            R6, #0xEC
4AA434:  LDR             R1, [R0]
4AA436:  LDR             R0, [R0,#0xC]
4AA438:  MLA.W           R5, R0, R6, R1
4AA43C:  MOVW            R0, #0xCCCD
4AA440:  MOVW            R10, #0x8000
4AA444:  MOVW            R4, #0x6000
4AA448:  MOV.W           R1, #0x3F800000
4AA44C:  MOVS            R6, #1
4AA44E:  MOVT            R0, #0x3DCC
4AA452:  STRD.W          R6, R1, [SP,#0x40+var_40]; int
4AA456:  MOV.W           LR, #0x3E000000
4AA45A:  MOVT            R10, #0x453B
4AA45E:  MOVT            R4, #0x46EA
4AA462:  ADD             R1, SP, #0x40+var_38
4AA464:  STM.W           R1, {R4,R10,LR}
4AA468:  MOV             R1, R2; C2dEffect *
4AA46A:  MOV             R2, R3; CEntity *
4AA46C:  STRD.W          R0, R0, [SP,#0x40+var_2C]; float
4AA470:  MOV             R3, R12; int
4AA472:  STR             R0, [SP,#0x40+var_24]; float
4AA474:  MOV             R0, R5; this
4AA476:  BLX             j__ZN13CPedAttractorC2EP9C2dEffectP7CEntityiifffffff; CPedAttractor::CPedAttractor(C2dEffect *,CEntity *,int,int,float,float,float,float,float,float,float)
4AA47A:  LDR             R0, =(_ZTV19CPedLookAtAttractor_ptr - 0x4AA480)
4AA47C:  ADD             R0, PC; _ZTV19CPedLookAtAttractor_ptr
4AA47E:  B               loc_4AA634
4AA480:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AA488); jumptable 004AA030 case 7
4AA482:  MOVS            R6, #0
4AA484:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AA486:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AA488:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AA48A:  LDRD.W          LR, R5, [R0,#8]
4AA48E:  ADDS            R5, #1
4AA490:  STR             R5, [R0,#0xC]
4AA492:  CMP             R5, LR
4AA494:  BNE             loc_4AA4A0
4AA496:  MOVS            R5, #0
4AA498:  LSLS            R1, R6, #0x1F
4AA49A:  STR             R5, [R0,#0xC]
4AA49C:  BNE             loc_4AA4CE
4AA49E:  MOVS            R6, #1
4AA4A0:  LDR             R4, [R0,#4]
4AA4A2:  LDRSB           R1, [R4,R5]
4AA4A4:  CMP.W           R1, #0xFFFFFFFF
4AA4A8:  BGT             loc_4AA48E
4AA4AA:  AND.W           R1, R1, #0x7F
4AA4AE:  STRB            R1, [R4,R5]
4AA4B0:  LDR             R1, [R0,#4]
4AA4B2:  LDR             R6, [R0,#0xC]
4AA4B4:  LDRB            R5, [R1,R6]
4AA4B6:  AND.W           R4, R5, #0x80
4AA4BA:  ADDS            R5, #1
4AA4BC:  AND.W           R5, R5, #0x7F
4AA4C0:  ORRS            R5, R4
4AA4C2:  STRB            R5, [R1,R6]
4AA4C4:  MOVS            R6, #0xEC
4AA4C6:  LDR             R1, [R0]
4AA4C8:  LDR             R0, [R0,#0xC]
4AA4CA:  MLA.W           R5, R0, R6, R1
4AA4CE:  MOVW            R0, #0xCCCD
4AA4D2:  MOVW            R10, #0x8000
4AA4D6:  MOVW            R4, #0x6000
4AA4DA:  MOV.W           R1, #0x3F800000
4AA4DE:  MOVS            R6, #1
4AA4E0:  MOVT            R0, #0x3DCC
4AA4E4:  STRD.W          R6, R1, [SP,#0x40+var_40]; int
4AA4E8:  MOV.W           LR, #0x3E000000
4AA4EC:  MOVT            R10, #0x453B
4AA4F0:  MOVT            R4, #0x46EA
4AA4F4:  ADD             R1, SP, #0x40+var_38
4AA4F6:  STM.W           R1, {R4,R10,LR}
4AA4FA:  MOV             R1, R2; C2dEffect *
4AA4FC:  MOV             R2, R3; CEntity *
4AA4FE:  STRD.W          R0, R0, [SP,#0x40+var_2C]; float
4AA502:  MOV             R3, R12; int
4AA504:  STR             R0, [SP,#0x40+var_24]; float
4AA506:  MOV             R0, R5; this
4AA508:  BLX             j__ZN13CPedAttractorC2EP9C2dEffectP7CEntityiifffffff; CPedAttractor::CPedAttractor(C2dEffect *,CEntity *,int,int,float,float,float,float,float,float,float)
4AA50C:  LDR             R0, =(_ZTV21CPedScriptedAttractor_ptr - 0x4AA512)
4AA50E:  ADD             R0, PC; _ZTV21CPedScriptedAttractor_ptr
4AA510:  B               loc_4AA634
4AA512:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AA51A); jumptable 004AA030 case 8
4AA514:  MOVS            R6, #0
4AA516:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AA518:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AA51A:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AA51C:  LDRD.W          LR, R5, [R0,#8]
4AA520:  ADDS            R5, #1
4AA522:  STR             R5, [R0,#0xC]
4AA524:  CMP             R5, LR
4AA526:  BNE             loc_4AA532
4AA528:  MOVS            R5, #0
4AA52A:  LSLS            R1, R6, #0x1F
4AA52C:  STR             R5, [R0,#0xC]
4AA52E:  BNE             loc_4AA560
4AA530:  MOVS            R6, #1
4AA532:  LDR             R4, [R0,#4]
4AA534:  LDRSB           R1, [R4,R5]
4AA536:  CMP.W           R1, #0xFFFFFFFF
4AA53A:  BGT             loc_4AA520
4AA53C:  AND.W           R1, R1, #0x7F
4AA540:  STRB            R1, [R4,R5]
4AA542:  LDR             R1, [R0,#4]
4AA544:  LDR             R6, [R0,#0xC]
4AA546:  LDRB            R5, [R1,R6]
4AA548:  AND.W           R4, R5, #0x80
4AA54C:  ADDS            R5, #1
4AA54E:  AND.W           R5, R5, #0x7F
4AA552:  ORRS            R5, R4
4AA554:  STRB            R5, [R1,R6]
4AA556:  MOVS            R6, #0xEC
4AA558:  LDR             R1, [R0]
4AA55A:  LDR             R0, [R0,#0xC]
4AA55C:  MLA.W           R5, R0, R6, R1
4AA560:  MOVW            R0, #0xCCCD
4AA564:  MOVW            R10, #0x8000
4AA568:  MOVW            R4, #0x6000
4AA56C:  MOV.W           R1, #0x3F800000
4AA570:  MOVS            R6, #1
4AA572:  MOVT            R0, #0x3DCC
4AA576:  STRD.W          R6, R1, [SP,#0x40+var_40]; int
4AA57A:  MOV.W           LR, #0x3E000000
4AA57E:  MOVT            R10, #0x453B
4AA582:  MOVT            R4, #0x46EA
4AA586:  ADD             R1, SP, #0x40+var_38
4AA588:  STM.W           R1, {R4,R10,LR}
4AA58C:  MOV             R1, R2; C2dEffect *
4AA58E:  MOV             R2, R3; CEntity *
4AA590:  STRD.W          R0, R0, [SP,#0x40+var_2C]; float
4AA594:  MOV             R3, R12; int
4AA596:  STR             R0, [SP,#0x40+var_24]; float
4AA598:  MOV             R0, R5; this
4AA59A:  BLX             j__ZN13CPedAttractorC2EP9C2dEffectP7CEntityiifffffff; CPedAttractor::CPedAttractor(C2dEffect *,CEntity *,int,int,float,float,float,float,float,float,float)
4AA59E:  LDR             R0, =(_ZTV17CPedParkAttractor_ptr - 0x4AA5A4)
4AA5A0:  ADD             R0, PC; _ZTV17CPedParkAttractor_ptr
4AA5A2:  B               loc_4AA634
4AA5A4:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AA5AC); jumptable 004AA030 case 9
4AA5A6:  MOVS            R6, #0
4AA5A8:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AA5AA:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AA5AC:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AA5AE:  LDRD.W          LR, R5, [R0,#8]
4AA5B2:  ADDS            R5, #1
4AA5B4:  STR             R5, [R0,#0xC]
4AA5B6:  CMP             R5, LR
4AA5B8:  BNE             loc_4AA5C4
4AA5BA:  MOVS            R5, #0
4AA5BC:  LSLS            R1, R6, #0x1F
4AA5BE:  STR             R5, [R0,#0xC]
4AA5C0:  BNE             loc_4AA5F2
4AA5C2:  MOVS            R6, #1
4AA5C4:  LDR             R4, [R0,#4]
4AA5C6:  LDRSB           R1, [R4,R5]
4AA5C8:  CMP.W           R1, #0xFFFFFFFF
4AA5CC:  BGT             loc_4AA5B2
4AA5CE:  AND.W           R1, R1, #0x7F
4AA5D2:  STRB            R1, [R4,R5]
4AA5D4:  LDR             R1, [R0,#4]
4AA5D6:  LDR             R6, [R0,#0xC]
4AA5D8:  LDRB            R5, [R1,R6]
4AA5DA:  AND.W           R4, R5, #0x80
4AA5DE:  ADDS            R5, #1
4AA5E0:  AND.W           R5, R5, #0x7F
4AA5E4:  ORRS            R5, R4
4AA5E6:  STRB            R5, [R1,R6]
4AA5E8:  MOVS            R6, #0xEC
4AA5EA:  LDR             R1, [R0]
4AA5EC:  LDR             R0, [R0,#0xC]
4AA5EE:  MLA.W           R5, R0, R6, R1
4AA5F2:  MOVW            R0, #0xCCCD
4AA5F6:  MOVW            R10, #0x8000
4AA5FA:  MOVW            R4, #0x6000
4AA5FE:  MOV.W           R1, #0x3F800000
4AA602:  MOVS            R6, #1
4AA604:  MOVT            R0, #0x3DCC
4AA608:  STRD.W          R6, R1, [SP,#0x40+var_40]; int
4AA60C:  MOV.W           LR, #0x3E000000
4AA610:  MOVT            R10, #0x453B
4AA614:  MOVT            R4, #0x46EA
4AA618:  ADD             R1, SP, #0x40+var_38
4AA61A:  STM.W           R1, {R4,R10,LR}
4AA61E:  MOV             R1, R2; C2dEffect *
4AA620:  MOV             R2, R3; CEntity *
4AA622:  STRD.W          R0, R0, [SP,#0x40+var_2C]; float
4AA626:  MOV             R3, R12; int
4AA628:  STR             R0, [SP,#0x40+var_24]; float
4AA62A:  MOV             R0, R5; this
4AA62C:  BLX             j__ZN13CPedAttractorC2EP9C2dEffectP7CEntityiifffffff; CPedAttractor::CPedAttractor(C2dEffect *,CEntity *,int,int,float,float,float,float,float,float,float)
4AA630:  LDR             R0, =(_ZTV17CPedStepAttractor_ptr - 0x4AA636)
4AA632:  ADD             R0, PC; _ZTV17CPedStepAttractor_ptr
4AA634:  LDR             R0, [R0]; `vtable for'CPedShelterAttractor
4AA636:  ADDS            R0, #8
4AA638:  STR             R0, [R5]
4AA63A:  LDRD.W          R1, R4, [R9]
4AA63E:  ADDS            R0, R4, #1
4AA640:  CMP             R1, R0
4AA642:  BCS             loc_4AA68A
4AA644:  MOVW            R1, #0xAAAB
4AA648:  LSLS            R0, R0, #2
4AA64A:  MOVT            R1, #0xAAAA
4AA64E:  UMULL.W         R0, R1, R0, R1
4AA652:  MOVS            R0, #3
4AA654:  ADD.W           R11, R0, R1,LSR#1
4AA658:  MOV.W           R0, R11,LSL#2; byte_count
4AA65C:  BLX             malloc
4AA660:  LDR.W           R10, [R9,#8]
4AA664:  MOV             R6, R0
4AA666:  CMP.W           R10, #0
4AA66A:  BEQ             loc_4AA680
4AA66C:  LSLS            R2, R4, #2; n
4AA66E:  MOV             R0, R6; dest
4AA670:  MOV             R1, R10; src
4AA672:  BLX             memmove_1
4AA676:  MOV             R0, R10; p
4AA678:  BLX             free
4AA67C:  LDR.W           R4, [R9,#4]
4AA680:  STR.W           R6, [R9,#8]
4AA684:  STR.W           R11, [R9]
4AA688:  B               loc_4AA68E
4AA68A:  LDR.W           R6, [R9,#8]
4AA68E:  ADD.W           R0, R6, R4,LSL#2
4AA692:  CMP             R5, #0
4AA694:  STR             R5, [R0]
4AA696:  LDR.W           R0, [R9,#4]
4AA69A:  ADD.W           R0, R0, #1
4AA69E:  STR.W           R0, [R9,#4]
4AA6A2:  BEQ             loc_4AA6AC
4AA6A4:  MOV             R0, R5; this
4AA6A6:  MOV             R1, R8; CPed *
4AA6A8:  BLX             j__ZN13CPedAttractor11RegisterPedEP4CPed; CPedAttractor::RegisterPed(CPed *)
4AA6AC:  MOV             R0, R5
4AA6AE:  ADD             SP, SP, #0x24 ; '$'
4AA6B0:  POP.W           {R8-R11}
4AA6B4:  POP             {R4-R7,PC}
