; =========================================================
; Game Engine Function: sub_13B010
; Address            : 0x13B010 - 0x13B1E2
; =========================================================

13B010:  PUSH            {R4-R7,LR}
13B012:  ADD             R7, SP, #0xC
13B014:  PUSH.W          {R8-R11}
13B018:  SUB             SP, SP, #0x24
13B01A:  LDR             R4, [R1,#4]
13B01C:  MOV             R10, R1
13B01E:  LDRSH.W         R11, [R2]
13B022:  MOV             R9, R0
13B024:  CBZ             R4, loc_13B05C
13B026:  MOV.W           R0, #0x55555555
13B02A:  MOV.W           R1, #0x33333333
13B02E:  AND.W           R0, R0, R4,LSR#1
13B032:  STR             R3, [SP,#0x40+var_2C]
13B034:  SUBS            R0, R4, R0
13B036:  AND.W           R1, R1, R0,LSR#2
13B03A:  BIC.W           R0, R0, #0xCCCCCCCC
13B03E:  ADD             R0, R1
13B040:  MOV.W           R1, #0x1010101
13B044:  ADD.W           R0, R0, R0,LSR#4
13B048:  BIC.W           R0, R0, #0xF0F0F0F0
13B04C:  MULS            R0, R1
13B04E:  LSRS            R5, R0, #0x18
13B050:  CMP             R5, #1
13B052:  BHI             loc_13B05E
13B054:  SUBS            R0, R4, #1
13B056:  AND.W           R6, R0, R11
13B05A:  B               loc_13B06E
13B05C:  B               loc_13B0D2
13B05E:  CMP             R4, R11
13B060:  MOV             R6, R11
13B062:  BHI             loc_13B06E
13B064:  MOV             R0, R11
13B066:  MOV             R1, R4
13B068:  BLX             sub_221798
13B06C:  MOV             R6, R1
13B06E:  LDR.W           R0, [R10]
13B072:  LDR.W           R8, [R0,R6,LSL#2]
13B076:  CMP.W           R8, #0
13B07A:  BEQ             loc_13B0D0
13B07C:  SUBS            R1, R4, #1
13B07E:  STR.W           R9, [SP,#0x40+var_34]
13B082:  UXTH.W          R9, R11
13B086:  STR             R6, [SP,#0x40+var_30]
13B088:  LDR.W           R8, [R8]
13B08C:  CMP.W           R8, #0
13B090:  BEQ             loc_13B0CC
13B092:  LDR.W           R0, [R8,#4]
13B096:  CMP             R0, R11
13B098:  BEQ             loc_13B0BC
13B09A:  CMP             R5, #1
13B09C:  BHI             loc_13B0A2
13B09E:  ANDS            R0, R1
13B0A0:  B               loc_13B0B8
13B0A2:  CMP             R0, R4
13B0A4:  BCC             loc_13B0B8
13B0A6:  MOV             R6, R10
13B0A8:  MOV             R10, R1
13B0AA:  MOV             R1, R4
13B0AC:  BLX             sub_221798
13B0B0:  MOV             R0, R1
13B0B2:  MOV             R1, R10
13B0B4:  MOV             R10, R6
13B0B6:  LDR             R6, [SP,#0x40+var_30]
13B0B8:  CMP             R0, R6
13B0BA:  BNE             loc_13B0CC
13B0BC:  LDRH.W          R0, [R8,#8]
13B0C0:  CMP             R0, R9
13B0C2:  BNE             loc_13B088
13B0C4:  MOVS            R0, #0
13B0C6:  LDR.W           R9, [SP,#0x40+var_34]
13B0CA:  B               loc_13B1D2
13B0CC:  LDR.W           R9, [SP,#0x40+var_34]
13B0D0:  LDR             R3, [SP,#0x40+var_2C]
13B0D2:  ADD.W           R8, SP, #0x40+var_28
13B0D6:  LDRD.W          R1, R0, [R7,#arg_0]
13B0DA:  STRD.W          R1, R0, [SP,#0x40+var_40]
13B0DE:  MOV             R1, R10
13B0E0:  MOV             R0, R8
13B0E2:  MOV             R2, R11
13B0E4:  BL              sub_13B1F8
13B0E8:  LDR.W           R0, [R10,#0xC]
13B0EC:  VLDR            S0, [R10,#0x10]
13B0F0:  ADD.W           R0, R0, #1
13B0F4:  VMOV            S2, R0
13B0F8:  VCVT.F32.U32    S2, S2
13B0FC:  CBZ             R4, loc_13B118
13B0FE:  VMOV            S4, R4
13B102:  VCVT.F32.U32    S4, S4
13B106:  VMUL.F32        S4, S0, S4
13B10A:  VCMP.F32        S4, S2
13B10E:  VMRS            APSR_nzcv, FPSCR
13B112:  BMI             loc_13B118
13B114:  MOV             R11, R6
13B116:  B               loc_13B170
13B118:  LSLS            R6, R4, #1
13B11A:  CMP             R4, #3
13B11C:  BCC             loc_13B128
13B11E:  SUBS            R0, R4, #1
13B120:  ANDS            R4, R0
13B122:  IT NE
13B124:  MOVNE           R4, #1
13B126:  B               loc_13B12A
13B128:  MOVS            R4, #1
13B12A:  VDIV.F32        S0, S2, S0
13B12E:  VMOV            R0, S0; x
13B132:  BLX             ceilf
13B136:  VMOV            S0, R0
13B13A:  ORR.W           R1, R4, R6
13B13E:  VCVT.U32.F32    S0, S0
13B142:  VMOV            R0, S0
13B146:  CMP             R1, R0
13B148:  IT CC
13B14A:  MOVCC           R1, R0; this
13B14C:  MOV             R0, R10; int
13B14E:  BL              sub_13B260
13B152:  LDR.W           R4, [R10,#4]
13B156:  SUBS            R0, R4, #1
13B158:  TST             R4, R0
13B15A:  BNE             loc_13B162
13B15C:  AND.W           R11, R11, R0
13B160:  B               loc_13B170
13B162:  CMP             R4, R11
13B164:  BHI             loc_13B170
13B166:  MOV             R0, R11
13B168:  MOV             R1, R4
13B16A:  BLX             sub_221798
13B16E:  MOV             R11, R1
13B170:  LDR.W           R0, [R10]
13B174:  LDR.W           R0, [R0,R11,LSL#2]
13B178:  CBZ             R0, loc_13B186
13B17A:  LDR             R1, [SP,#0x40+var_28]
13B17C:  LDR             R2, [R0]
13B17E:  STR             R2, [R1]
13B180:  LDR             R1, [SP,#0x40+var_28]
13B182:  STR             R1, [R0]
13B184:  B               loc_13B1C2
13B186:  LDR             R0, [SP,#0x40+var_28]
13B188:  MOV             R1, R10
13B18A:  LDR.W           R2, [R1,#8]!
13B18E:  STR             R2, [R0]
13B190:  LDR.W           R0, [R10]
13B194:  LDR             R2, [SP,#0x40+var_28]
13B196:  STR             R2, [R1]
13B198:  STR.W           R1, [R0,R11,LSL#2]
13B19C:  LDR             R5, [SP,#0x40+var_28]
13B19E:  LDR             R0, [R5]
13B1A0:  CBZ             R0, loc_13B1C2
13B1A2:  LDR             R0, [R0,#4]
13B1A4:  SUBS            R1, R4, #1
13B1A6:  TST             R4, R1
13B1A8:  BNE             loc_13B1AE
13B1AA:  ANDS            R0, R1
13B1AC:  B               loc_13B1BA
13B1AE:  CMP             R0, R4
13B1B0:  BCC             loc_13B1BA
13B1B2:  MOV             R1, R4
13B1B4:  BLX             sub_221798
13B1B8:  MOV             R0, R1
13B1BA:  LDR.W           R1, [R10]
13B1BE:  STR.W           R5, [R1,R0,LSL#2]
13B1C2:  LDR.W           R0, [R10,#0xC]
13B1C6:  LDR.W           R8, [SP,#0x40+var_28]
13B1CA:  ADDS            R0, #1
13B1CC:  STR.W           R0, [R10,#0xC]
13B1D0:  MOVS            R0, #1
13B1D2:  STRB.W          R0, [R9,#4]
13B1D6:  STR.W           R8, [R9]
13B1DA:  ADD             SP, SP, #0x24 ; '$'
13B1DC:  POP.W           {R8-R11}
13B1E0:  POP             {R4-R7,PC}
