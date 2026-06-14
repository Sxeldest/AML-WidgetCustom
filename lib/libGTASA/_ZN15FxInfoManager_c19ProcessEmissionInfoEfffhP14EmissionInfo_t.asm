; =========================================================
; Game Engine Function: _ZN15FxInfoManager_c19ProcessEmissionInfoEfffhP14EmissionInfo_t
; Address            : 0x36A140 - 0x36A1FC
; =========================================================

36A140:  PUSH            {R4-R7,LR}
36A142:  ADD             R7, SP, #0xC
36A144:  PUSH.W          {R8-R11}
36A148:  SUB             SP, SP, #4
36A14A:  VPUSH           {D8}
36A14E:  SUB             SP, SP, #0x10
36A150:  LDR.W           R8, [R7,#arg_4]
36A154:  MOV             R10, R1
36A156:  ADR             R1, dword_36A200
36A158:  VMOV.F32        S0, #10.0
36A15C:  MOV             R6, R0
36A15E:  VLD1.64         {D18-D19}, [R1@128]
36A162:  VMOV.I32        Q8, #0
36A166:  MOVS            R0, #0
36A168:  MOV.W           R1, #0x40000000
36A16C:  MOV             R11, R2
36A16E:  STRD.W          R1, R0, [R8,#0x5C]
36A172:  ADD.W           R0, R8, #0x20 ; ' '
36A176:  STR.W           R1, [R8,#0x64]
36A17A:  VMOV            S2, R11
36A17E:  VST1.32         {D16-D17}, [R0]
36A182:  ADD.W           R0, R8, #0x14
36A186:  VMUL.F32        S0, S2, S0
36A18A:  VST1.32         {D16-D17}, [R0]
36A18E:  ADD.W           R0, R8, #4
36A192:  VST1.32         {D16-D17}, [R0]
36A196:  ADD.W           R0, R8, #0x30 ; '0'
36A19A:  VST1.32         {D18-D19}, [R0]
36A19E:  ADD.W           R0, R8, #0x40 ; '@'
36A1A2:  VST1.32         {D16-D17}, [R0]
36A1A6:  ADD.W           R0, R8, #0x4C ; 'L'
36A1AA:  VST1.32         {D16-D17}, [R0]
36A1AE:  VSTR            S0, [R8]
36A1B2:  LDRSB.W         R1, [R6,#8]
36A1B6:  CMP             R1, #1
36A1B8:  BLT             loc_36A1EE
36A1BA:  LDR.W           R9, [R7,#arg_0]
36A1BE:  VMOV            S16, R3
36A1C2:  MOVS            R5, #0
36A1C4:  LDR             R0, [R6,#4]
36A1C6:  LDR.W           R0, [R0,R5,LSL#2]
36A1CA:  LDRB            R2, [R0,#5]
36A1CC:  LSLS            R2, R2, #0x1B
36A1CE:  BPL             loc_36A1E6
36A1D0:  LDR             R1, [R0]
36A1D2:  MOVS            R2, #0
36A1D4:  MOV             R3, R11
36A1D6:  LDR             R4, [R1,#0xC]
36A1D8:  MOV             R1, R10
36A1DA:  STRD.W          R9, R8, [SP,#0x38+var_34]
36A1DE:  VSTR            S16, [SP,#0x38+var_38]
36A1E2:  BLX             R4
36A1E4:  LDRB            R1, [R6,#8]
36A1E6:  ADDS            R5, #1
36A1E8:  SXTB            R0, R1
36A1EA:  CMP             R5, R0
36A1EC:  BLT             loc_36A1C4
36A1EE:  ADD             SP, SP, #0x10
36A1F0:  VPOP            {D8}
36A1F4:  ADD             SP, SP, #4
36A1F6:  POP.W           {R8-R11}
36A1FA:  POP             {R4-R7,PC}
