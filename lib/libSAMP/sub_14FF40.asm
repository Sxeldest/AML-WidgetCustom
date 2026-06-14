; =========================================================
; Game Engine Function: sub_14FF40
; Address            : 0x14FF40 - 0x150132
; =========================================================

14FF40:  PUSH            {R4-R7,LR}
14FF42:  ADD             R7, SP, #0xC
14FF44:  PUSH.W          {R8-R11}
14FF48:  SUB             SP, SP, #0x34
14FF4A:  MOV             R11, R1
14FF4C:  MOV             R10, R1
14FF4E:  LDRH.W          R1, [R11],#6
14FF52:  MOV             R8, R0
14FF54:  LDR.W           R0, [R0,R1,LSL#2]
14FF58:  CBZ             R0, loc_14FF64
14FF5A:  MOV             R0, R8
14FF5C:  BL              sub_14FEB6
14FF60:  LDRH.W          R1, [R10]
14FF64:  LDR.W           R0, [R10,#0x18]
14FF68:  LDR.W           R2, [R11]
14FF6C:  LDR.W           R6, [R11,#4]
14FF70:  LDR.W           R4, [R11,#8]
14FF74:  VMOV            S0, R0
14FF78:  LDR.W           R5, [R11,#0xC]
14FF7C:  VMOV            S8, R2
14FF80:  VMOV            S6, R6
14FF84:  LDR.W           R3, [R10,#2]
14FF88:  VMOV            S4, R4
14FF8C:  LDR             R4, =(aAxl - 0x14FF9C); "AXL" ...
14FF8E:  VMOV            S2, R5
14FF92:  LDR             R2, =(aCreateVehicleD_1 - 0x14FF9E); "Create vehicle %d (id %d) at %.1f %.1f "... ...
14FF94:  VCVT.F64.F32    D16, S0
14FF98:  ADD             R4, PC; "AXL"
14FF9A:  ADD             R2, PC; "Create vehicle %d (id %d) at %.1f %.1f "...
14FF9C:  STR             R1, [SP,#0x50+var_50]
14FF9E:  MOVS            R0, #4; prio
14FFA0:  MOV             R1, R4; tag
14FFA2:  MOV             R9, R4
14FFA4:  VCVT.F64.F32    D17, S2
14FFA8:  VCVT.F64.F32    D18, S4
14FFAC:  VCVT.F64.F32    D19, S6
14FFB0:  VCVT.F64.F32    D20, S8
14FFB4:  VSTR            D20, [SP,#0x50+var_48]
14FFB8:  VSTR            D19, [SP,#0x50+var_40]
14FFBC:  VSTR            D18, [SP,#0x50+var_38]
14FFC0:  VSTR            D17, [SP,#0x50+var_30]
14FFC4:  VSTR            D16, [SP,#0x50+var_28]
14FFC8:  BLX             __android_log_print
14FFCC:  LDR             R0, =(off_234970 - 0x14FFD6)
14FFCE:  LDRB.W          R4, [R10,#0x27]
14FFD2:  ADD             R0, PC; off_234970
14FFD4:  LDR.W           R2, [R11]; int
14FFD8:  LDR.W           R3, [R11,#4]; int
14FFDC:  CMP             R4, #0
14FFDE:  LDR             R0, [R0]; dword_23DEF0
14FFE0:  LDR.W           R6, [R11,#8]
14FFE4:  LDR.W           R5, [R11,#0xC]
14FFE8:  LDR             R0, [R0]; int
14FFEA:  IT NE
14FFEC:  MOVNE           R4, #1
14FFEE:  LDR.W           R1, [R10,#2]; int
14FFF2:  STRD.W          R6, R5, [SP,#0x50+var_50]; float
14FFF6:  STR             R4, [SP,#0x50+var_48]; int
14FFF8:  BL              sub_F9F1C
14FFFC:  LDRH.W          R3, [R10]
150000:  MOV             R6, R0
150002:  LDR             R2, =(aNewVehicleIdDP - 0x15000E); "New vehicle (id: %d) pointer: %p" ...
150004:  MOV             R1, R9; tag
150006:  STR             R0, [SP,#0x50+var_50]
150008:  MOVS            R0, #4; prio
15000A:  ADD             R2, PC; "New vehicle (id: %d) pointer: %p"
15000C:  BLX             __android_log_print
150010:  CMP             R6, #0
150012:  BEQ.W           loc_150122
150016:  MOVW            R0, #0xEA60
15001A:  ADD.W           R9, R8, R0
15001E:  LDRH.W          R0, [R10]
150022:  LDRB.W          R1, [R10,#0x16]
150026:  LDRB.W          R2, [R10,#0x17]
15002A:  CMP             R1, #0xFF
15002C:  STR.W           R6, [R8,R0,LSL#2]
150030:  ITEE EQ
150032:  CMPEQ           R2, #0xFF
150034:  MOVNE           R0, R6
150036:  BLNE            sub_109BC8
15003A:  LDR.W           R1, [R10,#0x18]
15003E:  MOV             R0, R6
150040:  BL              sub_109AD0
150044:  LDRH.W          R0, [R10]
150048:  MOV.W           R2, #0x1F40
15004C:  LDR             R1, [R6,#0xC]
15004E:  ADD.W           R0, R8, R0,LSL#2
150052:  STR             R1, [R0,R2]
150054:  LDRD.W          R2, R1, [R9]
150058:  LDRH.W          R0, [R10]
15005C:  CMP             R2, R1
15005E:  BEQ             loc_15006E
150060:  LDR             R3, [R2]
150062:  CMP             R3, R0
150064:  BEQ             loc_15006E
150066:  ADDS            R2, #4
150068:  CMP             R2, R1
15006A:  BNE             loc_150060
15006C:  B               loc_150072
15006E:  CMP             R2, R1
150070:  BNE             loc_150092
150072:  LDR.W           R2, [R9,#8]
150076:  STR             R0, [SP,#0x50+var_20]
150078:  CMP             R1, R2
15007A:  BCS             loc_150086
15007C:  STR.W           R0, [R1],#4
150080:  STR.W           R1, [R9,#4]
150084:  B               loc_150092
150086:  ADD             R1, SP, #0x50+var_20
150088:  MOV             R0, R9
15008A:  BL              sub_147CA8
15008E:  LDRH.W          R0, [R10]
150092:  ADD.W           R0, R0, R0,LSL#1
150096:  LDR             R2, [R6,#0xC]
150098:  LDR.W           R1, [R11]
15009C:  ADD.W           R3, R8, R0,LSL#2
1500A0:  LDR             R0, [R2,#0x14]
1500A2:  MOV.W           R2, #0x3E80
1500A6:  STR             R1, [R3,R2]
1500A8:  ADD.W           R2, R3, #0x3E80
1500AC:  LDR.W           R1, [R11,#4]
1500B0:  STR             R1, [R2,#4]
1500B2:  LDR.W           R1, [R11,#8]
1500B6:  STR             R1, [R2,#8]
1500B8:  CBZ             R0, loc_1500CA
1500BA:  LDR.W           R1, [R11,#8]
1500BE:  VLD1.8          {D16}, [R11]
1500C2:  STR             R1, [R0,#0x38]
1500C4:  ADDS            R0, #0x30 ; '0'
1500C6:  VST1.8          {D16}, [R0]
1500CA:  LDRB.W          R1, [R10,#0x1C]
1500CE:  CBZ             R1, loc_1500D6
1500D0:  MOV             R0, R6
1500D2:  BL              sub_109C04
1500D6:  LDR.W           R2, [R10,#0x1D]
1500DA:  LDR.W           R1, [R10,#0x21]
1500DE:  ORRS.W          R0, R1, R2
1500E2:  BNE             loc_1500EC
1500E4:  LDRB.W          R0, [R10,#0x25]
1500E8:  CBZ             R0, loc_1500F6
1500EA:  MOVS            R2, #0
1500EC:  LDRB.W          R3, [R10,#0x25]
1500F0:  MOV             R0, R6
1500F2:  BL              sub_109C28
1500F6:  LDRB.W          R1, [R10,#0x26]
1500FA:  MOV             R0, R6
1500FC:  BL              sub_109CC0
150100:  LDRH.W          R0, [R10]
150104:  MOVW            R2, #0x9C40
150108:  MOVS            R3, #1
15010A:  ADD.W           R1, R8, R0
15010E:  ADD.W           R0, R8, R0,LSL#2
150112:  STRB            R3, [R1,R2]
150114:  MOVW            R2, #0xA410
150118:  MOVS            R3, #0
15011A:  STRB            R3, [R1,R2]
15011C:  MOVW            R1, #0xABE0
150120:  STR             R3, [R0,R1]
150122:  CMP             R6, #0
150124:  IT NE
150126:  MOVNE           R6, #1
150128:  MOV             R0, R6
15012A:  ADD             SP, SP, #0x34 ; '4'
15012C:  POP.W           {R8-R11}
150130:  POP             {R4-R7,PC}
