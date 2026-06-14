; =========================================================
; Game Engine Function: sub_104164
; Address            : 0x104164 - 0x1041F4
; =========================================================

104164:  PUSH            {R0-R5,R7,LR}
104166:  ADD             R7, SP, #0x18
104168:  MOV             R4, R0
10416A:  LDR             R0, =(__stack_chk_guard_ptr - 0x104172)
10416C:  MOVS            R5, #0
10416E:  ADD             R0, PC; __stack_chk_guard_ptr
104170:  LDR             R0, [R0]; __stack_chk_guard
104172:  LDR             R0, [R0]
104174:  STR             R0, [SP,#0x18+var_C]
104176:  MOV             R0, R4
104178:  STR             R5, [SP,#0x18+var_10]
10417A:  ADD             R1, SP, #0x18+var_10
10417C:  BL              sub_10049E
104180:  CBNZ            R0, loc_1041D0
104182:  LDRD.W          R0, R1, [R4]
104186:  SUBS            R2, R1, R0
104188:  LDR             R1, [SP,#0x18+var_10]
10418A:  CMP             R2, R1
10418C:  BCC             loc_1041CE
10418E:  CBZ             R1, loc_1041CE
104190:  STR             R0, [SP,#0x18+var_18]
104192:  ADD             R0, R1
104194:  STR             R0, [R4]
104196:  STR             R0, [SP,#0x18+var_14]
104198:  MOV             R0, SP
10419A:  LDR             R1, =(aGlobalN - 0x1041A0); "_GLOBAL__N" ...
10419C:  ADD             R1, PC; "_GLOBAL__N"
10419E:  ADD.W           R2, R1, #0xA
1041A2:  BL              sub_FF274
1041A6:  CBZ             R0, loc_1041E8
1041A8:  ADD.W           R0, R4, #0x198
1041AC:  MOVS            R1, #0x10
1041AE:  BL              sub_FFA98
1041B2:  LDR             R1, =(aAnonymousNames - 0x1041BC); "(anonymous namespace)" ...
1041B4:  MOV             R5, R0
1041B6:  LDR             R3, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x1041C4); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
1041B8:  ADD             R1, PC; "(anonymous namespace)"
1041BA:  LDR             R0, =0x1010107
1041BC:  ADD.W           R2, R1, #0x15
1041C0:  ADD             R3, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
1041C2:  ADDS            R3, #8
1041C4:  STRD.W          R3, R0, [R5]
1041C8:  STRD.W          R1, R2, [R5,#8]
1041CC:  B               loc_1041D0
1041CE:  MOVS            R5, #0
1041D0:  LDR             R0, [SP,#0x18+var_C]
1041D2:  LDR             R1, =(__stack_chk_guard_ptr - 0x1041D8)
1041D4:  ADD             R1, PC; __stack_chk_guard_ptr
1041D6:  LDR             R1, [R1]; __stack_chk_guard
1041D8:  LDR             R1, [R1]
1041DA:  CMP             R1, R0
1041DC:  ITTT EQ
1041DE:  MOVEQ           R0, R5
1041E0:  ADDEQ           SP, SP, #0x10
1041E2:  POPEQ           {R4,R5,R7,PC}
1041E4:  BLX             __stack_chk_fail
1041E8:  MOV             R1, SP
1041EA:  MOV             R0, R4
1041EC:  BL              sub_10420C
1041F0:  MOV             R5, R0
1041F2:  B               loc_1041D0
