; =========================================================
; Game Engine Function: sub_104020
; Address            : 0x104020 - 0x10411A
; =========================================================

104020:  PUSH            {R4-R7,LR}
104022:  ADD             R7, SP, #0xC
104024:  PUSH.W          {R11}
104028:  SUB             SP, SP, #0x10
10402A:  MOV             R4, R0
10402C:  LDR             R0, =(__stack_chk_guard_ptr - 0x104032)
10402E:  ADD             R0, PC; __stack_chk_guard_ptr
104030:  LDR             R0, [R0]; __stack_chk_guard
104032:  LDR             R0, [R0]
104034:  STR             R0, [SP,#0x20+var_14]
104036:  LDRD.W          R0, R1, [R4]
10403A:  CMP             R1, R0
10403C:  BEQ             loc_104048
10403E:  LDRB            R0, [R0]
104040:  SUBS            R0, #0x3A ; ':'
104042:  CMN.W           R0, #0xA
104046:  BCS             loc_1040B4
104048:  LDR             R1, =(aDn - 0x104050); "dn" ...
10404A:  MOV             R0, R4
10404C:  ADD             R1, PC; "dn"
10404E:  ADDS            R2, R1, #2
104050:  BL              sub_FE18C
104054:  CBZ             R0, loc_104070
104056:  LDRD.W          R0, R1, [R4]
10405A:  CMP             R1, R0
10405C:  BEQ             loc_104068
10405E:  LDRB            R0, [R0]
104060:  SUBS            R0, #0x3A ; ':'
104062:  CMN.W           R0, #0xA
104066:  BCS             loc_1040D6
104068:  MOV             R0, R4
10406A:  BL              sub_103EFC
10406E:  B               loc_1040DC
104070:  LDR             R1, =(aOn - 0x104078); "on" ...
104072:  MOV             R0, R4
104074:  ADD             R1, PC; "on"
104076:  ADDS            R2, R1, #2
104078:  BL              sub_FE18C
10407C:  MOV             R0, R4
10407E:  MOVS            R1, #0
104080:  BL              sub_10427C
104084:  STR             R0, [SP,#0x20+var_18]
104086:  CBZ             R0, loc_1040FC
104088:  MOV             R5, R0
10408A:  LDRD.W          R0, R1, [R4]
10408E:  CMP             R1, R0
104090:  BEQ             loc_1040FE
104092:  LDRB            R0, [R0]
104094:  CMP             R0, #0x49 ; 'I'
104096:  BNE             loc_1040FE
104098:  MOV             R0, R4
10409A:  MOVS            R1, #0
10409C:  MOVS            R5, #0
10409E:  BL              sub_FFCD8
1040A2:  STR             R0, [SP,#0x20+var_1C]
1040A4:  CBZ             R0, loc_1040FE
1040A6:  ADD             R1, SP, #0x20+var_18
1040A8:  ADD             R2, SP, #0x20+var_1C
1040AA:  MOV             R0, R4
1040AC:  BL              sub_FFF64
1040B0:  MOV             R5, R0
1040B2:  B               loc_1040FE
1040B4:  LDR             R0, [SP,#0x20+var_14]
1040B6:  LDR             R1, =(__stack_chk_guard_ptr - 0x1040BC)
1040B8:  ADD             R1, PC; __stack_chk_guard_ptr
1040BA:  LDR             R1, [R1]; __stack_chk_guard
1040BC:  LDR             R1, [R1]
1040BE:  CMP             R1, R0
1040C0:  ITTTT EQ
1040C2:  MOVEQ           R0, R4
1040C4:  ADDEQ           SP, SP, #0x10
1040C6:  POPEQ.W         {R11}
1040CA:  POPEQ.W         {R4-R7,LR}
1040CE:  IT EQ
1040D0:  BEQ.W           sub_103F88
1040D4:  B               loc_104116
1040D6:  MOV             R0, R4
1040D8:  BL              sub_103F88
1040DC:  MOV             R6, R0
1040DE:  CBZ             R0, loc_1040FC
1040E0:  ADD.W           R0, R4, #0x198
1040E4:  MOVS            R1, #0xC
1040E6:  BL              sub_FFA98
1040EA:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle8DtorNameE - 0x1040F4); `vtable for'`anonymous namespace'::itanium_demangle::DtorName ...
1040EC:  MOV             R5, R0
1040EE:  LDR             R0, =0x101012B
1040F0:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::DtorName
1040F2:  STR             R6, [R5,#8]
1040F4:  ADDS            R1, #8
1040F6:  STRD.W          R1, R0, [R5]
1040FA:  B               loc_1040FE
1040FC:  MOVS            R5, #0
1040FE:  LDR             R0, [SP,#0x20+var_14]
104100:  LDR             R1, =(__stack_chk_guard_ptr - 0x104106)
104102:  ADD             R1, PC; __stack_chk_guard_ptr
104104:  LDR             R1, [R1]; __stack_chk_guard
104106:  LDR             R1, [R1]
104108:  CMP             R1, R0
10410A:  ITTTT EQ
10410C:  MOVEQ           R0, R5
10410E:  ADDEQ           SP, SP, #0x10
104110:  POPEQ.W         {R11}
104114:  POPEQ           {R4-R7,PC}
104116:  BLX             __stack_chk_fail
