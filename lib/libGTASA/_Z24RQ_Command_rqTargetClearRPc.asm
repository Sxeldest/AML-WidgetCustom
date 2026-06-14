; =========================================================
; Game Engine Function: _Z24RQ_Command_rqTargetClearRPc
; Address            : 0x1D10C4 - 0x1D11BC
; =========================================================

1D10C4:  PUSH            {R4-R7,LR}
1D10C6:  ADD             R7, SP, #0xC
1D10C8:  PUSH.W          {R11}
1D10CC:  VPUSH           {D8}
1D10D0:  LDR             R3, [R0]
1D10D2:  LDR             R1, =(unk_6BCC30 - 0x1D10E2)
1D10D4:  ADD.W           R5, R3, #0x14
1D10D8:  ADD.W           R4, R3, #0x18
1D10DC:  MOV             R2, R3
1D10DE:  ADD             R1, PC; unk_6BCC30
1D10E0:  LDR.W           R6, [R2],#0x1C
1D10E4:  STR             R5, [R0]
1D10E6:  LDR             R5, [R3,#0x14]
1D10E8:  STR             R4, [R0]
1D10EA:  LDR             R4, [R3,#0x18]
1D10EC:  STR             R2, [R0]
1D10EE:  VMOV            S16, R5
1D10F2:  VLDR            S0, [R3,#4]
1D10F6:  VLDR            S2, [R1]
1D10FA:  VCMP.F32        S0, S2
1D10FE:  VMRS            APSR_nzcv, FPSCR
1D1102:  BNE             loc_1D1146
1D1104:  LDR             R0, =(unk_6BCC30 - 0x1D110E)
1D1106:  VLDR            S2, [R3,#8]
1D110A:  ADD             R0, PC; unk_6BCC30
1D110C:  VLDR            S4, [R0,#4]
1D1110:  VCMP.F32        S2, S4
1D1114:  VMRS            APSR_nzcv, FPSCR
1D1118:  BNE             loc_1D1146
1D111A:  LDR             R0, =(unk_6BCC30 - 0x1D1124)
1D111C:  VLDR            S2, [R3,#0xC]
1D1120:  ADD             R0, PC; unk_6BCC30
1D1122:  VLDR            S4, [R0,#8]
1D1126:  VCMP.F32        S2, S4
1D112A:  VMRS            APSR_nzcv, FPSCR
1D112E:  BNE             loc_1D1146
1D1130:  LDR             R0, =(unk_6BCC30 - 0x1D113A)
1D1132:  VLDR            S2, [R3,#0x10]
1D1136:  ADD             R0, PC; unk_6BCC30
1D1138:  VLDR            S4, [R0,#0xC]
1D113C:  VCMP.F32        S2, S4
1D1140:  VMRS            APSR_nzcv, FPSCR
1D1144:  BEQ             loc_1D1160
1D1146:  VMOV            R0, S0; red
1D114A:  LDR             R2, =(unk_6BCC30 - 0x1D1154)
1D114C:  ADDS            R1, R3, #4
1D114E:  ADDS            R3, #8
1D1150:  ADD             R2, PC; unk_6BCC30
1D1152:  VLD1.32         {D16-D17}, [R1]
1D1156:  VST1.64         {D16-D17}, [R2@128]
1D115A:  LDM             R3, {R1-R3}; alpha
1D115C:  BLX             glClearColor
1D1160:  LDR             R0, =(unk_67A3CC - 0x1D1166)
1D1162:  ADD             R0, PC; unk_67A3CC
1D1164:  VLDR            S0, [R0]
1D1168:  VCMP.F32        S16, S0
1D116C:  VMRS            APSR_nzcv, FPSCR
1D1170:  BEQ             loc_1D1180
1D1172:  LDR             R0, =(unk_67A3CC - 0x1D1178)
1D1174:  ADD             R0, PC; unk_67A3CC
1D1176:  VSTR            S16, [R0]
1D117A:  MOV             R0, R5
1D117C:  BLX             glClearDepthf
1D1180:  LDR             R0, =(dword_67A3D0 - 0x1D1186)
1D1182:  ADD             R0, PC; dword_67A3D0
1D1184:  LDR             R0, [R0]
1D1186:  CMP             R4, R0
1D1188:  BEQ             loc_1D1196
1D118A:  LDR             R0, =(dword_67A3D0 - 0x1D1190)
1D118C:  ADD             R0, PC; dword_67A3D0
1D118E:  STR             R4, [R0]
1D1190:  MOV             R0, R4; s
1D1192:  BLX             glClearStencil
1D1196:  MOV.W           R1, #0x100
1D119A:  MOV.W           R0, #0x400
1D119E:  AND.W           R1, R1, R6,LSL#7
1D11A2:  AND.W           R0, R0, R6,LSL#8
1D11A6:  BFI.W           R1, R6, #0xE, #1
1D11AA:  ORRS            R0, R1; mask
1D11AC:  VPOP            {D8}
1D11B0:  POP.W           {R11}
1D11B4:  POP.W           {R4-R7,LR}
1D11B8:  B.W             j_glClear
