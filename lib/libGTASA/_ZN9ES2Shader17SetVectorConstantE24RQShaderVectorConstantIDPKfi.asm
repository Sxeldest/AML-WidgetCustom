; =========================================================
; Game Engine Function: _ZN9ES2Shader17SetVectorConstantE24RQShaderVectorConstantIDPKfi
; Address            : 0x1CD05C - 0x1CD1A4
; =========================================================

1CD05C:  SUB.W           R12, R3, #1; switch 4 cases
1CD060:  CMP.W           R12, #3
1CD064:  BHI.W           def_1CD068; jumptable 001CD068 default case
1CD068:  TBB.W           [PC,R12]; switch jump
1CD06C:  DCB 2; jump table for switch statement
1CD06D:  DCB 0x16
1CD06E:  DCB 0x37
1CD06F:  DCB 0x49
1CD070:  RSB.W           R1, R1, R1,LSL#3; jumptable 001CD068 case 1
1CD074:  VLDR            S0, [R2]
1CD078:  ADD.W           R0, R0, R1,LSL#2
1CD07C:  MOVS            R1, #1
1CD07E:  STR             R1, [R0,#0x1C]
1CD080:  VLDR            S2, [R0,#0xC]
1CD084:  VCMP.F32        S2, S0
1CD088:  VMRS            APSR_nzcv, FPSCR
1CD08C:  BEQ             def_1CD068; jumptable 001CD068 default case
1CD08E:  ADD.W           R2, R0, #0xC
1CD092:  VSTR            S0, [R2]
1CD096:  B               loc_1CD162
1CD098:  RSB.W           R1, R1, R1,LSL#3; jumptable 001CD068 case 2
1CD09C:  ADD.W           R0, R0, R1,LSL#2
1CD0A0:  MOVS            R1, #2
1CD0A2:  STR             R1, [R0,#0x1C]
1CD0A4:  VLDR            S2, [R0,#0xC]
1CD0A8:  VLDR            S0, [R2]
1CD0AC:  VCMP.F32        S0, S2
1CD0B0:  VMRS            APSR_nzcv, FPSCR
1CD0B4:  BNE             loc_1CD0C8
1CD0B6:  VLDR            S2, [R2,#4]
1CD0BA:  VLDR            S4, [R0,#0x10]
1CD0BE:  VCMP.F32        S2, S4
1CD0C2:  VMRS            APSR_nzcv, FPSCR
1CD0C6:  BEQ             def_1CD068; jumptable 001CD068 default case
1CD0C8:  ADD.W           R3, R0, #0xC
1CD0CC:  ADD.W           R1, R0, #0x10
1CD0D0:  VSTR            S0, [R3]
1CD0D4:  LDR             R2, [R2,#4]
1CD0D6:  STR             R2, [R1]
1CD0D8:  B               loc_1CD160
1CD0DA:  RSB.W           R1, R1, R1,LSL#3; jumptable 001CD068 case 3
1CD0DE:  ADD.W           R0, R0, R1,LSL#2
1CD0E2:  MOVS            R1, #3
1CD0E4:  STR             R1, [R0,#0x1C]
1CD0E6:  VLDR            S2, [R0,#0xC]
1CD0EA:  VLDR            S0, [R2]
1CD0EE:  VCMP.F32        S0, S2
1CD0F2:  VMRS            APSR_nzcv, FPSCR
1CD0F6:  BEQ             loc_1CD166
1CD0F8:  ADD.W           R1, R0, #0x10
1CD0FC:  B               loc_1CD18E
1CD0FE:  RSB.W           R1, R1, R1,LSL#3; jumptable 001CD068 case 4
1CD102:  ADD.W           R0, R0, R1,LSL#2
1CD106:  MOVS            R1, #4
1CD108:  STR             R1, [R0,#0x1C]
1CD10A:  VLDR            S0, [R0,#0xC]
1CD10E:  VLDR            S2, [R2]
1CD112:  VCMP.F32        S2, S0
1CD116:  VMRS            APSR_nzcv, FPSCR
1CD11A:  BNE             loc_1CD154
1CD11C:  VLDR            S0, [R2,#4]
1CD120:  VLDR            S2, [R0,#0x10]
1CD124:  VCMP.F32        S0, S2
1CD128:  VMRS            APSR_nzcv, FPSCR
1CD12C:  BNE             loc_1CD154
1CD12E:  VLDR            S0, [R2,#8]
1CD132:  VLDR            S2, [R0,#0x14]
1CD136:  VCMP.F32        S0, S2
1CD13A:  VMRS            APSR_nzcv, FPSCR
1CD13E:  BNE             loc_1CD154
1CD140:  VLDR            S0, [R2,#0xC]
1CD144:  VLDR            S2, [R0,#0x18]
1CD148:  VCMP.F32        S0, S2
1CD14C:  VMRS            APSR_nzcv, FPSCR
1CD150:  IT EQ
1CD152:  BXEQ            LR
1CD154:  ADD.W           R1, R0, #0xC
1CD158:  VLD1.32         {D16-D17}, [R2]
1CD15C:  VST1.32         {D16-D17}, [R1]
1CD160:  MOVS            R1, #1
1CD162:  STRB            R1, [R0,#8]
1CD164:  BX              LR; jumptable 001CD068 default case
1CD166:  VLDR            S2, [R2,#4]
1CD16A:  ADD.W           R1, R0, #0x10
1CD16E:  VLDR            S4, [R0,#0x10]
1CD172:  VCMP.F32        S2, S4
1CD176:  VMRS            APSR_nzcv, FPSCR
1CD17A:  BNE             loc_1CD18E
1CD17C:  VLDR            S2, [R2,#8]
1CD180:  VLDR            S4, [R0,#0x14]
1CD184:  VCMP.F32        S2, S4
1CD188:  VMRS            APSR_nzcv, FPSCR
1CD18C:  BEQ             def_1CD068; jumptable 001CD068 default case
1CD18E:  ADD.W           R3, R0, #0xC
1CD192:  VSTR            S0, [R3]
1CD196:  LDR             R3, [R2,#4]
1CD198:  STR             R3, [R1]
1CD19A:  LDR             R1, [R2,#8]
1CD19C:  MOVS            R2, #1
1CD19E:  STRB            R2, [R0,#8]
1CD1A0:  STR             R1, [R0,#0x14]
1CD1A2:  BX              LR
