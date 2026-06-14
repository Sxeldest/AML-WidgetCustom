; =========================================================
; Game Engine Function: _ZN6CTrain27DoTrainGenerationAndRemovalEv
; Address            : 0x57FF18 - 0x5808FE
; =========================================================

57FF18:  PUSH            {R4-R7,LR}
57FF1A:  ADD             R7, SP, #0xC
57FF1C:  PUSH.W          {R8-R11}
57FF20:  SUB             SP, SP, #4
57FF22:  VPUSH           {D8-D12}
57FF26:  SUB             SP, SP, #0x60
57FF28:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x57FF3C)
57FF2C:  MOVW            R2, #0x19F1
57FF30:  LDR.W           R1, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x57FF3E)
57FF34:  MOVT            R2, #0x576
57FF38:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
57FF3A:  ADD             R1, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
57FF3C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
57FF3E:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds ...
57FF40:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
57FF42:  LDR             R4, [R1]; CTimer::m_snPreviousTimeInMilliseconds
57FF44:  UMULL.W         R1, R3, R0, R2
57FF48:  UMULL.W         R1, R2, R4, R2
57FF4C:  LSRS            R1, R3, #6
57FF4E:  CMP.W           R1, R2,LSR#6
57FF52:  BEQ.W           loc_5800EC
57FF56:  LDR.W           R0, =(byte_A12EB4 - 0x57FF60)
57FF5A:  MOVS            R1, #0
57FF5C:  ADD             R0, PC; byte_A12EB4
57FF5E:  STRB            R1, [R0]
57FF60:  ADD             R0, SP, #0xA8+var_58; int
57FF62:  MOV.W           R1, #0xFFFFFFFF
57FF66:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
57FF6A:  LDR.W           R0, =(_ZN6CTrain13aStationCoorsE_ptr - 0x57FF76)
57FF6E:  VLDR            D17, [SP,#0xA8+var_58]
57FF72:  ADD             R0, PC; _ZN6CTrain13aStationCoorsE_ptr
57FF74:  VLDR            S16, =60.0
57FF78:  LDR             R0, [R0]; CTrain::aStationCoors ...
57FF7A:  VLDR            D16, [R0]
57FF7E:  VSUB.F32        D16, D16, D17
57FF82:  VMUL.F32        D0, D16, D16
57FF86:  VADD.F32        S0, S0, S1
57FF8A:  VSQRT.F32       S0, S0
57FF8E:  VCMPE.F32       S0, S16
57FF92:  VMRS            APSR_nzcv, FPSCR
57FF96:  BGE             loc_57FFA2
57FF98:  LDR.W           R0, =(byte_A12EB4 - 0x57FFA2)
57FF9C:  MOVS            R1, #1
57FF9E:  ADD             R0, PC; byte_A12EB4
57FFA0:  STRB            R1, [R0]
57FFA2:  ADD             R0, SP, #0xA8+var_58; int
57FFA4:  MOV.W           R1, #0xFFFFFFFF
57FFA8:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
57FFAC:  LDR.W           R0, =(_ZN6CTrain13aStationCoorsE_ptr - 0x57FFB8)
57FFB0:  VLDR            D16, [SP,#0xA8+var_58]
57FFB4:  ADD             R0, PC; _ZN6CTrain13aStationCoorsE_ptr
57FFB6:  LDR             R0, [R0]; CTrain::aStationCoors ...
57FFB8:  VLDR            D17, [R0,#0xC]
57FFBC:  VSUB.F32        D16, D17, D16
57FFC0:  VMUL.F32        D0, D16, D16
57FFC4:  VADD.F32        S0, S0, S1
57FFC8:  VSQRT.F32       S0, S0
57FFCC:  VCMPE.F32       S0, S16
57FFD0:  VMRS            APSR_nzcv, FPSCR
57FFD4:  BGE             loc_57FFE0
57FFD6:  LDR.W           R0, =(byte_A12EB4 - 0x57FFE0)
57FFDA:  MOVS            R1, #1
57FFDC:  ADD             R0, PC; byte_A12EB4
57FFDE:  STRB            R1, [R0]
57FFE0:  ADD             R0, SP, #0xA8+var_58; int
57FFE2:  MOV.W           R1, #0xFFFFFFFF
57FFE6:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
57FFEA:  LDR.W           R0, =(_ZN6CTrain13aStationCoorsE_ptr - 0x57FFF6)
57FFEE:  VLDR            D16, [SP,#0xA8+var_58]
57FFF2:  ADD             R0, PC; _ZN6CTrain13aStationCoorsE_ptr
57FFF4:  LDR             R0, [R0]; CTrain::aStationCoors ...
57FFF6:  VLDR            D17, [R0,#0x18]
57FFFA:  VSUB.F32        D16, D17, D16
57FFFE:  VMUL.F32        D0, D16, D16
580002:  VADD.F32        S0, S0, S1
580006:  VSQRT.F32       S0, S0
58000A:  VCMPE.F32       S0, S16
58000E:  VMRS            APSR_nzcv, FPSCR
580012:  BGE             loc_58001E
580014:  LDR.W           R0, =(byte_A12EB4 - 0x58001E)
580018:  MOVS            R1, #1
58001A:  ADD             R0, PC; byte_A12EB4
58001C:  STRB            R1, [R0]
58001E:  ADD             R0, SP, #0xA8+var_58; int
580020:  MOV.W           R1, #0xFFFFFFFF
580024:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
580028:  LDR.W           R0, =(_ZN6CTrain13aStationCoorsE_ptr - 0x580034)
58002C:  VLDR            D16, [SP,#0xA8+var_58]
580030:  ADD             R0, PC; _ZN6CTrain13aStationCoorsE_ptr
580032:  LDR             R0, [R0]; CTrain::aStationCoors ...
580034:  VLDR            D17, [R0,#0x24]
580038:  VSUB.F32        D16, D17, D16
58003C:  VMUL.F32        D0, D16, D16
580040:  VADD.F32        S0, S0, S1
580044:  VSQRT.F32       S0, S0
580048:  VCMPE.F32       S0, S16
58004C:  VMRS            APSR_nzcv, FPSCR
580050:  BGE             loc_58005C
580052:  LDR.W           R0, =(byte_A12EB4 - 0x58005C)
580056:  MOVS            R1, #1
580058:  ADD             R0, PC; byte_A12EB4
58005A:  STRB            R1, [R0]
58005C:  ADD             R0, SP, #0xA8+var_58; int
58005E:  MOV.W           R1, #0xFFFFFFFF
580062:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
580066:  LDR.W           R0, =(_ZN6CTrain13aStationCoorsE_ptr - 0x580072)
58006A:  VLDR            D16, [SP,#0xA8+var_58]
58006E:  ADD             R0, PC; _ZN6CTrain13aStationCoorsE_ptr
580070:  LDR             R0, [R0]; CTrain::aStationCoors ...
580072:  VLDR            D17, [R0,#0x30]
580076:  VSUB.F32        D16, D17, D16
58007A:  VMUL.F32        D0, D16, D16
58007E:  VADD.F32        S0, S0, S1
580082:  VSQRT.F32       S0, S0
580086:  VCMPE.F32       S0, S16
58008A:  VMRS            APSR_nzcv, FPSCR
58008E:  BGE             loc_58009A
580090:  LDR.W           R0, =(byte_A12EB4 - 0x58009A)
580094:  MOVS            R1, #1
580096:  ADD             R0, PC; byte_A12EB4
580098:  STRB            R1, [R0]
58009A:  ADD             R0, SP, #0xA8+var_58; int
58009C:  MOV.W           R1, #0xFFFFFFFF
5800A0:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
5800A4:  LDR.W           R0, =(_ZN6CTrain13aStationCoorsE_ptr - 0x5800B0)
5800A8:  VLDR            D16, [SP,#0xA8+var_58]
5800AC:  ADD             R0, PC; _ZN6CTrain13aStationCoorsE_ptr
5800AE:  LDR             R0, [R0]; CTrain::aStationCoors ...
5800B0:  VLDR            D17, [R0,#0x3C]
5800B4:  VSUB.F32        D16, D17, D16
5800B8:  VMUL.F32        D0, D16, D16
5800BC:  VADD.F32        S0, S0, S1
5800C0:  VSQRT.F32       S0, S0
5800C4:  VCMPE.F32       S0, S16
5800C8:  VMRS            APSR_nzcv, FPSCR
5800CC:  BGE             loc_5800D8
5800CE:  LDR.W           R0, =(byte_A12EB4 - 0x5800D8)
5800D2:  MOVS            R1, #1
5800D4:  ADD             R0, PC; byte_A12EB4
5800D6:  STRB            R1, [R0]
5800D8:  LDR.W           R0, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x5800E4)
5800DC:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5800E6)
5800E0:  ADD             R0, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
5800E2:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5800E4:  LDR             R0, [R0]; CTimer::m_snPreviousTimeInMilliseconds ...
5800E6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5800E8:  LDR             R4, [R0]; CTimer::m_snPreviousTimeInMilliseconds
5800EA:  LDR             R0, [R1]; CTimer::m_snTimeInMilliseconds
5800EC:  LDR.W           R1, =(byte_A12EB4 - 0x5800FC)
5800F0:  MOVW            R5, #0x3B6
5800F4:  VLDR            S0, =100.0
5800F8:  ADD             R1, PC; byte_A12EB4
5800FA:  VLDR            S16, =70.0
5800FE:  LDRB            R1, [R1]
580100:  CMP             R1, #0
580102:  IT NE
580104:  VMOVNE.F32      S16, S0
580108:  IT NE
58010A:  MOVNE           R5, #1
58010C:  MOV             R1, R5
58010E:  BLX             __aeabi_uidiv
580112:  MOV             R6, R0
580114:  MOV             R0, R4
580116:  MOV             R1, R5
580118:  BLX             __aeabi_uidiv
58011C:  CMP             R6, R0
58011E:  BEQ.W           loc_5808F0
580122:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x58012A)
580126:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
580128:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
58012A:  LDR.W           R10, [R0]; CPools::ms_pVehiclePool
58012E:  MOVS            R0, #0
580130:  LDR.W           R6, [R10,#8]
580134:  CMP             R6, #0
580136:  BEQ             loc_58022E
580138:  LDR.W           R1, =(TheCamera_ptr - 0x580148)
58013C:  MOVW            R8, #0xA2C
580140:  VLDR            S18, =220.0
580144:  ADD             R1, PC; TheCamera_ptr
580146:  LDR.W           R9, [R1]; TheCamera
58014A:  MUL.W           R2, R6, R8
58014E:  LDR.W           R1, [R10,#4]
580152:  SUBS            R6, #1
580154:  SUBW            R2, R2, #0xA2C
580158:  LDRSB           R3, [R1,R6]
58015A:  CMP             R3, #0
58015C:  BLT             loc_58017A
58015E:  LDR.W           R3, [R10]
580162:  ADDS            R5, R3, R2
580164:  BEQ             loc_58017A
580166:  LDR.W           R3, [R5,#0x5A4]
58016A:  CMP             R3, #6
58016C:  BNE             loc_58017A
58016E:  LDRH.W          R3, [R5,#0x5CC]
580172:  AND.W           R3, R3, #0x28 ; '('
580176:  CMP             R3, #8
580178:  BEQ             loc_58019C
58017A:  SUBS            R6, #1
58017C:  SUBW            R2, R2, #0xA2C
580180:  ADDS            R3, R6, #1
580182:  BNE             loc_580158
580184:  B               loc_58022E
580186:  ALIGN 4
580188:  DCFS 60.0
58018C:  DCFS 100.0
580190:  DCFS 70.0
580194:  DCFS 220.0
580198:  DCFS 170.0
58019C:  MOV.W           R11, #1
5801A0:  MOV             R4, R5
5801A2:  LDR             R0, [R4,#0x14]
5801A4:  LDR.W           R2, [R9,#(dword_951FBC - 0x951FA8)]
5801A8:  ADD.W           R1, R0, #0x30 ; '0'
5801AC:  CMP             R0, #0
5801AE:  IT EQ
5801B0:  ADDEQ           R1, R4, #4
5801B2:  ADD.W           R0, R2, #0x30 ; '0'
5801B6:  CMP             R2, #0
5801B8:  VLDR            D16, [R1]
5801BC:  IT EQ
5801BE:  ADDEQ.W         R0, R9, #4
5801C2:  MOVS            R1, #0; bool
5801C4:  VLDR            D17, [R0]
5801C8:  MOV.W           R0, #0xFFFFFFFF; int
5801CC:  VSUB.F32        D16, D17, D16
5801D0:  VMUL.F32        D0, D16, D16
5801D4:  VADD.F32        S0, S0, S1
5801D8:  VSQRT.F32       S20, S0
5801DC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5801E0:  CMP             R4, R0
5801E2:  MOV.W           R0, #0
5801E6:  VCMPE.F32       S20, S18
5801EA:  IT NE
5801EC:  MOVNE           R0, #1
5801EE:  VMRS            APSR_nzcv, FPSCR
5801F2:  MOV.W           R1, #0
5801F6:  LDR.W           R4, [R4,#0x5E8]
5801FA:  IT GE
5801FC:  MOVGE           R1, #(stderr+1); CEntity *
5801FE:  CMP             R4, #0
580200:  AND.W           R0, R0, R1
580204:  AND.W           R11, R11, R0
580208:  BNE             loc_5801A2
58020A:  CMP.W           R11, #1
58020E:  BNE             loc_580228
580210:  MOV             R0, R5; this
580212:  LDR.W           R4, [R5,#0x5E8]
580216:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
58021A:  LDR             R0, [R5]
58021C:  LDR             R1, [R0,#4]
58021E:  MOV             R0, R5
580220:  BLX             R1
580222:  CMP             R4, #0
580224:  MOV             R5, R4
580226:  BNE             loc_580210
580228:  MOVS            R0, #1
58022A:  CMP             R6, #0
58022C:  BNE             loc_58014A
58022E:  LDR.W           R1, =(_ZN6CTrain20bDisableRandomTrainsE_ptr - 0x580236)
580232:  ADD             R1, PC; _ZN6CTrain20bDisableRandomTrainsE_ptr
580234:  LDR             R1, [R1]; CTrain::bDisableRandomTrains ...
580236:  LDRB            R1, [R1]; CTrain::bDisableRandomTrains
580238:  CMP             R1, #0
58023A:  BNE.W           loc_5808F0
58023E:  LDR.W           R1, =(_ZN6CTrain15GenTrain_StatusE_ptr - 0x580246)
580242:  ADD             R1, PC; _ZN6CTrain15GenTrain_StatusE_ptr
580244:  LDR             R1, [R1]; CTrain::GenTrain_Status ...
580246:  LDR             R1, [R1]; CTrain::GenTrain_Status
580248:  CMP             R1, #1
58024A:  BEQ.W           loc_580640
58024E:  CMP             R1, #0
580250:  IT EQ
580252:  MOVSEQ.W        R0, R0,LSL#31
580256:  BNE.W           loc_5808F0
58025A:  LDR.W           R0, =(TheCamera_ptr - 0x580266)
58025E:  LDR.W           R2, =(_ZN6CTrain14GenTrain_TrackE_ptr - 0x58026C)
580262:  ADD             R0, PC; TheCamera_ptr
580264:  LDR.W           R1, =(NumTrackNodes_ptr - 0x580270)
580268:  ADD             R2, PC; _ZN6CTrain14GenTrain_TrackE_ptr
58026A:  LDR             R0, [R0]; TheCamera
58026C:  ADD             R1, PC; NumTrackNodes_ptr
58026E:  LDR             R5, [R2]; CTrain::GenTrain_Track ...
580270:  LDR             R4, [R1]; NumTrackNodes
580272:  LDR             R3, [R0,#(dword_951FBC - 0x951FA8)]
580274:  ADD.W           R1, R3, #0x30 ; '0'
580278:  CMP             R3, #0
58027A:  IT EQ
58027C:  ADDEQ           R1, R0, #4
58027E:  MOVS            R0, #0
580280:  VLDR            D9, [R1]
580284:  STR             R0, [R5]; CTrain::GenTrain_Track
580286:  BLX             rand
58028A:  LDR             R5, [R5]; CTrain::GenTrain_Track
58028C:  LDR.W           R1, [R4,R5,LSL#2]
580290:  BLX             __aeabi_idivmod
580294:  LDR.W           R0, =(_ZN6CTrain23GenTrain_GenerationNodeE_ptr - 0x5802A0)
580298:  LDR.W           R2, =(pTrackNodes_ptr - 0x5802A2)
58029C:  ADD             R0, PC; _ZN6CTrain23GenTrain_GenerationNodeE_ptr
58029E:  ADD             R2, PC; pTrackNodes_ptr
5802A0:  LDR             R0, [R0]; CTrain::GenTrain_GenerationNode ...
5802A2:  LDR             R2, [R2]; pTrackNodes
5802A4:  STR             R1, [R0]; CTrain::GenTrain_GenerationNode
5802A6:  ADD.W           R1, R1, R1,LSL#2
5802AA:  LDR.W           R0, [R2,R5,LSL#2]
5802AE:  LDR.W           R2, [R0,R1,LSL#1]
5802B2:  ADD.W           R0, R0, R1,LSL#1
5802B6:  STR             R2, [SP,#0xA8+var_70]
5802B8:  ADD             R2, SP, #0xA8+var_70
5802BA:  LDRSH.W         R0, [R0,#4]
5802BE:  VLD1.32         {D16[0]}, [R2@32]
5802C2:  VMOV            S0, R0
5802C6:  VMOVL.S16       Q8, D16
5802CA:  VCVT.F32.S32    S0, S0
5802CE:  VCVT.F32.S32    D16, D16
5802D2:  VMOV.I32        D17, #0x3E000000
5802D6:  VMUL.F32        D11, D16, D17
5802DA:  VSUB.F32        D16, D11, D9
5802DE:  VMUL.F32        D1, D16, D16
5802E2:  VADD.F32        S2, S2, S3
5802E6:  VSQRT.F32       S20, S2
5802EA:  VCMPE.F32       S20, S16
5802EE:  VMRS            APSR_nzcv, FPSCR
5802F2:  BGE.W           loc_580488
5802F6:  VMOV.F32        S2, #0.125
5802FA:  ADD             R0, SP, #0xA8+var_58; int
5802FC:  MOV.W           R1, #0xFFFFFFFF
580300:  VMUL.F32        S24, S0, S2
580304:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
580308:  VMOV.F32        S0, #6.0
58030C:  VLDR            S2, [SP,#0xA8+var_50]
580310:  VADD.F32        S0, S24, S0
580314:  VCMPE.F32       S2, S0
580318:  VMRS            APSR_nzcv, FPSCR
58031C:  BLT             loc_58034E
58031E:  ADD             R0, SP, #0xA8+var_64; int
580320:  MOV.W           R1, #0xFFFFFFFF
580324:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
580328:  ADD             R2, SP, #0xA8+var_64
58032A:  LDM             R2, {R0-R2}
58032C:  BLX             j__ZN10CCullZones28FindTunnelAttributesForCoorsE7CVector; CCullZones::FindTunnelAttributesForCoors(CVector)
580330:  TST.W           R0, #0x880
580334:  BNE             loc_58034E
580336:  VMOV.32         R1, D11[1]
58033A:  VMOV            R2, S24
58033E:  VMOV.32         R0, D11[0]
580342:  BLX             j__ZN10CCullZones28FindTunnelAttributesForCoorsE7CVector; CCullZones::FindTunnelAttributesForCoors(CVector)
580346:  TST.W           R0, #0x800
58034A:  BNE.W           loc_580488
58034E:  LDR.W           R0, =(_ZN6CTrain18GenTrain_DirectionE_ptr - 0x580356)
580352:  ADD             R0, PC; _ZN6CTrain18GenTrain_DirectionE_ptr
580354:  LDR             R5, [R0]; CTrain::GenTrain_Direction ...
580356:  BLX             rand
58035A:  VLDR            S22, =170.0
58035E:  AND.W           R4, R0, #1
580362:  STRB            R4, [R5]; CTrain::GenTrain_Direction
580364:  VCMPE.F32       S20, S22
580368:  VMRS            APSR_nzcv, FPSCR
58036C:  BGE             loc_58043C
58036E:  LDR.W           R0, =(_ZN6CTrain23GenTrain_GenerationNodeE_ptr - 0x580382)
580372:  VMOV.I32        D12, #0x3E000000
580376:  LDR.W           R2, =(_ZN6CTrain23GenTrain_GenerationNodeE_ptr - 0x580388)
58037A:  ADD.W           R11, SP, #0xA8+var_74
58037E:  ADD             R0, PC; _ZN6CTrain23GenTrain_GenerationNodeE_ptr
580380:  LDR.W           R3, =(NumTrackNodes_ptr - 0x58038C)
580384:  ADD             R2, PC; _ZN6CTrain23GenTrain_GenerationNodeE_ptr
580386:  LDR             R0, [R0]; CTrain::GenTrain_GenerationNode ...
580388:  ADD             R3, PC; NumTrackNodes_ptr
58038A:  LDR             R1, [R0]; CTrain::GenTrain_GenerationNode
58038C:  LDR.W           R0, =(_ZN6CTrain14GenTrain_TrackE_ptr - 0x580394)
580390:  ADD             R0, PC; _ZN6CTrain14GenTrain_TrackE_ptr
580392:  LDR             R0, [R0]; CTrain::GenTrain_Track ...
580394:  STR             R0, [SP,#0xA8+var_84]
580396:  LDR             R0, [R2]; CTrain::GenTrain_GenerationNode ...
580398:  STR             R0, [SP,#0xA8+var_88]
58039A:  LDR             R0, [R3]; NumTrackNodes
58039C:  STR             R0, [SP,#0xA8+var_8C]
58039E:  LDR.W           R0, =(_ZN6CTrain23GenTrain_GenerationNodeE_ptr - 0x5803AA)
5803A2:  LDR.W           R2, =(_ZN6CTrain23GenTrain_GenerationNodeE_ptr - 0x5803AC)
5803A6:  ADD             R0, PC; _ZN6CTrain23GenTrain_GenerationNodeE_ptr
5803A8:  ADD             R2, PC; _ZN6CTrain23GenTrain_GenerationNodeE_ptr
5803AA:  LDR             R0, [R0]; CTrain::GenTrain_GenerationNode ...
5803AC:  STR             R0, [SP,#0xA8+var_80]
5803AE:  LDR.W           R0, =(pTrackNodes_ptr - 0x5803BA)
5803B2:  LDR.W           R10, [R2]; CTrain::GenTrain_GenerationNode ...
5803B6:  ADD             R0, PC; pTrackNodes_ptr
5803B8:  LDR             R6, [R0]; pTrackNodes
5803BA:  LDR.W           R0, =(_ZN6CTrain14GenTrain_TrackE_ptr - 0x5803C2)
5803BE:  ADD             R0, PC; _ZN6CTrain14GenTrain_TrackE_ptr
5803C0:  LDR.W           R9, [R0]; CTrain::GenTrain_Track ...
5803C4:  LDR.W           R0, =(NumTrackNodes_ptr - 0x5803CC)
5803C8:  ADD             R0, PC; NumTrackNodes_ptr
5803CA:  LDR             R0, [R0]; NumTrackNodes
5803CC:  STR             R0, [SP,#0xA8+var_90]
5803CE:  MOV             R5, R1
5803D0:  CBZ             R4, loc_5803EA
5803D2:  LDR.W           R8, [R9]; CTrain::GenTrain_Track
5803D6:  SUBS            R1, R5, #1
5803D8:  CMP             R5, #0
5803DA:  STR.W           R1, [R10]; CTrain::GenTrain_GenerationNode
5803DE:  BGT             loc_580404
5803E0:  LDR             R0, [SP,#0xA8+var_90]
5803E2:  LDR.W           R0, [R0,R8,LSL#2]
5803E6:  ADD             R1, R0
5803E8:  B               loc_580400
5803EA:  LDR             R0, [SP,#0xA8+var_84]
5803EC:  LDR             R1, [SP,#0xA8+var_88]
5803EE:  LDR.W           R8, [R0]
5803F2:  ADDS            R0, R5, #1
5803F4:  STR             R0, [R1]
5803F6:  LDR             R1, [SP,#0xA8+var_8C]
5803F8:  LDR.W           R1, [R1,R8,LSL#2]
5803FC:  BLX             __aeabi_idivmod
580400:  LDR             R0, [SP,#0xA8+var_80]
580402:  STR             R1, [R0]
580404:  LDR.W           R0, [R6,R8,LSL#2]
580408:  ADD.W           R2, R1, R1,LSL#2
58040C:  LDR.W           R0, [R0,R2,LSL#1]
580410:  STR             R0, [SP,#0xA8+var_74]
580412:  VLD1.32         {D16[0]}, [R11@32]
580416:  VMOVL.S16       Q8, D16
58041A:  VCVT.F32.S32    D16, D16
58041E:  VMUL.F32        D16, D16, D12
580422:  VSUB.F32        D16, D16, D9
580426:  VMUL.F32        D0, D16, D16
58042A:  VADD.F32        S0, S0, S1
58042E:  VSQRT.F32       S20, S0
580432:  VCMPE.F32       S20, S22
580436:  VMRS            APSR_nzcv, FPSCR
58043A:  BLT             loc_5803CE
58043C:  LDR.W           R0, =(_ZN6CTrain15GenTrain_StatusE_ptr - 0x58044A)
580440:  MOVS            R6, #1
580442:  LDR.W           R1, =(dword_A12EB8 - 0x580450)
580446:  ADD             R0, PC; _ZN6CTrain15GenTrain_StatusE_ptr
580448:  LDR.W           R2, =(_ZN6CTrain20GenTrain_TrainConfigE_ptr - 0x580458)
58044C:  ADD             R1, PC; dword_A12EB8
58044E:  VLDR            S0, =220.0
580452:  LDR             R0, [R0]; CTrain::GenTrain_Status ...
580454:  ADD             R2, PC; _ZN6CTrain20GenTrain_TrainConfigE_ptr
580456:  LDR             R3, [R1]
580458:  VCMPE.F32       S20, S0
58045C:  LDR             R2, [R2]; CTrain::GenTrain_TrainConfig ...
58045E:  VMRS            APSR_nzcv, FPSCR
580462:  STR             R6, [R0]; CTrain::GenTrain_Status
580464:  ADD.W           R0, R3, #1
580468:  MOV.W           R3, R0,ASR#31
58046C:  ADD.W           R3, R0, R3,LSR#29
580470:  BIC.W           R3, R3, #7
580474:  SUB.W           R0, R0, R3
580478:  STR             R0, [R2]; CTrain::GenTrain_TrainConfig
58047A:  STR             R0, [R1]
58047C:  BLE             loc_580488
58047E:  LDR.W           R0, =(_ZN6CTrain23GenTrain_GenerationNodeE_ptr - 0x580486)
580482:  ADD             R0, PC; _ZN6CTrain23GenTrain_GenerationNodeE_ptr
580484:  LDR             R0, [R0]; CTrain::GenTrain_GenerationNode ...
580486:  STR             R5, [R0]; CTrain::GenTrain_GenerationNode
580488:  LDR.W           R0, =(_ZN6CTrain15GenTrain_StatusE_ptr - 0x580490)
58048C:  ADD             R0, PC; _ZN6CTrain15GenTrain_StatusE_ptr
58048E:  LDR             R0, [R0]; CTrain::GenTrain_Status ...
580490:  LDR             R0, [R0]; CTrain::GenTrain_Status
580492:  CMP             R0, #0
580494:  BNE.W           loc_5808F0
580498:  LDR.W           R0, =(_ZN8CWeather13WeatherRegionE_ptr - 0x5804A0)
58049C:  ADD             R0, PC; _ZN8CWeather13WeatherRegionE_ptr
58049E:  LDR             R0, [R0]; CWeather::WeatherRegion ...
5804A0:  LDRH            R0, [R0]; CWeather::WeatherRegion
5804A2:  CMP             R0, #2
5804A4:  BNE.W           loc_5808F0
5804A8:  LDR.W           R0, =(_ZN6CTrain14GenTrain_TrackE_ptr - 0x5804B4)
5804AC:  LDR.W           R1, =(NumTrackNodes_ptr - 0x5804B6)
5804B0:  ADD             R0, PC; _ZN6CTrain14GenTrain_TrackE_ptr
5804B2:  ADD             R1, PC; NumTrackNodes_ptr
5804B4:  LDR             R4, [R0]; CTrain::GenTrain_Track ...
5804B6:  MOVS            R0, #1
5804B8:  LDR             R5, [R1]; NumTrackNodes
5804BA:  STR             R0, [R4]; CTrain::GenTrain_Track
5804BC:  BLX             rand
5804C0:  LDR             R4, [R4]; CTrain::GenTrain_Track
5804C2:  LDR.W           R1, [R5,R4,LSL#2]
5804C6:  BLX             __aeabi_idivmod
5804CA:  LDR.W           R0, =(_ZN6CTrain23GenTrain_GenerationNodeE_ptr - 0x5804D6)
5804CE:  LDR.W           R2, =(pTrackNodes_ptr - 0x5804D8)
5804D2:  ADD             R0, PC; _ZN6CTrain23GenTrain_GenerationNodeE_ptr
5804D4:  ADD             R2, PC; pTrackNodes_ptr
5804D6:  LDR             R0, [R0]; CTrain::GenTrain_GenerationNode ...
5804D8:  LDR             R2, [R2]; pTrackNodes
5804DA:  STR             R1, [R0]; CTrain::GenTrain_GenerationNode
5804DC:  ADD.W           R1, R1, R1,LSL#2
5804E0:  LDR.W           R0, [R2,R4,LSL#2]
5804E4:  LDR.W           R0, [R0,R1,LSL#1]
5804E8:  STR             R0, [SP,#0xA8+var_78]
5804EA:  ADD             R0, SP, #0xA8+var_78
5804EC:  VLD1.32         {D16[0]}, [R0@32]
5804F0:  VMOVL.S16       Q8, D16
5804F4:  VCVT.F32.S32    D16, D16
5804F8:  VMOV.I32        D17, #0x3E000000
5804FC:  VMUL.F32        D16, D16, D17
580500:  VSUB.F32        D16, D16, D9
580504:  VMUL.F32        D0, D16, D16
580508:  VADD.F32        S0, S0, S1
58050C:  VSQRT.F32       S22, S0
580510:  VCMPE.F32       S22, S16
580514:  VMRS            APSR_nzcv, FPSCR
580518:  BGE.W           loc_5808F0
58051C:  LDR.W           R0, =(_ZN6CTrain18GenTrain_DirectionE_ptr - 0x580524)
580520:  ADD             R0, PC; _ZN6CTrain18GenTrain_DirectionE_ptr
580522:  LDR             R5, [R0]; CTrain::GenTrain_Direction ...
580524:  BLX             rand
580528:  VLDR            S16, =170.0
58052C:  AND.W           R4, R0, #1
580530:  STRB            R4, [R5]; CTrain::GenTrain_Direction
580532:  VCMPE.F32       S22, S16
580536:  VMRS            APSR_nzcv, FPSCR
58053A:  BGE             loc_580608
58053C:  LDR.W           R0, =(_ZN6CTrain23GenTrain_GenerationNodeE_ptr - 0x580550)
580540:  VMOV.I32        D10, #0x3E000000
580544:  LDR.W           R2, =(_ZN6CTrain23GenTrain_GenerationNodeE_ptr - 0x580556)
580548:  ADD.W           R11, SP, #0xA8+var_7C
58054C:  ADD             R0, PC; _ZN6CTrain23GenTrain_GenerationNodeE_ptr
58054E:  LDR.W           R3, =(NumTrackNodes_ptr - 0x58055A)
580552:  ADD             R2, PC; _ZN6CTrain23GenTrain_GenerationNodeE_ptr
580554:  LDR             R0, [R0]; CTrain::GenTrain_GenerationNode ...
580556:  ADD             R3, PC; NumTrackNodes_ptr
580558:  LDR             R1, [R0]; CTrain::GenTrain_GenerationNode
58055A:  LDR.W           R0, =(_ZN6CTrain14GenTrain_TrackE_ptr - 0x580562)
58055E:  ADD             R0, PC; _ZN6CTrain14GenTrain_TrackE_ptr
580560:  LDR             R0, [R0]; CTrain::GenTrain_Track ...
580562:  STR             R0, [SP,#0xA8+var_80]
580564:  LDR             R0, [R2]; CTrain::GenTrain_GenerationNode ...
580566:  STR             R0, [SP,#0xA8+var_84]
580568:  LDR             R0, [R3]; NumTrackNodes
58056A:  STR             R0, [SP,#0xA8+var_88]
58056C:  LDR.W           R0, =(_ZN6CTrain23GenTrain_GenerationNodeE_ptr - 0x580578)
580570:  LDR.W           R2, =(_ZN6CTrain23GenTrain_GenerationNodeE_ptr - 0x58057A)
580574:  ADD             R0, PC; _ZN6CTrain23GenTrain_GenerationNodeE_ptr
580576:  ADD             R2, PC; _ZN6CTrain23GenTrain_GenerationNodeE_ptr
580578:  LDR             R6, [R0]; CTrain::GenTrain_GenerationNode ...
58057A:  LDR.W           R0, =(pTrackNodes_ptr - 0x580586)
58057E:  LDR.W           R9, [R2]; CTrain::GenTrain_GenerationNode ...
580582:  ADD             R0, PC; pTrackNodes_ptr
580584:  LDR             R5, [R0]; pTrackNodes
580586:  LDR.W           R0, =(_ZN6CTrain14GenTrain_TrackE_ptr - 0x58058E)
58058A:  ADD             R0, PC; _ZN6CTrain14GenTrain_TrackE_ptr
58058C:  LDR.W           R8, [R0]; CTrain::GenTrain_Track ...
580590:  LDR.W           R0, =(NumTrackNodes_ptr - 0x580598)
580594:  ADD             R0, PC; NumTrackNodes_ptr
580596:  LDR             R0, [R0]; NumTrackNodes
580598:  STR             R0, [SP,#0xA8+var_8C]
58059A:  CBZ             R4, loc_5805AE
58059C:  LDR.W           R10, [R8]; CTrain::GenTrain_Track
5805A0:  SUBS            R0, R1, #1
5805A2:  CMP             R1, #0
5805A4:  STR.W           R0, [R9]; CTrain::GenTrain_GenerationNode
5805A8:  BLE             loc_5805C6
5805AA:  MOV             R1, R0
5805AC:  B               loc_5805D0
5805AE:  LDR             R0, [SP,#0xA8+var_80]
5805B0:  LDR.W           R10, [R0]
5805B4:  ADDS            R0, R1, #1
5805B6:  LDR             R1, [SP,#0xA8+var_84]
5805B8:  STR             R0, [R1]
5805BA:  LDR             R1, [SP,#0xA8+var_88]
5805BC:  LDR.W           R1, [R1,R10,LSL#2]
5805C0:  BLX             __aeabi_idivmod
5805C4:  B               loc_5805CE
5805C6:  LDR             R1, [SP,#0xA8+var_8C]
5805C8:  LDR.W           R1, [R1,R10,LSL#2]
5805CC:  ADD             R1, R0
5805CE:  STR             R1, [R6]; CTrain::GenTrain_GenerationNode
5805D0:  LDR.W           R0, [R5,R10,LSL#2]
5805D4:  ADD.W           R2, R1, R1,LSL#2
5805D8:  LDR.W           R0, [R0,R2,LSL#1]
5805DC:  STR             R0, [SP,#0xA8+var_7C]
5805DE:  VLD1.32         {D16[0]}, [R11@32]
5805E2:  VMOVL.S16       Q8, D16
5805E6:  VCVT.F32.S32    D16, D16
5805EA:  VMUL.F32        D16, D16, D10
5805EE:  VSUB.F32        D16, D16, D9
5805F2:  VMUL.F32        D0, D16, D16
5805F6:  VADD.F32        S0, S0, S1
5805FA:  VSQRT.F32       S22, S0
5805FE:  VCMPE.F32       S22, S16
580602:  VMRS            APSR_nzcv, FPSCR
580606:  BLT             loc_58059A
580608:  VLDR            S0, =220.0
58060C:  VCMPE.F32       S22, S0
580610:  VMRS            APSR_nzcv, FPSCR
580614:  BGE.W           loc_5808F0
580618:  LDR.W           R0, =(_ZN6CTrain15GenTrain_StatusE_ptr - 0x580624)
58061C:  LDR.W           R1, =(_ZN6CTrain20GenTrain_TrainConfigE_ptr - 0x580626)
580620:  ADD             R0, PC; _ZN6CTrain15GenTrain_StatusE_ptr
580622:  ADD             R1, PC; _ZN6CTrain20GenTrain_TrainConfigE_ptr
580624:  LDR             R0, [R0]; CTrain::GenTrain_Status ...
580626:  LDR             R4, [R1]; CTrain::GenTrain_TrainConfig ...
580628:  MOVS            R1, #1
58062A:  STR             R1, [R0]; CTrain::GenTrain_Status
58062C:  BLX             rand
580630:  ADD.W           R1, R0, R0,LSR#31
580634:  BIC.W           R1, R1, #1
580638:  SUBS            R0, R0, R1
58063A:  ADDS            R0, #8
58063C:  STR             R0, [R4]; CTrain::GenTrain_TrainConfig
58063E:  B               loc_5808F0
580640:  LDR             R0, =(_ZN6CTrain20GenTrain_TrainConfigE_ptr - 0x580648)
580642:  LDR             R1, =(unk_61ECE4 - 0x58064C)
580644:  ADD             R0, PC; _ZN6CTrain20GenTrain_TrainConfigE_ptr
580646:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x580650)
580648:  ADD             R1, PC; unk_61ECE4
58064A:  LDR             R0, [R0]; CTrain::GenTrain_TrainConfig ...
58064C:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
58064E:  LDR             R5, [R2]; CStreaming::ms_aInfoForModel ...
580650:  LDR             R0, [R0]; CTrain::GenTrain_TrainConfig
580652:  ADD.W           R4, R1, R0,LSL#6
580656:  MOVS            R1, #1
580658:  LDR.W           R0, [R4],#4; this
58065C:  ADD.W           R2, R0, R0,LSL#2
580660:  ADD.W           R2, R5, R2,LSL#2
580664:  LDRB            R2, [R2,#0x10]; int
580666:  CMP             R2, #1
580668:  BEQ             loc_580672
58066A:  MOVS            R1, #8; int
58066C:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
580670:  MOVS            R1, #0
580672:  LDR.W           R0, [R4],#4
580676:  CMP             R0, #0
580678:  BNE             loc_58065C
58067A:  LSLS            R0, R1, #0x1F
58067C:  BEQ.W           loc_5808F0
580680:  LDR             R0, =(_ZN6CTrain14GenTrain_TrackE_ptr - 0x580688)
580682:  LDR             R1, =(_ZN6CTrain23GenTrain_GenerationNodeE_ptr - 0x58068C)
580684:  ADD             R0, PC; _ZN6CTrain14GenTrain_TrackE_ptr
580686:  LDR             R2, =(pTrackNodes_ptr - 0x580694)
580688:  ADD             R1, PC; _ZN6CTrain23GenTrain_GenerationNodeE_ptr
58068A:  VLDR            S2, =60.0
58068E:  LDR             R0, [R0]; CTrain::GenTrain_Track ...
580690:  ADD             R2, PC; pTrackNodes_ptr
580692:  LDR             R1, [R1]; CTrain::GenTrain_GenerationNode ...
580694:  LDR             R2, [R2]; pTrackNodes
580696:  LDR             R0, [R0]; CTrain::GenTrain_Track
580698:  LDR             R1, [R1]; CTrain::GenTrain_GenerationNode
58069A:  LDR.W           R2, [R2,R0,LSL#2]
58069E:  ADD.W           R3, R1, R1,LSL#2
5806A2:  LDR.W           R2, [R2,R3,LSL#1]
5806A6:  LDR             R3, =(TheCamera_ptr - 0x5806B0)
5806A8:  STR             R2, [SP,#0xA8+var_68]
5806AA:  ADD             R2, SP, #0xA8+var_68
5806AC:  ADD             R3, PC; TheCamera_ptr
5806AE:  VLD1.32         {D16[0]}, [R2@32]
5806B2:  VMOVL.S16       Q8, D16
5806B6:  LDR             R2, [R3]; TheCamera
5806B8:  VCVT.F32.S32    D16, D16
5806BC:  VMOV.I32        D17, #0x3E000000
5806C0:  LDR             R3, [R2,#(dword_951FBC - 0x951FA8)]
5806C2:  ADD.W           R6, R3, #0x30 ; '0'
5806C6:  CMP             R3, #0
5806C8:  VMUL.F32        D16, D16, D17
5806CC:  IT EQ
5806CE:  ADDEQ           R6, R2, #4
5806D0:  VLDR            D17, [R6]
5806D4:  VSUB.F32        D16, D16, D17
5806D8:  VMUL.F32        D0, D16, D16
5806DC:  VADD.F32        S0, S0, S1
5806E0:  VSQRT.F32       S0, S0
5806E4:  VCMPE.F32       S0, S2
5806E8:  VMRS            APSR_nzcv, FPSCR
5806EC:  BLE.W           loc_5808BE
5806F0:  LDR             R2, =(_ZN6CTrain18GenTrain_DirectionE_ptr - 0x5806FA)
5806F2:  ADD             R5, SP, #0xA8+var_58
5806F4:  LDR             R3, =(_ZN6CTrain20GenTrain_TrainConfigE_ptr - 0x5806FC)
5806F6:  ADD             R2, PC; _ZN6CTrain18GenTrain_DirectionE_ptr
5806F8:  ADD             R3, PC; _ZN6CTrain20GenTrain_TrainConfigE_ptr
5806FA:  LDR             R2, [R2]; CTrain::GenTrain_Direction ...
5806FC:  LDR             R6, [R3]; CTrain::GenTrain_TrainConfig ...
5806FE:  LDRB            R3, [R2]; CTrain::GenTrain_Direction
580700:  LDR             R2, [R6]; CTrain::GenTrain_TrainConfig
580702:  MOVS            R6, #0
580704:  STMEA.W         SP, {R2,R5,R6}
580708:  MOVS            R2, #0
58070A:  STRD.W          R1, R0, [SP,#0xA8+var_9C]
58070E:  MOVS            R0, #0
580710:  MOVS            R1, #0
580712:  STR             R6, [SP,#0xA8+var_94]
580714:  BLX             j__ZN6CTrain18CreateMissionTrainE7CVectorbjPPS_S2_iib; CTrain::CreateMissionTrain(CVector,bool,uint,CTrain**,CTrain**,int,int,bool)
580718:  LDR             R0, =(_ZN6CTrain14GenTrain_TrackE_ptr - 0x58071E)
58071A:  ADD             R0, PC; _ZN6CTrain14GenTrain_TrackE_ptr
58071C:  LDR             R0, [R0]; CTrain::GenTrain_Track ...
58071E:  LDR             R4, [R0]; CTrain::GenTrain_Track
580720:  BLX             rand
580724:  CBZ             R4, loc_580742
580726:  MOV             R1, #0x92492493
58072E:  SMMLA.W         R1, R1, R0, R0
580732:  ASRS            R2, R1, #2
580734:  ADD.W           R1, R2, R1,LSR#31
580738:  RSB.W           R1, R1, R1,LSL#3
58073C:  SUBS            R0, R0, R1
58073E:  ADDS            R0, #7
580740:  B               loc_5807C0
580742:  LDR             R1, =(_ZN6CTrain14GenTrain_TrackE_ptr - 0x58074A)
580744:  LDR             R2, =(_ZN6CTrain23GenTrain_GenerationNodeE_ptr - 0x58074E)
580746:  ADD             R1, PC; _ZN6CTrain14GenTrain_TrackE_ptr
580748:  LDR             R3, =(pTrackNodes_ptr - 0x580756)
58074A:  ADD             R2, PC; _ZN6CTrain23GenTrain_GenerationNodeE_ptr
58074C:  VLDR            S2, =300.0
580750:  LDR             R1, [R1]; CTrain::GenTrain_Track ...
580752:  ADD             R3, PC; pTrackNodes_ptr
580754:  LDR             R2, [R2]; CTrain::GenTrain_GenerationNode ...
580756:  LDR             R3, [R3]; pTrackNodes
580758:  LDR             R1, [R1]; CTrain::GenTrain_Track
58075A:  LDR             R2, [R2]; CTrain::GenTrain_GenerationNode
58075C:  LDR.W           R1, [R3,R1,LSL#2]
580760:  ADD.W           R2, R2, R2,LSL#2
580764:  LDR.W           R1, [R1,R2,LSL#1]
580768:  STR             R1, [SP,#0xA8+var_6C]
58076A:  ADD             R1, SP, #0xA8+var_6C
58076C:  VLD1.32         {D16[0]}, [R1@32]
580770:  MOV             R1, #0x88888889
580778:  SMMLA.W         R1, R1, R0, R0
58077C:  VMOVL.S16       Q8, D16
580780:  VCVT.F32.S32    D16, D16
580784:  VMOV.I32        D17, #0x3E000000
580788:  ASRS            R2, R1, #4
58078A:  ADD.W           R1, R2, R1,LSR#31
58078E:  VMUL.F32        D16, D16, D17
580792:  VLDR            D17, =5.05293436e23
580796:  RSB.W           R1, R1, R1,LSL#4
58079A:  SUB.W           R0, R0, R1,LSL#1
58079E:  VADD.F32        D16, D16, D17
5807A2:  ADDS            R0, #0xF
5807A4:  VMUL.F32        D0, D16, D16
5807A8:  VADD.F32        S0, S0, S1
5807AC:  VSQRT.F32       S0, S0
5807B0:  VCMPE.F32       S0, S2
5807B4:  VMRS            APSR_nzcv, FPSCR
5807B8:  ITT LT
5807BA:  ADDLT.W         R0, R0, R0,LSR#31
5807BE:  ASRLT           R0, R0, #1
5807C0:  LDR             R1, [SP,#0xA8+var_58]
5807C2:  LDRB.W          R2, [R1,#0x5D4]
5807C6:  CBZ             R2, loc_5807D2
5807C8:  VLDR            S0, =50.0
5807CC:  LDRH.W          R2, [R1,#0x5CC]
5807D0:  B               loc_580892
5807D2:  VMOV.F32        S6, #-0.5
5807D6:  LDR             R3, =(unk_A12EA4 - 0x5807E2)
5807D8:  VMOV.F32        S8, #0.5
5807DC:  LDR             R5, =(StationDist_ptr - 0x5807E8)
5807DE:  ADD             R3, PC; unk_A12EA4
5807E0:  LDRH.W          R2, [R1,#0x5CC]
5807E4:  ADD             R5, PC; StationDist_ptr
5807E6:  ADR             R6, dword_5809AC
5807E8:  VLDR            S2, [R3]
5807EC:  ADDW            R3, R1, #0x5BC
5807F0:  LDR             R5, [R5]; StationDist
5807F2:  VLDR            S4, [R3]
5807F6:  ANDS.W          R3, R2, #0x40 ; '@'
5807FA:  VMUL.F32        S6, S2, S6
5807FE:  IT EQ
580800:  ADDEQ           R6, #4
580802:  VMUL.F32        S8, S2, S8
580806:  VLDR            S10, [R6]
58080A:  VLDR            S0, =10000.0
58080E:  MOVS            R6, #0
580810:  ADD.W           R4, R5, R6,LSL#2
580814:  VLDR            S12, [R4]
580818:  VSUB.F32        S12, S12, S4
58081C:  VADD.F32        S12, S10, S12
580820:  B               loc_580826
580822:  VSUB.F32        S12, S12, S2
580826:  VCMPE.F32       S12, S8
58082A:  VMRS            APSR_nzcv, FPSCR
58082E:  BGT             loc_580822
580830:  B               loc_580836
580832:  VADD.F32        S12, S2, S12
580836:  VCMPE.F32       S12, S6
58083A:  VMRS            APSR_nzcv, FPSCR
58083E:  BLT             loc_580832
580840:  VCMPE.F32       S12, #0.0
580844:  CBNZ            R3, loc_580856
580846:  VMRS            APSR_nzcv, FPSCR
58084A:  ITT LT
58084C:  VNEGLT.F32      S12, S12
580850:  VMINLT.F32      D0, D0, D6
580854:  B               loc_580860
580856:  VMRS            APSR_nzcv, FPSCR
58085A:  IT GT
58085C:  VMINGT.F32      D0, D6, D0
580860:  ADDS            R6, #1
580862:  CMP             R6, #6
580864:  BNE             loc_580810
580866:  VLDR            S2, =500.0
58086A:  VCMPE.F32       S0, S2
58086E:  VMRS            APSR_nzcv, FPSCR
580872:  BGE             loc_58088E
580874:  VSUB.F32        S0, S2, S0
580878:  VDIV.F32        S0, S0, S2
58087C:  VMOV.F32        S2, #1.0
580880:  VSUB.F32        S0, S2, S0
580884:  VLDR            S2, =50.0
580888:  VMUL.F32        S0, S0, S2
58088C:  B               loc_580892
58088E:  VLDR            S0, =100000.0
580892:  VMOV            S4, R0
580896:  VLDR            S2, =50.0
58089A:  LSLS            R2, R2, #0x19
58089C:  VCVT.F32.S32    S4, S4
5808A0:  VMIN.F32        D0, D0, D2
5808A4:  VDIV.F32        S0, S0, S2
5808A8:  VNEG.F32        S2, S0
5808AC:  IT PL
5808AE:  VMOVPL.F32      S0, S2
5808B2:  STRB.W          R0, [R1,#0x3D4]
5808B6:  ADD.W           R0, R1, #0x5B8
5808BA:  VSTR            S0, [R0]
5808BE:  LDR             R0, =(_ZN6CTrain20GenTrain_TrainConfigE_ptr - 0x5808C6)
5808C0:  LDR             R1, =(unk_61ECE4 - 0x5808C8)
5808C2:  ADD             R0, PC; _ZN6CTrain20GenTrain_TrainConfigE_ptr
5808C4:  ADD             R1, PC; unk_61ECE4 ; int
5808C6:  LDR             R0, [R0]; CTrain::GenTrain_TrainConfig ...
5808C8:  LDR             R0, [R0]; CTrain::GenTrain_TrainConfig
5808CA:  ADD.W           R4, R1, R0,LSL#6
5808CE:  LDR.W           R0, [R4],#4; this
5808D2:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
5808D6:  LDR.W           R0, [R4,#-4]; this
5808DA:  BLX             j__ZN10CStreaming22SetModelTxdIsDeletableEi; CStreaming::SetModelTxdIsDeletable(int)
5808DE:  LDR.W           R0, [R4],#4
5808E2:  CMP             R0, #0
5808E4:  BNE             loc_5808D2
5808E6:  LDR             R0, =(_ZN6CTrain15GenTrain_StatusE_ptr - 0x5808EE)
5808E8:  MOVS            R1, #0
5808EA:  ADD             R0, PC; _ZN6CTrain15GenTrain_StatusE_ptr
5808EC:  LDR             R0, [R0]; CTrain::GenTrain_Status ...
5808EE:  STR             R1, [R0]; CTrain::GenTrain_Status
5808F0:  ADD             SP, SP, #0x60 ; '`'
5808F2:  VPOP            {D8-D12}
5808F6:  ADD             SP, SP, #4
5808F8:  POP.W           {R8-R11}
5808FC:  POP             {R4-R7,PC}
