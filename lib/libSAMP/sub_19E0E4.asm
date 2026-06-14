; =========================================================
; Game Engine Function: sub_19E0E4
; Address            : 0x19E0E4 - 0x19E1BE
; =========================================================

19E0E4:  PUSH            {R4-R7,LR}
19E0E6:  ADD             R7, SP, #0xC
19E0E8:  PUSH.W          {R8-R11}
19E0EC:  SUB             SP, SP, #0xC
19E0EE:  LDR             R6, =(__stack_chk_guard_ptr - 0x19E0F8)
19E0F0:  MUL.W           R5, R1, R2
19E0F4:  ADD             R6, PC; __stack_chk_guard_ptr
19E0F6:  LDR             R6, [R6]; __stack_chk_guard
19E0F8:  LDR             R6, [R6]
19E0FA:  STR.W           R6, [R7,#var_24]
19E0FE:  MOVS            R6, #7
19E100:  ADD.W           R6, R6, R5,LSL#1
19E104:  BIC.W           R6, R6, #7
19E108:  SUB.W           LR, SP, R6
19E10C:  LSLS            R6, R5, #1
19E10E:  STR.W           R6, [R7,#n]
19E112:  MOV             SP, LR
19E114:  CBZ             R3, loc_19E15C
19E116:  CMP             R2, #1
19E118:  IT GE
19E11A:  CMPGE           R1, #1
19E11C:  BLT             loc_19E194
19E11E:  LDR             R3, =(unk_C27A8 - 0x19E12E)
19E120:  MOV.W           R12, R2,LSL#1
19E124:  MOV.W           R10, #0
19E128:  MOV             R9, LR
19E12A:  ADD             R3, PC; unk_C27A8
19E12C:  ADD.W           R3, R3, R2,LSL#2
19E130:  SUB.W           R8, R3, #8
19E134:  LDR.W           R3, [R8,R10,LSL#2]
19E138:  MOV             R6, R9
19E13A:  MOV             R5, R1
19E13C:  MULS            R3, R1
19E13E:  ADD.W           R3, R0, R3,LSL#1
19E142:  LDRH.W          R4, [R3],#2
19E146:  SUBS            R5, #1
19E148:  STRH            R4, [R6]
19E14A:  ADD             R6, R12
19E14C:  BNE             loc_19E142
19E14E:  ADD.W           R10, R10, #1
19E152:  ADD.W           R9, R9, #2
19E156:  CMP             R10, R2
19E158:  BNE             loc_19E134
19E15A:  B               loc_19E194
19E15C:  CMP             R2, #1
19E15E:  IT GE
19E160:  CMPGE           R1, #1
19E162:  BLT             loc_19E194
19E164:  MOV.W           R8, R1,LSL#1
19E168:  LSLS            R4, R2, #1
19E16A:  MOV.W           R9, #0
19E16E:  MOV             R10, R0
19E170:  MOV             R11, LR
19E172:  MOV             R6, R10
19E174:  MOV             R3, R11
19E176:  MOV             R5, R1
19E178:  LDRH.W          R12, [R6],#2
19E17C:  SUBS            R5, #1
19E17E:  STRH.W          R12, [R3]
19E182:  ADD             R3, R4
19E184:  BNE             loc_19E178
19E186:  ADD.W           R9, R9, #1
19E18A:  ADD             R10, R8
19E18C:  ADD.W           R11, R11, #2
19E190:  CMP             R9, R2
19E192:  BNE             loc_19E172
19E194:  LDR.W           R2, [R7,#n]; n
19E198:  MOV             R1, LR; src
19E19A:  BLX             j_memcpy
19E19E:  LDR             R0, =(__stack_chk_guard_ptr - 0x19E1A8)
19E1A0:  LDR.W           R1, [R7,#var_24]
19E1A4:  ADD             R0, PC; __stack_chk_guard_ptr
19E1A6:  LDR             R0, [R0]; __stack_chk_guard
19E1A8:  LDR             R0, [R0]
19E1AA:  SUBS            R0, R0, R1
19E1AC:  ITTTT EQ
19E1AE:  SUBEQ.W         R4, R7, #-var_1C
19E1B2:  MOVEQ           SP, R4
19E1B4:  POPEQ.W         {R8-R11}
19E1B8:  POPEQ           {R4-R7,PC}
19E1BA:  BLX             __stack_chk_fail
