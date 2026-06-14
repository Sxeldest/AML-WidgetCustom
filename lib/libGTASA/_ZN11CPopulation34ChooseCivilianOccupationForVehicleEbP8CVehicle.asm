; =========================================================
; Game Engine Function: _ZN11CPopulation34ChooseCivilianOccupationForVehicleEbP8CVehicle
; Address            : 0x4D0020 - 0x4D01B8
; =========================================================

4D0020:  PUSH            {R4-R7,LR}
4D0022:  ADD             R7, SP, #0xC
4D0024:  PUSH.W          {R8-R11}
4D0028:  SUB             SP, SP, #0x24
4D002A:  STR             R0, [SP,#0x40+var_28]
4D002C:  MOV             R9, R1
4D002E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D0038)
4D0030:  LDRSH.W         R1, [R9,#0x26]
4D0034:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D0036:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D0038:  LDR.W           R0, [R0,R1,LSL#2]
4D003C:  LDRSB.W         R0, [R0,#0x65]
4D0040:  ADDS            R1, R0, #1
4D0042:  BEQ.W           loc_4D01AC
4D0046:  MOVS            R1, #1
4D0048:  LSL.W           R0, R1, R0
4D004C:  STR             R0, [SP,#0x40+var_38]
4D004E:  MOVS            R0, #0
4D0050:  STR             R0, [SP,#0x40+var_30]
4D0052:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x4D0058)
4D0054:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
4D0056:  LDR.W           R8, [R0]; CStreaming::ms_pedsLoaded ...
4D005A:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x4D0060)
4D005C:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
4D005E:  LDR.W           R11, [R0]; CStreaming::ms_aInfoForModel ...
4D0062:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x4D0068)
4D0064:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
4D0066:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
4D0068:  STR             R0, [SP,#0x40+var_24]
4D006A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D0070)
4D006C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D006E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D0070:  STR             R0, [SP,#0x40+var_3C]
4D0072:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D0078)
4D0074:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D0076:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D0078:  STR             R0, [SP,#0x40+var_34]
4D007A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D0080)
4D007C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D007E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D0080:  STR             R0, [SP,#0x40+var_2C]
4D0082:  MOVS            R5, #0
4D0084:  MOVS            R0, #0
4D0086:  STR             R5, [SP,#0x40+var_20]
4D0088:  MOV             R10, R0
4D008A:  LDR.W           R6, [R8,R10,LSL#2]
4D008E:  CMP             R6, #0
4D0090:  BLT             loc_4D0182
4D0092:  ADD.W           R0, R6, R6,LSL#2
4D0096:  ADD.W           R0, R11, R0,LSL#2
4D009A:  LDRB            R0, [R0,#0x10]
4D009C:  CMP             R0, #1
4D009E:  BNE             loc_4D0182
4D00A0:  CMP             R5, #4
4D00A2:  BEQ             loc_4D00B2
4D00A4:  LDR             R0, [SP,#0x40+var_2C]
4D00A6:  LDR.W           R0, [R0,R6,LSL#2]
4D00AA:  LDRSH.W         R0, [R0,#0x1E]
4D00AE:  CMP             R5, R0
4D00B0:  BNE             loc_4D0182
4D00B2:  LDR             R5, [SP,#0x40+var_24]
4D00B4:  LDRB.W          R0, [R5,#0x2F]
4D00B8:  LDRB.W          R1, [R5,#0x30]; int
4D00BC:  LDRB.W          R2, [R5,#0x31]
4D00C0:  ORRS            R0, R1
4D00C2:  LDRB.W          R3, [R5,#0x32]
4D00C6:  ORRS            R0, R2
4D00C8:  LDRB.W          R12, [R5,#0x4E]
4D00CC:  LDRB.W          LR, [R5,#0x53]
4D00D0:  ORRS            R0, R3
4D00D2:  LDRB.W          R4, [R5,#0x35]
4D00D6:  LDRB.W          R5, [R5,#0x34]
4D00DA:  ORRS            R0, R5
4D00DC:  LDR             R5, [SP,#0x40+var_20]
4D00DE:  ORRS            R0, R4
4D00E0:  ORR.W           R0, R0, R12
4D00E4:  ORR.W           R0, R0, LR
4D00E8:  LSLS            R0, R0, #0x18
4D00EA:  BEQ             loc_4D011A
4D00EC:  LDR             R0, [SP,#0x40+var_28]
4D00EE:  CMP             R0, #1
4D00F0:  BNE             loc_4D00FE
4D00F2:  LDR             R0, [SP,#0x40+var_34]
4D00F4:  LDR.W           R0, [R0,R6,LSL#2]
4D00F8:  LDR             R0, [R0,#0x40]
4D00FA:  CMP             R0, #4
4D00FC:  BNE             loc_4D0182
4D00FE:  LDR             R0, [SP,#0x40+var_30]
4D0100:  CMP             R0, #1
4D0102:  BEQ             loc_4D01AE
4D0104:  LDR.W           R0, [R9,#0x464]
4D0108:  CBZ             R0, loc_4D0136
4D010A:  LDRSH.W         R0, [R0,#0x26]
4D010E:  CMP             R6, R0
4D0110:  MOV.W           R0, #0
4D0114:  IT EQ
4D0116:  MOVEQ           R0, #1
4D0118:  B               loc_4D0138
4D011A:  MOV             R0, R6; this
4D011C:  BLX             j__ZN9CPopCycle28PedIsAcceptableInCurrentZoneEi; CPopCycle::PedIsAcceptableInCurrentZone(int)
4D0120:  CMP             R0, #1
4D0122:  BNE             loc_4D0182
4D0124:  LDR             R0, [SP,#0x40+var_3C]
4D0126:  LDR             R1, [SP,#0x40+var_38]
4D0128:  LDR.W           R0, [R0,R6,LSL#2]
4D012C:  LDRH.W          R0, [R0,#0x48]
4D0130:  TST             R1, R0
4D0132:  BNE             loc_4D00EC
4D0134:  B               loc_4D0182
4D0136:  MOVS            R0, #0
4D0138:  LDR.W           R1, [R9,#0x468]
4D013C:  CBZ             R1, loc_4D014E
4D013E:  LDRSH.W         R1, [R1,#0x26]
4D0142:  CMP             R6, R1
4D0144:  MOV.W           R1, #0
4D0148:  IT EQ
4D014A:  MOVEQ           R1, #1
4D014C:  ORRS            R0, R1
4D014E:  LDR.W           R1, [R9,#0x46C]
4D0152:  CBZ             R1, loc_4D0164
4D0154:  LDRSH.W         R1, [R1,#0x26]
4D0158:  CMP             R6, R1
4D015A:  MOV.W           R1, #0
4D015E:  IT EQ
4D0160:  MOVEQ           R1, #1
4D0162:  ORRS            R0, R1
4D0164:  LDR.W           R1, [R9,#0x470]
4D0168:  CBZ             R1, loc_4D017E
4D016A:  LDRSH.W         R1, [R1,#0x26]
4D016E:  CMP             R6, R1
4D0170:  MOV.W           R1, #0
4D0174:  IT EQ
4D0176:  MOVEQ           R1, #1
4D0178:  ORRS            R0, R1
4D017A:  BNE             loc_4D0182
4D017C:  B               loc_4D01AE
4D017E:  CMP             R0, #0
4D0180:  BEQ             loc_4D01AE
4D0182:  ADD.W           R0, R10, #1
4D0186:  CMP.W           R10, #7
4D018A:  BLT.W           loc_4D0088
4D018E:  ADDS            R0, R5, #1
4D0190:  CMP             R5, #4
4D0192:  MOV             R5, R0
4D0194:  BLT.W           loc_4D0084
4D0198:  LDR             R0, [SP,#0x40+var_30]
4D019A:  MOVS            R6, #7
4D019C:  MOV             R1, R0
4D019E:  CMP             R1, #1
4D01A0:  ADD.W           R0, R1, #1
4D01A4:  STR             R0, [SP,#0x40+var_30]
4D01A6:  BLT.W           loc_4D0082
4D01AA:  B               loc_4D01AE
4D01AC:  MOVS            R6, #7
4D01AE:  MOV             R0, R6
4D01B0:  ADD             SP, SP, #0x24 ; '$'
4D01B2:  POP.W           {R8-R11}
4D01B6:  POP             {R4-R7,PC}
