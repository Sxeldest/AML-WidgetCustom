; =========================================================
; Game Engine Function: sub_FC138
; Address            : 0xFC138 - 0xFC1C2
; =========================================================

FC138:  PUSH            {R4-R7,LR}
FC13A:  ADD             R7, SP, #0xC
FC13C:  PUSH.W          {R3-R11}
FC140:  STR             R2, [SP,#0x30+var_28]
FC142:  MOV.W           R11, #0
FC146:  STR             R0, [SP,#0x30+var_2C]
FC148:  MOV             R10, R3
FC14A:  LDR             R0, =(__stack_chk_guard_ptr - 0xFC152)
FC14C:  MOV             R4, R1
FC14E:  ADD             R0, PC; __stack_chk_guard_ptr
FC150:  LDR             R0, [R0]; __stack_chk_guard
FC152:  LDR             R0, [R0]
FC154:  STR             R0, [SP,#0x30+var_20]
FC156:  STR.W           R11, [SP,#0x30+endptr]
FC15A:  LDR             R5, [R1,#8]
FC15C:  LDRB.W          R8, [R1]
FC160:  BLX             __errno
FC164:  LDR.W           R9, [R0]
FC168:  MOV             R6, R0
FC16A:  STR.W           R11, [R0]
FC16E:  MOVS.W          R0, R8,LSL#31
FC172:  IT EQ
FC174:  ADDEQ           R5, R4, #1
FC176:  ADD             R1, SP, #0x30+endptr; endptr
FC178:  MOV             R0, R5; nptr
FC17A:  MOV             R2, R10; base
FC17C:  BLX             strtol
FC180:  MOV             R4, R0
FC182:  LDR             R0, [R6]
FC184:  STR.W           R9, [R6]
FC188:  CMP             R0, #0x22 ; '"'
FC18A:  ITT EQ
FC18C:  LDREQ           R0, [SP,#0x30+var_2C]; int
FC18E:  BLEQ            sub_FC1CC
FC192:  LDR             R6, [SP,#0x30+endptr]
FC194:  CMP             R6, R5
FC196:  ITT EQ
FC198:  LDREQ           R0, [SP,#0x30+var_2C]; int
FC19A:  BLEQ            sub_FC21C
FC19E:  LDR             R1, [SP,#0x30+var_28]
FC1A0:  CBZ             R1, loc_FC1A6
FC1A2:  SUBS            R0, R6, R5
FC1A4:  STR             R0, [R1]
FC1A6:  LDR             R0, [SP,#0x30+var_20]
FC1A8:  LDR             R1, =(__stack_chk_guard_ptr - 0xFC1AE)
FC1AA:  ADD             R1, PC; __stack_chk_guard_ptr
FC1AC:  LDR             R1, [R1]; __stack_chk_guard
FC1AE:  LDR             R1, [R1]
FC1B0:  CMP             R1, R0
FC1B2:  ITTTT EQ
FC1B4:  MOVEQ           R0, R4
FC1B6:  ADDEQ           SP, SP, #0x14
FC1B8:  POPEQ.W         {R8-R11}
FC1BC:  POPEQ           {R4-R7,PC}
FC1BE:  BLX             __stack_chk_fail
