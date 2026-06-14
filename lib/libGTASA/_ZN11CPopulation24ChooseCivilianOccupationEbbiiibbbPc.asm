; =========================================================
; Game Engine Function: _ZN11CPopulation24ChooseCivilianOccupationEbbiiibbbPc
; Address            : 0x4CFDCC - 0x4CFFA6
; =========================================================

4CFDCC:  PUSH            {R4-R7,LR}
4CFDCE:  ADD             R7, SP, #0xC
4CFDD0:  PUSH.W          {R8-R11}
4CFDD4:  SUB             SP, SP, #4
4CFDD6:  VPUSH           {D8}
4CFDDA:  SUB             SP, SP, #0x40
4CFDDC:  STRD.W          R1, R2, [SP,#0x68+var_3C]
4CFDE0:  MOV             R4, R3
4CFDE2:  STR             R0, [SP,#0x68+var_34]
4CFDE4:  MOVS            R3, #3
4CFDE6:  LDR             R0, =(_ZN11CPopulation25NumberOfPedsInUseInteriorE_ptr - 0x4CFDF4)
4CFDE8:  MOVS            R2, #3
4CFDEA:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x4CFDFA)
4CFDEC:  MOV.W           R10, #0
4CFDF0:  ADD             R0, PC; _ZN11CPopulation25NumberOfPedsInUseInteriorE_ptr
4CFDF2:  VLDR            S16, =0.1
4CFDF6:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
4CFDF8:  LDR             R0, [R0]; CPopulation::NumberOfPedsInUseInterior ...
4CFDFA:  LDR             R1, [R1]; CGame::currArea ...
4CFDFC:  LDR             R0, [R0]; CPopulation::NumberOfPedsInUseInterior
4CFDFE:  LDR             R1, [R1]; int
4CFE00:  CMP             R0, #0x14
4CFE02:  LDR             R0, [R7,#arg_8]
4CFE04:  IT GT
4CFE06:  MOVGT           R3, #5
4CFE08:  CMP             R1, #0
4CFE0A:  IT EQ
4CFE0C:  MOVEQ           R3, R2
4CFE0E:  CMP             R0, #0
4CFE10:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x4CFE1C)
4CFE12:  IT EQ
4CFE14:  MOVEQ           R3, #7
4CFE16:  STR             R3, [SP,#0x68+var_44]
4CFE18:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
4CFE1A:  LDR.W           R9, [R0]; CStreaming::ms_pedsLoaded ...
4CFE1E:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x4CFE24)
4CFE20:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
4CFE22:  LDR.W           R8, [R0]; CStreaming::ms_aInfoForModel ...
4CFE26:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CFE2C)
4CFE28:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CFE2A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CFE2C:  STR             R0, [SP,#0x68+var_2C]
4CFE2E:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x4CFE34)
4CFE30:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
4CFE32:  LDR             R0, [R0]; CGame::currArea ...
4CFE34:  STR             R0, [SP,#0x68+var_30]
4CFE36:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CFE3C)
4CFE38:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CFE3A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CFE3C:  STR             R0, [SP,#0x68+var_40]
4CFE3E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CFE44)
4CFE40:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CFE42:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CFE44:  STR             R0, [SP,#0x68+var_48]
4CFE46:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CFE4C)
4CFE48:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CFE4A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CFE4C:  STR             R0, [SP,#0x68+var_4C]
4CFE4E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CFE54)
4CFE50:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CFE52:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CFE54:  STR             R0, [SP,#0x68+var_54]
4CFE56:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CFE5C)
4CFE58:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CFE5A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CFE5C:  STR             R0, [SP,#0x68+var_64]
4CFE5E:  LDR             R0, =(_ZN8CWeather4RainE_ptr - 0x4CFE64)
4CFE60:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
4CFE62:  LDR             R0, [R0]; CWeather::Rain ...
4CFE64:  STR             R0, [SP,#0x68+var_5C]
4CFE66:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CFE6C)
4CFE68:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CFE6A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CFE6C:  STR             R0, [SP,#0x68+var_60]
4CFE6E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CFE74)
4CFE70:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CFE72:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CFE74:  STR             R0, [SP,#0x68+var_58]
4CFE76:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CFE7C)
4CFE78:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CFE7A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CFE7C:  STR             R0, [SP,#0x68+var_50]
4CFE7E:  MOVS            R0, #0
4CFE80:  MOV             R6, R0
4CFE82:  LDR.W           R5, [R9,R6,LSL#2]
4CFE86:  CMP             R5, #0
4CFE88:  BLT             loc_4CFF76
4CFE8A:  ADD.W           R0, R5, R5,LSL#2
4CFE8E:  ADD.W           R0, R8, R0,LSL#2
4CFE92:  LDRB            R0, [R0,#0x10]
4CFE94:  CMP             R0, #1
4CFE96:  BNE             loc_4CFF76
4CFE98:  CMP             R5, R4
4CFE9A:  BEQ             loc_4CFF76
4CFE9C:  LDR             R0, [SP,#0x68+var_2C]
4CFE9E:  LDR.W           R0, [R0,R5,LSL#2]
4CFEA2:  LDRSH.W         R0, [R0,#0x1E]
4CFEA6:  CMP             R10, R0
4CFEA8:  BNE             loc_4CFF76
4CFEAA:  MOV             R0, R5; this
4CFEAC:  BLX             j__ZN9CPopCycle28PedIsAcceptableInCurrentZoneEi; CPopCycle::PedIsAcceptableInCurrentZone(int)
4CFEB0:  LDR             R1, [SP,#0x68+var_30]
4CFEB2:  CMP             R0, #0
4CFEB4:  LDR.W           R11, [R1]
4CFEB8:  IT EQ
4CFEBA:  CMPEQ.W         R11, #0
4CFEBE:  BEQ             loc_4CFF76
4CFEC0:  LDR             R0, [R7,#arg_4]
4CFEC2:  CMP             R0, #1
4CFEC4:  BNE             loc_4CFED4
4CFEC6:  LDR             R0, [SP,#0x68+var_40]
4CFEC8:  LDR.W           R0, [R0,R5,LSL#2]
4CFECC:  LDRB.W          R0, [R0,#0x49]
4CFED0:  LSLS            R0, R0, #0x1B
4CFED2:  BPL             loc_4CFF76
4CFED4:  LDR             R0, [SP,#0x68+var_34]
4CFED6:  CMP             R0, #1
4CFED8:  BNE             loc_4CFEE6
4CFEDA:  LDR             R0, [SP,#0x68+var_48]
4CFEDC:  LDR.W           R0, [R0,R5,LSL#2]
4CFEE0:  LDR             R0, [R0,#0x40]
4CFEE2:  CMP             R0, #4
4CFEE4:  BNE             loc_4CFF76
4CFEE6:  LDR             R0, [SP,#0x68+var_3C]
4CFEE8:  CMP             R0, #1
4CFEEA:  BNE             loc_4CFEF8
4CFEEC:  LDR             R0, [SP,#0x68+var_4C]
4CFEEE:  LDR.W           R0, [R0,R5,LSL#2]
4CFEF2:  LDR             R0, [R0,#0x40]
4CFEF4:  CMP             R0, #5
4CFEF6:  BNE             loc_4CFF76
4CFEF8:  LDR             R0, [SP,#0x68+var_38]
4CFEFA:  CMP             R0, #0
4CFEFC:  BLT             loc_4CFF0C
4CFEFE:  LDR             R0, [SP,#0x68+var_50]
4CFF00:  LDR             R1, [SP,#0x68+var_38]
4CFF02:  LDR.W           R0, [R0,R5,LSL#2]
4CFF06:  LDR             R0, [R0,#0x3C]
4CFF08:  CMP             R0, R1
4CFF0A:  BNE             loc_4CFF76
4CFF0C:  LDR             R0, [R7,#arg_C]
4CFF0E:  CMP             R0, #1
4CFF10:  BNE             loc_4CFF2C
4CFF12:  LDR             R0, [SP,#0x68+var_54]
4CFF14:  LDR.W           R0, [R0,R5,LSL#2]
4CFF18:  LDR             R0, [R0,#0x40]
4CFF1A:  SUBS            R0, #0x11
4CFF1C:  CMP             R0, #6
4CFF1E:  BCC             loc_4CFF76
4CFF20:  LDR             R1, [R7,#arg_10]; char *
4CFF22:  MOV             R0, R5; this
4CFF24:  BLX             j__ZN11CPopulation32PedMICanBeCreatedAtThisAttractorEiPc; CPopulation::PedMICanBeCreatedAtThisAttractor(int,char *)
4CFF28:  CMP             R0, #1
4CFF2A:  BNE             loc_4CFF76
4CFF2C:  CMP.W           R11, #0
4CFF30:  BEQ             loc_4CFF40
4CFF32:  LDR             R0, [SP,#0x68+var_58]
4CFF34:  LDR.W           R0, [R0,R5,LSL#2]
4CFF38:  LDR             R0, [R0,#0x40]
4CFF3A:  SUBS            R0, #6
4CFF3C:  CMP             R0, #0x11
4CFF3E:  BCC             loc_4CFF76
4CFF40:  LDR             R0, [R7,#arg_0]
4CFF42:  CMP             R0, #0
4CFF44:  BLT             loc_4CFF56
4CFF46:  LDR             R0, [SP,#0x68+var_64]
4CFF48:  LDR             R1, [R7,#arg_0]; int
4CFF4A:  LDR.W           R0, [R0,R5,LSL#2]
4CFF4E:  LDR             R0, [R0,#0x44]; this
4CFF50:  BLX             j__ZN11CPopulation21ArePedStatsCompatibleEii; CPopulation::ArePedStatsCompatible(int,int)
4CFF54:  CBZ             R0, loc_4CFF76
4CFF56:  LDR             R0, [SP,#0x68+var_5C]
4CFF58:  VLDR            S0, [R0]
4CFF5C:  VCMPE.F32       S0, S16
4CFF60:  VMRS            APSR_nzcv, FPSCR
4CFF64:  BLT             loc_4CFF96
4CFF66:  LDR             R0, [SP,#0x68+var_60]
4CFF68:  LDR.W           R0, [R0,R5,LSL#2]
4CFF6C:  LDR             R0, [R0,#0x44]
4CFF6E:  BIC.W           R0, R0, #1
4CFF72:  CMP             R0, #0x26 ; '&'
4CFF74:  BNE             loc_4CFF96
4CFF76:  ADDS            R0, R6, #1
4CFF78:  CMP             R6, #7
4CFF7A:  BLT.W           loc_4CFE80
4CFF7E:  LDR             R0, [SP,#0x68+var_44]
4CFF80:  ADD.W           R10, R10, #1
4CFF84:  CMP             R10, R0
4CFF86:  BLT.W           loc_4CFE7E
4CFF8A:  LDR             R0, [R7,#arg_8]
4CFF8C:  MOVS            R5, #7
4CFF8E:  CMP             R0, #0
4CFF90:  IT NE
4CFF92:  MOVNE.W         R5, #0xFFFFFFFF
4CFF96:  MOV             R0, R5
4CFF98:  ADD             SP, SP, #0x40 ; '@'
4CFF9A:  VPOP            {D8}
4CFF9E:  ADD             SP, SP, #4
4CFFA0:  POP.W           {R8-R11}
4CFFA4:  POP             {R4-R7,PC}
