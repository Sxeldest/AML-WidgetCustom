; =========================================================
; Game Engine Function: sub_12B090
; Address            : 0x12B090 - 0x12B2BC
; =========================================================

12B090:  PUSH            {R4-R7,LR}
12B092:  ADD             R7, SP, #0xC
12B094:  PUSH.W          {R8-R11}
12B098:  SUB             SP, SP, #4
12B09A:  VPUSH           {D8-D12}
12B09E:  SUB             SP, SP, #0x18
12B0A0:  LDRB            R4, [R2]
12B0A2:  MOV             R5, R1
12B0A4:  MOV             R10, R0
12B0A6:  MOVS            R0, #0
12B0A8:  LDR             R1, [R2,#4]
12B0AA:  ANDS.W          R6, R4, #1
12B0AE:  STRD.W          R0, R0, [R10]
12B0B2:  IT EQ
12B0B4:  LSREQ           R1, R4, #1
12B0B6:  CMP             R1, #0
12B0B8:  BEQ.W           loc_12B2AE
12B0BC:  VLDR            S24, =0.0
12B0C0:  VMOV            S22, R3
12B0C4:  ADD.W           R9, SP, #0x60+var_50
12B0C8:  MOVS            R4, #0
12B0CA:  VMOV.F32        S20, S24
12B0CE:  VMOV.F32        S18, S24
12B0D2:  VMOV.F32        S16, S24
12B0D6:  VCMP.F32        S22, #0.0
12B0DA:  VMRS            APSR_nzcv, FPSCR
12B0DE:  ITT EQ
12B0E0:  LDREQ           R0, [R5,#8]
12B0E2:  VLDREQ          S22, [R0,#0x10]
12B0E6:  LDR             R0, [R2,#8]
12B0E8:  CMP             R6, #0
12B0EA:  IT EQ
12B0EC:  ADDEQ           R0, R2, #1
12B0EE:  ADD.W           R11, R0, R1
12B0F2:  MOV             R8, R0
12B0F4:  LDRB.W          R1, [R8]
12B0F8:  CMP             R1, #9
12B0FA:  BLE             loc_12B16A
12B0FC:  CMP             R1, #0xA
12B0FE:  BEQ             loc_12B1C2
12B100:  CMP             R1, #0x7B ; '{'
12B102:  BNE.W           loc_12B234
12B106:  ADD.W           R6, R8, #7
12B10A:  CMP             R6, R11
12B10C:  BCS.W           loc_12B234
12B110:  LDRB            R1, [R6]
12B112:  CMP             R1, #0x7D ; '}'
12B114:  BNE.W           loc_12B234
12B118:  CMP             R8, R0
12B11A:  BEQ             loc_12B164
12B11C:  VCMP.F32        S22, #0.0
12B120:  LDR             R1, [R5,#8]; int
12B122:  VMOV.F32        S0, S22
12B126:  VMRS            APSR_nzcv, FPSCR
12B12A:  IT EQ
12B12C:  VLDREQ          S0, [R1,#0x10]
12B130:  VMOV            R2, S0; int
12B134:  MOVW            R3, #0xFFFF
12B138:  STRD.W          R4, R0, [SP,#0x60+var_60]; float
12B13C:  MOV             R0, R9; int
12B13E:  MOVT            R3, #0x7F7F; int
12B142:  STRD.W          R8, R4, [SP,#0x60+var_58]; int
12B146:  BL              sub_178B18
12B14A:  VLDR            S0, [SP,#0x60+var_50]
12B14E:  VCMP.F32        S16, #0.0
12B152:  VLDR            S2, [SP,#0x60+var_4C]
12B156:  VADD.F32        S18, S18, S0
12B15A:  VMRS            APSR_nzcv, FPSCR
12B15E:  IT EQ
12B160:  VMOVEQ.F32      S16, S2
12B164:  ADD.W           R0, R8, #8
12B168:  B               loc_12B236
12B16A:  BNE             loc_12B232
12B16C:  CMP             R8, R0
12B16E:  BEQ             loc_12B1B8
12B170:  VCMP.F32        S22, #0.0
12B174:  LDR             R1, [R5,#8]; int
12B176:  VMOV.F32        S0, S22
12B17A:  VMRS            APSR_nzcv, FPSCR
12B17E:  IT EQ
12B180:  VLDREQ          S0, [R1,#0x10]
12B184:  VMOV            R2, S0; int
12B188:  MOVW            R3, #0xFFFF
12B18C:  STRD.W          R4, R0, [SP,#0x60+var_60]; float
12B190:  MOV             R0, R9; int
12B192:  MOVT            R3, #0x7F7F; int
12B196:  STRD.W          R8, R4, [SP,#0x60+var_58]; int
12B19A:  BL              sub_178B18
12B19E:  VLDR            S0, [SP,#0x60+var_50]
12B1A2:  VCMP.F32        S16, #0.0
12B1A6:  VLDR            S2, [SP,#0x60+var_4C]
12B1AA:  VADD.F32        S18, S18, S0
12B1AE:  VMRS            APSR_nzcv, FPSCR
12B1B2:  IT EQ
12B1B4:  VMOVEQ.F32      S16, S2
12B1B8:  VADD.F32        S18, S22, S18
12B1BC:  ADD.W           R0, R8, #1
12B1C0:  B               loc_12B234
12B1C2:  CMP             R8, R0
12B1C4:  BEQ             loc_12B20E
12B1C6:  VCMP.F32        S22, #0.0
12B1CA:  LDR             R1, [R5,#8]; int
12B1CC:  VMOV.F32        S0, S22
12B1D0:  VMRS            APSR_nzcv, FPSCR
12B1D4:  IT EQ
12B1D6:  VLDREQ          S0, [R1,#0x10]
12B1DA:  VMOV            R2, S0; int
12B1DE:  MOVW            R3, #0xFFFF
12B1E2:  STRD.W          R4, R0, [SP,#0x60+var_60]; float
12B1E6:  MOV             R0, R9; int
12B1E8:  MOVT            R3, #0x7F7F; int
12B1EC:  STRD.W          R8, R4, [SP,#0x60+var_58]; int
12B1F0:  BL              sub_178B18
12B1F4:  VLDR            S0, [SP,#0x60+var_50]
12B1F8:  VCMP.F32        S16, #0.0
12B1FC:  VLDR            S2, [SP,#0x60+var_4C]
12B200:  VADD.F32        S18, S18, S0
12B204:  VMRS            APSR_nzcv, FPSCR
12B208:  IT EQ
12B20A:  VMOVEQ.F32      S16, S2
12B20E:  VCMP.F32        S20, S18
12B212:  ADD.W           R0, R8, #1
12B216:  VMRS            APSR_nzcv, FPSCR
12B21A:  IT GE
12B21C:  VMOVGE.F32      S18, S20
12B220:  VADD.F32        S16, S22, S16
12B224:  VSTR            S18, [R10]
12B228:  VMOV.F32        S20, S18
12B22C:  VMOV.F32        S18, S24
12B230:  B               loc_12B234
12B232:  CBZ             R1, loc_12B23C
12B234:  MOV             R6, R8
12B236:  ADD.W           R8, R6, #1
12B23A:  B               loc_12B0F4
12B23C:  CMP             R8, R0
12B23E:  BEQ             loc_12B286
12B240:  VCMP.F32        S22, #0.0
12B244:  LDR             R1, [R5,#8]; int
12B246:  VMRS            APSR_nzcv, FPSCR
12B24A:  IT EQ
12B24C:  VLDREQ          S22, [R1,#0x10]
12B250:  VMOV            R2, S22; int
12B254:  MOVS            R3, #0
12B256:  STRD.W          R3, R0, [SP,#0x60+var_60]; float
12B25A:  ADD             R0, SP, #0x60+var_50; int
12B25C:  STRD.W          R8, R3, [SP,#0x60+var_58]; int
12B260:  MOV             R3, #0x7F7FFFFF; int
12B268:  BL              sub_178B18
12B26C:  VLDR            S0, [SP,#0x60+var_50]
12B270:  VCMP.F32        S16, #0.0
12B274:  VLDR            S2, [SP,#0x60+var_4C]
12B278:  VADD.F32        S18, S18, S0
12B27C:  VMRS            APSR_nzcv, FPSCR
12B280:  IT EQ
12B282:  VMOVEQ.F32      S16, S2
12B286:  VCMP.F32        S16, #0.0
12B28A:  VLDR            S0, =0.0
12B28E:  VMRS            APSR_nzcv, FPSCR
12B292:  VCMP.F32        S20, S18
12B296:  IT LS
12B298:  VMOVLS.F32      S16, S0
12B29C:  VMRS            APSR_nzcv, FPSCR
12B2A0:  IT GE
12B2A2:  VMOVGE.F32      S18, S20
12B2A6:  VSTR            S18, [R10]
12B2AA:  VSTR            S16, [R10,#4]
12B2AE:  ADD             SP, SP, #0x18
12B2B0:  VPOP            {D8-D12}
12B2B4:  ADD             SP, SP, #4
12B2B6:  POP.W           {R8-R11}
12B2BA:  POP             {R4-R7,PC}
