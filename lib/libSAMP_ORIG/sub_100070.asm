; =========================================================
; Game Engine Function: sub_100070
; Address            : 0x100070 - 0x10020E
; =========================================================

100070:  PUSH            {R4-R7,LR}
100072:  ADD             R7, SP, #0xC
100074:  PUSH.W          {R4-R9,R11}
100078:  MOV             R4, R0
10007A:  LDR             R0, =(__stack_chk_guard_ptr - 0x100080)
10007C:  ADD             R0, PC; __stack_chk_guard_ptr
10007E:  LDR             R0, [R0]; __stack_chk_guard
100080:  LDR             R0, [R0]
100082:  STR             R0, [SP,#0x28+var_1C]
100084:  LDRD.W          R2, R1, [R4]
100088:  CMP             R2, R1
10008A:  BEQ.W           loc_100190
10008E:  LDRB            R0, [R2]
100090:  MOVS            R5, #0
100092:  CMP             R0, #0x54 ; 'T'
100094:  BNE             loc_100192
100096:  ADDS            R0, R2, #1
100098:  STR             R0, [R4]
10009A:  CMP             R0, R1
10009C:  STR             R5, [SP,#0x28+var_20]
10009E:  BEQ             loc_1000E0
1000A0:  LDRB            R3, [R0]
1000A2:  MOVS            R6, #0
1000A4:  MOVS            R5, #0
1000A6:  CMP             R3, #0x4C ; 'L'
1000A8:  BNE             loc_1000D0
1000AA:  ADDS            R0, R2, #2
1000AC:  STR             R0, [R4]
1000AE:  ADD             R1, SP, #0x28+var_20
1000B0:  MOV             R0, R4
1000B2:  BL              sub_10049E
1000B6:  CMP             R0, #0
1000B8:  BNE             loc_100190
1000BA:  LDRD.W          R0, R1, [R4]
1000BE:  CMP             R0, R1
1000C0:  BEQ             loc_100190
1000C2:  LDRB            R2, [R0]
1000C4:  CMP             R2, #0x5F ; '_'
1000C6:  BNE             loc_100190
1000C8:  LDR             R2, [SP,#0x28+var_20]
1000CA:  ADDS            R0, #1
1000CC:  STR             R0, [R4]
1000CE:  ADDS            R5, R2, #1
1000D0:  CMP             R0, R1
1000D2:  STR             R6, [SP,#0x28+var_24]
1000D4:  BEQ             loc_1000E4
1000D6:  LDRB            R1, [R0]
1000D8:  CMP             R1, #0x5F ; '_'
1000DA:  BNE             loc_1000E4
1000DC:  MOVS            R6, #0
1000DE:  B               loc_100104
1000E0:  MOVS            R5, #0
1000E2:  STR             R5, [SP,#0x28+var_24]
1000E4:  ADD             R1, SP, #0x28+var_24
1000E6:  MOV             R0, R4
1000E8:  BL              sub_10049E
1000EC:  CMP             R0, #0
1000EE:  BNE             loc_100190
1000F0:  LDR             R0, [SP,#0x28+var_24]
1000F2:  ADDS            R6, R0, #1
1000F4:  LDRD.W          R0, R1, [R4]
1000F8:  STR             R6, [SP,#0x28+var_24]
1000FA:  CMP             R0, R1
1000FC:  BEQ             loc_100190
1000FE:  LDRB            R1, [R0]
100100:  CMP             R1, #0x5F ; '_'
100102:  BNE             loc_100190
100104:  ADDS            R0, #1
100106:  STR             R0, [R4]
100108:  LDRB.W          R0, [R4,#0x185]
10010C:  CBZ             R0, loc_10015E
10010E:  CBNZ            R5, loc_10015E
100110:  ADD.W           R0, R4, #0x198
100114:  MOVS            R1, #0x14
100116:  BL              sub_FFA98
10011A:  MOV             R5, R0
10011C:  MOVS            R1, #0
10011E:  STRB            R1, [R5,#0x10]
100120:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle24ForwardTemplateReferenceE - 0x100128); `vtable for'`anonymous namespace'::itanium_demangle::ForwardTemplateReference ...
100122:  LDR             R0, =0x2020224
100124:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::ForwardTemplateReference
100126:  STRD.W          R6, R1, [R5,#8]
10012A:  ADDS            R2, #8
10012C:  STRD.W          R2, R0, [R5]
100130:  LDRD.W          R0, R1, [R4,#0x16C]
100134:  CMP             R0, R1
100136:  BNE             loc_100200
100138:  LDR.W           R9, [R4,#0x168]
10013C:  SUB.W           R8, R0, R9
100140:  ADD.W           R0, R4, #0x174
100144:  CMP             R9, R0
100146:  BEQ             loc_1001CC
100148:  MOV.W           R1, R8,LSL#1; size
10014C:  MOV             R0, R9; ptr
10014E:  BLX             realloc
100152:  MOV             R6, R0
100154:  CMP             R0, #0
100156:  STR.W           R0, [R4,#0x168]
10015A:  BNE             loc_1001EC
10015C:  B               loc_10020A
10015E:  LDRD.W          R1, R0, [R4,#0x14C]
100162:  SUBS            R0, R0, R1
100164:  CMP.W           R5, R0,ASR#2
100168:  BCS             loc_100182
10016A:  LDR.W           R2, [R1,R5,LSL#2]
10016E:  CBZ             R2, loc_100182
100170:  LDRD.W          R1, R2, [R2]
100174:  SUBS            R2, R2, R1
100176:  CMP.W           R6, R2,ASR#2
10017A:  BCS             loc_100182
10017C:  LDR.W           R5, [R1,R6,LSL#2]
100180:  B               loc_100192
100182:  LDR.W           R1, [R4,#0x188]
100186:  CMP             R1, R5
100188:  BNE             loc_100190
10018A:  ASRS            R0, R0, #2
10018C:  CMP             R5, R0
10018E:  BLS             loc_1001AE
100190:  MOVS            R5, #0
100192:  LDR             R0, [SP,#0x28+var_1C]
100194:  LDR             R1, =(__stack_chk_guard_ptr - 0x10019A)
100196:  ADD             R1, PC; __stack_chk_guard_ptr
100198:  LDR             R1, [R1]; __stack_chk_guard
10019A:  LDR             R1, [R1]
10019C:  CMP             R1, R0
10019E:  ITTTT EQ
1001A0:  MOVEQ           R0, R5
1001A2:  ADDEQ           SP, SP, #0x10
1001A4:  POPEQ.W         {R8,R9,R11}
1001A8:  POPEQ           {R4-R7,PC}
1001AA:  BLX             __stack_chk_fail
1001AE:  BNE             loc_1001BE
1001B0:  MOVS            R1, #0
1001B2:  ADD.W           R0, R4, #0x14C
1001B6:  STR             R1, [SP,#0x28+var_28]
1001B8:  MOV             R1, SP
1001BA:  BL              sub_1004F2
1001BE:  LDR             R1, =(aAuto - 0x1001C6); "auto" ...
1001C0:  MOV             R0, R4
1001C2:  ADD             R1, PC; "auto"
1001C4:  BL              sub_100568
1001C8:  MOV             R5, R0
1001CA:  B               loc_100192
1001CC:  MOV.W           R0, R8,LSL#1; size
1001D0:  BLX             malloc
1001D4:  CBZ             R0, loc_10020A
1001D6:  MOV             R6, R0
1001D8:  CMP.W           R8, #0
1001DC:  BEQ             loc_1001E8
1001DE:  MOV             R0, R6; dest
1001E0:  MOV             R1, R9; src
1001E2:  MOV             R2, R8; n
1001E4:  BLX             j_memmove
1001E8:  STR.W           R6, [R4,#0x168]
1001EC:  MOV.W           R0, R8,ASR#1
1001F0:  MOV.W           R1, R8,ASR#2
1001F4:  ADD.W           R0, R6, R0,LSL#2
1001F8:  STR.W           R0, [R4,#0x170]
1001FC:  ADD.W           R0, R6, R1,LSL#2
100200:  ADDS            R1, R0, #4
100202:  STR.W           R1, [R4,#0x16C]
100206:  STR             R5, [R0]
100208:  B               loc_100192
10020A:  BLX             j__ZSt9terminatev; std::terminate(void)
