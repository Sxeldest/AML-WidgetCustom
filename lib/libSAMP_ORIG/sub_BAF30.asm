; =========================================================
; Game Engine Function: sub_BAF30
; Address            : 0xBAF30 - 0xBB27A
; =========================================================

BAF30:  PUSH            {R4-R7,LR}
BAF32:  ADD             R7, SP, #0xC
BAF34:  PUSH.W          {R8-R11}
BAF38:  SUB             SP, SP, #0x34
BAF3A:  STR.W           R0, [R7,#var_3C]
BAF3E:  MOV             R10, R1
BAF40:  LDR             R0, =(__stack_chk_guard_ptr - 0xBAF50)
BAF42:  MOVW            R9, #0x8000
BAF46:  LDRD.W          R1, R8, [R7,#arg_0]
BAF4A:  MOV             R6, R2
BAF4C:  ADD             R0, PC; __stack_chk_guard_ptr
BAF4E:  MOVT            R9, #0xFFFF
BAF52:  CMP             R3, #2
BAF54:  LDR             R0, [R0]; __stack_chk_guard
BAF56:  LDR             R0, [R0]
BAF58:  STR.W           R0, [R7,#var_24]
BAF5C:  MOV             R0, R3
BAF5E:  STR.W           R0, [R7,#var_38]
BAF62:  BNE             loc_BB002
BAF64:  CMP             R1, #1
BAF66:  ITT EQ
BAF68:  LDREQ           R0, [R7,#arg_C]
BAF6A:  CMPEQ           R0, #0
BAF6C:  BNE             loc_BB002
BAF6E:  LDR             R0, [R7,#arg_8]
BAF70:  CMP             R6, #1
BAF72:  LDRD.W          R9, R4, [R0]
BAF76:  BLT             loc_BAFFA
BAF78:  LDR.W           R0, [R7,#var_3C]
BAF7C:  ADD.W           R3, R10, #2
BAF80:  MOVW            R10, #0x8000
BAF84:  LDRD.W          R11, R1, [R0]
BAF88:  MOVT            R10, #0xFFFF
BAF8C:  LDRSH.W         R12, [R8]
BAF90:  MOVW            R8, #0x7FFF
BAF94:  MOV.W           LR, R12,LSL#1
BAF98:  LDR.W           R5, [R1],#4
BAF9C:  LDR.W           R0, [R11],#4
BAFA0:  ADD             R4, R5
BAFA2:  ADD.W           R5, R4, #0x800
BAFA6:  ASRS            R2, R5, #0xC
BAFA8:  CMP             R2, R10
BAFAA:  MOV             R2, R10
BAFAC:  IT GT
BAFAE:  ASRGT           R2, R5, #0xC
BAFB0:  CMP             R2, R8
BAFB2:  IT GE
BAFB4:  MOVGE           R2, R8
BAFB6:  STRH            R2, [R3]
BAFB8:  ADD.W           R2, R0, R9
BAFBC:  ADD.W           R5, R2, #0x800
BAFC0:  ASRS            R0, R5, #0xC
BAFC2:  CMP             R0, R10
BAFC4:  MOV             R0, R10
BAFC6:  IT GT
BAFC8:  ASRGT           R0, R5, #0xC
BAFCA:  UXTH            R5, R2
BAFCC:  MUL.W           R9, R5, R12
BAFD0:  UXTH            R5, R4
BAFD2:  ASRS            R2, R2, #0x10
BAFD4:  ASRS            R4, R4, #0x10
BAFD6:  MUL.W           R5, R5, R12
BAFDA:  CMP             R0, R8
BAFDC:  MUL.W           R4, R4, LR
BAFE0:  IT GE
BAFE2:  MOVGE           R0, R8
BAFE4:  STRH.W          R0, [R3,#-2]
BAFE8:  MUL.W           R2, R2, LR
BAFEC:  ADDS            R3, #4
BAFEE:  SUBS            R6, #1
BAFF0:  ADD.W           R4, R4, R5,ASR#15
BAFF4:  ADD.W           R9, R2, R9,ASR#15
BAFF8:  BNE             loc_BAF98
BAFFA:  LDR             R0, [R7,#arg_8]
BAFFC:  STRD.W          R9, R4, [R0]
BB000:  B               loc_BB25A
BB002:  MOVS            R0, #7
BB004:  MOV             R5, R1
BB006:  ADD.W           R0, R0, R6,LSL#2
BB00A:  BIC.W           R4, R0, #7
BB00E:  MOV             R0, R6
BB010:  BLX             sub_108848
BB014:  MOV             R12, R0
BB016:  SUB.W           R0, SP, R4
BB01A:  MOV             R2, R5
BB01C:  STR.W           R0, [R7,#var_44]
BB020:  MOV             SP, R0
BB022:  LDRSH.W         R4, [R8]
BB026:  MOV.W           R11, R2,LSL#2
BB02A:  LDR.W           R0, [R7,#var_38]
BB02E:  MOVS            R1, #0
BB030:  LDR.W           R8, [R7,#arg_C]
BB034:  STR.W           R6, [R7,#var_40]
BB038:  MOV.W           LR, R0,LSL#1
BB03C:  LSLS            R0, R4, #1
BB03E:  STR.W           R0, [R7,#var_2C]
BB042:  MOVS            R0, #0
BB044:  STR.W           R0, [R7,#var_34]
BB048:  STR.W           R4, [R7,#var_28]
BB04C:  STRD.W          R11, R12, [R7,#var_4C]
BB050:  LDR.W           R0, [R7,#var_3C]
BB054:  CMP             R2, #2
BB056:  STR.W           R1, [R7,#var_30]
BB05A:  LDR.W           R11, [R0,R1,LSL#2]
BB05E:  LDR             R0, [R7,#arg_8]
BB060:  LDR.W           R12, [R0,R1,LSL#2]
BB064:  BLT             loc_BB0B0
BB066:  MOV             R5, R8
BB068:  LDR.W           R2, [R7,#var_44]
BB06C:  LDR.W           R8, [R7,#var_2C]
BB070:  CMP             R6, #1
BB072:  MOV             R0, R6
BB074:  BLT             loc_BB09A
BB076:  LDR.W           R1, [R11],#4
BB07A:  SUBS            R0, #1
BB07C:  ADD             R1, R12
BB07E:  STR.W           R1, [R2],#4
BB082:  UXTH            R3, R1
BB084:  MUL.W           R3, R4, R3
BB088:  MOV.W           R4, R1,ASR#16
BB08C:  MUL.W           R4, R8, R4
BB090:  ADD.W           R12, R4, R3,ASR#15
BB094:  LDR.W           R4, [R7,#var_28]
BB098:  BNE             loc_BB076
BB09A:  LDR.W           R1, [R7,#var_30]
BB09E:  MOV             R8, R5
BB0A0:  LDR             R0, [R7,#arg_8]
BB0A2:  LDR             R2, [R7,#arg_0]
BB0A4:  STR.W           R12, [R0,R1,LSL#2]
BB0A8:  MOVS            R0, #1
BB0AA:  STR.W           R0, [R7,#var_34]
BB0AE:  B               loc_BB19E
BB0B0:  CMP.W           R8, #0
BB0B4:  BEQ             loc_BB12A
BB0B6:  LDR.W           R5, [R7,#var_2C]
BB0BA:  CMP             R6, #1
BB0BC:  BLT             loc_BB178
BB0BE:  MOV.W           R8, #0
BB0C2:  MOV             R9, R6
BB0C4:  LDR.W           R0, [R11]
BB0C8:  LDRSH.W         R2, [R10,R8]
BB0CC:  ADD             R0, R12
BB0CE:  UXTH            R1, R0
BB0D0:  ASRS            R3, R0, #0x10
BB0D2:  MULS            R1, R4
BB0D4:  ADD.W           R4, R0, #0x800
BB0D8:  MOVW            R0, #0x7FFF
BB0DC:  MULS            R3, R5
BB0DE:  MOVW            R5, #0x8000
BB0E2:  ASRS            R6, R4, #0xC
BB0E4:  MOVT            R5, #0xFFFF
BB0E8:  CMP             R6, R5
BB0EA:  MOV             R6, R5
BB0EC:  IT GT
BB0EE:  ASRGT           R6, R4, #0xC
BB0F0:  CMP             R6, R0
BB0F2:  ADD.W           R12, R3, R1,ASR#15
BB0F6:  IT GE
BB0F8:  MOVGE           R6, R0
BB0FA:  SXTAH.W         R2, R2, R6
BB0FE:  CMP.W           R2, #0x8000
BB102:  BGE             loc_BB114
BB104:  MOV             R0, #0xFFFF8000
BB10C:  CMP             R2, R0
BB10E:  IT LE
BB110:  MOVLE           R2, R0
BB112:  MOV             R0, R2
BB114:  STRH.W          R0, [R10,R8]
BB118:  ADD             R8, LR
BB11A:  SUBS.W          R9, R9, #1
BB11E:  LDRD.W          R5, R4, [R7,#var_2C]
BB122:  ADD.W           R11, R11, #4
BB126:  BNE             loc_BB0C4
BB128:  B               loc_BB178
BB12A:  LDR.W           R5, [R7,#var_2C]
BB12E:  CMP             R6, #1
BB130:  MOV             R0, R10
BB132:  MOV             R2, R6
BB134:  BLT             loc_BB178
BB136:  LDR.W           R1, [R11],#4
BB13A:  ADD             R1, R12
BB13C:  UXTH            R3, R1
BB13E:  ASRS            R6, R1, #0x10
BB140:  ADD.W           R1, R1, #0x800
BB144:  MULS            R6, R5
BB146:  MOVW            R5, #0x8000
BB14A:  MULS            R3, R4
BB14C:  ASRS            R4, R1, #0xC
BB14E:  MOVT            R5, #0xFFFF
BB152:  CMP             R4, R5
BB154:  MOV             R4, R5
BB156:  LDR.W           R5, [R7,#var_2C]
BB15A:  IT GT
BB15C:  ASRGT           R4, R1, #0xC
BB15E:  MOVW            R1, #0x7FFF
BB162:  CMP             R4, R1
BB164:  IT GE
BB166:  MOVGE           R4, R1
BB168:  SUBS            R2, #1
BB16A:  STRH            R4, [R0]
BB16C:  ADD.W           R12, R6, R3,ASR#15
BB170:  LDR.W           R4, [R7,#var_28]
BB174:  ADD             R0, LR
BB176:  BNE             loc_BB136
BB178:  LDR.W           R1, [R7,#var_30]
BB17C:  MOVW            R9, #0x8000
BB180:  LDR             R0, [R7,#arg_8]
BB182:  MOVT            R9, #0xFFFF
BB186:  LDR             R5, [R7,#arg_0]
BB188:  LDR.W           R8, [R7,#arg_C]
BB18C:  STR.W           R12, [R0,R1,LSL#2]
BB190:  MOV             R2, R5
BB192:  LDR.W           R0, [R7,#var_34]
BB196:  LDR.W           R6, [R7,#var_40]
BB19A:  CMP             R0, #0
BB19C:  BEQ             loc_BB244
BB19E:  LDRD.W          R11, R12, [R7,#var_4C]
BB1A2:  CMP.W           R8, #0
BB1A6:  BEQ             loc_BB204
BB1A8:  CMP.W           R12, #1
BB1AC:  BLT             loc_BB24A
BB1AE:  LDR.W           R3, [R7,#var_44]
BB1B2:  MOVS            R0, #0
BB1B4:  MOV             R2, R12
BB1B6:  LDR             R1, [R3]
BB1B8:  LDRSH.W         R6, [R10,R0]
BB1BC:  ADD.W           R4, R1, #0x800
BB1C0:  MOVW            R1, #0x7FFF
BB1C4:  ASRS            R5, R4, #0xC
BB1C6:  CMP             R5, R9
BB1C8:  MOV             R5, R9
BB1CA:  IT GT
BB1CC:  ASRGT           R5, R4, #0xC
BB1CE:  CMP             R5, R1
BB1D0:  IT GE
BB1D2:  MOVGE           R5, R1
BB1D4:  SXTAH.W         R4, R6, R5
BB1D8:  CMP.W           R4, #0x8000
BB1DC:  BGE             loc_BB1E6
BB1DE:  CMP             R4, R9
BB1E0:  IT LE
BB1E2:  MOVLE           R4, R9
BB1E4:  MOV             R1, R4
BB1E6:  STRH.W          R1, [R10,R0]
BB1EA:  ADD             R3, R11
BB1EC:  ADD             R0, LR
BB1EE:  SUBS            R2, #1
BB1F0:  BNE             loc_BB1B6
BB1F2:  LDR             R5, [R7,#arg_0]
BB1F4:  LDR.W           R6, [R7,#var_40]
BB1F8:  LDR.W           R4, [R7,#var_28]
BB1FC:  LDR.W           R1, [R7,#var_30]
BB200:  MOV             R2, R5
BB202:  B               loc_BB24A
BB204:  CMP.W           R12, #1
BB208:  MOVW            R5, #0x7FFF
BB20C:  BLT             loc_BB24A
BB20E:  LDR.W           R2, [R7,#var_44]
BB212:  MOVS            R0, #0
BB214:  MOV             R3, R12
BB216:  LDR             R1, [R2]
BB218:  ADD             R2, R11
BB21A:  ADD.W           R1, R1, #0x800
BB21E:  ASRS            R6, R1, #0xC
BB220:  CMP             R6, R9
BB222:  MOV             R6, R9
BB224:  IT GT
BB226:  ASRGT           R6, R1, #0xC
BB228:  CMP             R6, R5
BB22A:  IT GE
BB22C:  MOVGE           R6, R5
BB22E:  SUBS            R3, #1
BB230:  STRH.W          R6, [R10,R0]
BB234:  ADD             R0, LR
BB236:  BNE             loc_BB216
BB238:  LDR.W           R6, [R7,#var_40]
BB23C:  LDR.W           R1, [R7,#var_30]
BB240:  LDR             R2, [R7,#arg_0]
BB242:  B               loc_BB24A
BB244:  MOVS            R0, #0
BB246:  STR.W           R0, [R7,#var_34]
BB24A:  LDR.W           R0, [R7,#var_38]
BB24E:  ADDS            R1, #1
BB250:  ADD.W           R10, R10, #2
BB254:  CMP             R1, R0
BB256:  BLT.W           loc_BB050
BB25A:  LDR             R0, =(__stack_chk_guard_ptr - 0xBB264)
BB25C:  LDR.W           R1, [R7,#var_24]
BB260:  ADD             R0, PC; __stack_chk_guard_ptr
BB262:  LDR             R0, [R0]; __stack_chk_guard
BB264:  LDR             R0, [R0]
BB266:  SUBS            R0, R0, R1
BB268:  ITTTT EQ
BB26A:  SUBEQ.W         R4, R7, #-var_1C
BB26E:  MOVEQ           SP, R4
BB270:  POPEQ.W         {R8-R11}
BB274:  POPEQ           {R4-R7,PC}
BB276:  BLX             __stack_chk_fail
