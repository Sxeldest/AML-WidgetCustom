; =========================================================
; Game Engine Function: sub_180F08
; Address            : 0x180F08 - 0x1811A0
; =========================================================

180F08:  PUSH            {R4-R7,LR}
180F0A:  ADD             R7, SP, #0xC
180F0C:  PUSH.W          {R8-R11}
180F10:  SUB             SP, SP, #0x134
180F12:  MOV             R6, SP
180F14:  MOV             R10, R0
180F16:  STR             R2, [R6,#0x150+var_148]
180F18:  LDR             R2, [R7,#arg_10]
180F1A:  LDR             R0, [R1]
180F1C:  STR             R1, [R6,#0x150+var_140]
180F1E:  LDR             R1, [R7,#arg_C]
180F20:  CMP.W           R0, #0x100
180F24:  STR.W           R2, [R7,#var_24]
180F28:  STR.W           R1, [R7,#var_28]
180F2C:  BGT             loc_180FE2
180F2E:  LDR             R0, [R7,#arg_28]
180F30:  MOV             R4, R3
180F32:  CBZ             R0, loc_180F3C
180F34:  LDRB.W          R0, [R10,#0x7FD]
180F38:  CMP             R0, #0
180F3A:  BNE             loc_180FE2
180F3C:  LDR             R0, [R7,#arg_14]
180F3E:  CBZ             R0, loc_180F94
180F40:  LDRH.W          R0, [R10,#8]
180F44:  MOVS            R1, #7
180F46:  ADD.W           R1, R1, R0,LSL#2
180F4A:  BIC.W           R1, R1, #7
180F4E:  SUB.W           R8, SP, R1
180F52:  MOV             SP, R8
180F54:  CBZ             R0, loc_180FCC
180F56:  SUB.W           R9, R7, #-var_28
180F5A:  STR             R4, [R6,#0xC]
180F5C:  MOVS            R5, #0
180F5E:  MOV.W           R11, #0
180F62:  MOVS            R4, #0
180F64:  LDR.W           R0, [R10,#0x340]
180F68:  LDRB            R1, [R0,R5]
180F6A:  CBZ             R1, loc_180F80
180F6C:  ADD             R0, R5
180F6E:  MOV             R1, R9
180F70:  ADDS            R0, #4
180F72:  BL              sub_17E596
180F76:  CBZ             R0, loc_180F80
180F78:  STR.W           R4, [R8,R11,LSL#2]
180F7C:  ADD.W           R11, R11, #1
180F80:  LDRH.W          R0, [R10,#8]
180F84:  ADDS            R4, #1
180F86:  ADD.W           R5, R5, #0x840
180F8A:  CMP             R4, R0
180F8C:  BCC             loc_180F64
180F8E:  LDR             R4, [R6,#0xC]
180F90:  MOVS            R0, #0
180F92:  B               loc_180FD2
180F94:  SUB.W           R8, SP, #8
180F98:  MOV             SP, R8
180F9A:  MOV             R0, R10
180F9C:  MOVS            R3, #0
180F9E:  BL              sub_1811B4
180FA2:  ADDS            R1, R0, #1
180FA4:  BEQ             loc_180FBC
180FA6:  LDR.W           R1, [R10,#0x340]
180FAA:  ADD.W           R2, R0, R0,LSL#5
180FAE:  ADD.W           R1, R1, R2,LSL#6
180FB2:  LDR.W           R1, [R1,#0x83C]
180FB6:  SUBS            R1, #1
180FB8:  CMP             R1, #3
180FBA:  BCS             loc_181006
180FBC:  LDR.W           R0, [R10,#0x800]
180FC0:  MOV.W           R11, #0
180FC4:  CMP             R0, #0
180FC6:  IT NE
180FC8:  MOVNE           R0, #1
180FCA:  B               loc_180FD2
180FCC:  MOVS            R0, #0
180FCE:  MOV.W           R11, #0
180FD2:  CMP.W           R11, #0
180FD6:  IT EQ
180FD8:  CMPEQ           R0, #0
180FDA:  BEQ             loc_180FE2
180FDC:  CBZ             R0, loc_180FF2
180FDE:  MOVS            R0, #1
180FE0:  B               loc_18100C
180FE2:  MOVS            R5, #0
180FE4:  SUB.W           R4, R7, #-var_1C
180FE8:  MOV             R0, R5
180FEA:  MOV             SP, R4
180FEC:  POP.W           {R8-R11}
180FF0:  POP             {R4-R7,PC}
180FF2:  ADD.W           R0, R6, #0x14
180FF6:  BL              sub_17D4A8
180FFA:  MOVS            R0, #0
180FFC:  CMP.W           R11, #0
181000:  STR             R0, [R6,#4]
181002:  BNE             loc_18101A
181004:  B               loc_1810EE
181006:  STR.W           R0, [R8]
18100A:  MOVS            R0, #0
18100C:  STR             R0, [R6,#4]
18100E:  ADD.W           R0, R6, #0x14
181012:  BL              sub_17D4A8
181016:  MOV.W           R11, #1
18101A:  STR.W           R10, [R6,#0xC]
18101E:  ADD.W           R9, R6, #0x14
181022:  SUB.W           R10, R7, #-var_20
181026:  MOV             R0, R9
181028:  BL              sub_17D822
18102C:  LDR             R0, [R7,#arg_18]
18102E:  CBZ             R0, loc_181056
181030:  MOVS            R0, #0x28 ; '('
181032:  STRB.W          R0, [R7,#var_20]
181036:  MOV             R0, R9
181038:  MOV             R1, R10
18103A:  MOVS            R2, #8
18103C:  MOVS            R3, #1
18103E:  BL              sub_17D628
181042:  BL              sub_17E2E4
181046:  STR.W           R0, [R7,#var_20]
18104A:  MOV             R0, R9
18104C:  MOV             R1, R10
18104E:  MOVS            R2, #0x20 ; ' '
181050:  MOVS            R3, #1
181052:  BL              sub_17D628
181056:  MOVS            R0, #0x14
181058:  STRB.W          R0, [R7,#var_20]
18105C:  MOV             R0, R9
18105E:  MOV             R1, R10
181060:  MOVS            R2, #8
181062:  MOVS            R3, #1
181064:  BL              sub_17D628
181068:  LDR             R0, [R6,#0x10]
18106A:  LDR             R0, [R0]
18106C:  STRB.W          R0, [R7,#var_20]
181070:  MOV             R0, R9
181072:  MOV             R1, R10
181074:  MOVS            R2, #8
181076:  MOVS            R3, #1
181078:  BL              sub_17D628
18107C:  STR.W           R4, [R7,#var_20]
181080:  MOV             R0, R9
181082:  MOV             R1, R10
181084:  MOVS            R2, #0x20 ; ' '
181086:  MOVS            R3, #1
181088:  BL              sub_17D912
18108C:  CBZ             R4, loc_18109C
18108E:  LDR             R1, [R6,#8]
181090:  MOV             R0, R9
181092:  MOV             R2, R4
181094:  MOVS            R3, #0
181096:  BL              sub_17D628
18109A:  B               loc_1810AE
18109C:  MOVS            R0, #0
18109E:  STR.W           R0, [R7,#var_20]
1810A2:  MOV             R0, R9
1810A4:  MOV             R1, R10
1810A6:  MOVS            R2, #0x20 ; ' '
1810A8:  MOVS            R3, #1
1810AA:  BL              sub_17D912
1810AE:  LDR             R0, [R6,#0xC]
1810B0:  LDR.W           R1, [R8]
1810B4:  LDR.W           R2, [R0,#0x340]
1810B8:  ADD.W           R1, R1, R1,LSL#5
1810BC:  LDR             R3, [R0]
1810BE:  ADD.W           R2, R2, R1,LSL#6
1810C2:  LDRD.W          R1, R2, [R2,#4]
1810C6:  LDR             R5, [R3,#0x38]
1810C8:  SUB             SP, SP, #0x10
1810CA:  LDR             R3, [R7,#arg_8]
1810CC:  STRD.W          R3, R1, [SP,#0x168+var_168]
1810D0:  MOVS            R1, #0
1810D2:  STR             R2, [SP,#0x168+var_160]
1810D4:  LDRD.W          R2, R3, [R7,#arg_0]
1810D8:  STR             R1, [SP,#0x168+var_15C]
1810DA:  MOV             R1, R9
1810DC:  BLX             R5
1810DE:  ADD             SP, SP, #0x10
1810E0:  ADD.W           R8, R8, #4
1810E4:  SUBS.W          R11, R11, #1
1810E8:  BNE             loc_181026
1810EA:  LDR.W           R10, [R6,#0xC]
1810EE:  LDR             R2, [R7,#arg_28]
1810F0:  MOVS            R5, #1
1810F2:  CMP             R2, #0
1810F4:  BEQ             loc_181192
1810F6:  LDRH.W          R0, [R7,#var_24]
1810FA:  LDR.W           R9, [R7,#arg_14]
1810FE:  STRH.W          R0, [R10,#0x7F8]
181102:  LDR             R0, [R7,#arg_4]
181104:  LDR             R4, [R6,#4]
181106:  LDR.W           R1, [R7,#var_28]
18110A:  CMP             R0, #6
18110C:  STRB.W          R5, [R10,#0x7FD]
181110:  STR.W           R2, [R10,#0x7F0]
181114:  STR.W           R1, [R10,#0x7F4]
181118:  STRB.W          R9, [R10,#0x7FC]
18111C:  BNE             loc_181154
18111E:  LDR             R1, =(unk_BE944 - 0x181124)
181120:  ADD             R1, PC; unk_BE944
181122:  SUB.W           R0, R7, #-var_28
181126:  BL              sub_17E580
18112A:  CBZ             R0, loc_181136
18112C:  BL              sub_17E2E4
181130:  ADDW            R8, R0, #0x5DC
181134:  B               loc_181154
181136:  BL              sub_17E2E4
18113A:  MOV             R5, R0
18113C:  LDR.W           R0, [R10]
181140:  LDRD.W          R1, R2, [R7,#var_28]
181144:  LDR.W           R3, [R0,#0x80]
181148:  MOV             R0, R10
18114A:  BLX             R3
18114C:  ADD.W           R0, R0, R0,LSL#1
181150:  ADD.W           R8, R0, R5
181154:  LDRB.W          R0, [R10,#0x7FD]
181158:  CBZ             R0, loc_18118A
18115A:  LDR             R0, [R7,#arg_4]
18115C:  SUB.W           R5, R0, #8
181160:  CMP             R5, #3
181162:  BCC             loc_18116C
181164:  BL              sub_17E2E4
181168:  CMP             R0, R8
18116A:  BCS             loc_18118A
18116C:  MOVS            R0, #0x1E
18116E:  BL              sub_186FEC
181172:  CBNZ            R4, loc_181182
181174:  LDRD.W          R1, R2, [R7,#var_28]
181178:  MOV             R0, R10
18117A:  MOV             R3, R9
18117C:  BL              sub_181240
181180:  CBZ             R0, loc_18119C
181182:  LDRB.W          R0, [R10,#0x7FD]
181186:  CMP             R0, #0
181188:  BNE             loc_181160
18118A:  MOVS            R0, #0
18118C:  MOVS            R5, #1
18118E:  STRB.W          R0, [R10,#0x7FD]
181192:  ADD.W           R0, R6, #0x14
181196:  BL              sub_17D542
18119A:  B               loc_180FE4
18119C:  MOVS            R5, #0
18119E:  B               loc_181192
