; =========================================================
; Game Engine Function: png_set_sCAL
; Address            : 0x2020B4 - 0x202186
; =========================================================

2020B4:  PUSH            {R4-R7,LR}
2020B6:  ADD             R7, SP, #0xC
2020B8:  PUSH.W          {R8,R9,R11}
2020BC:  VPUSH           {D8}
2020C0:  SUB             SP, SP, #0x38
2020C2:  MOV             R4, R0
2020C4:  LDR             R0, =(__stack_chk_guard_ptr - 0x2020D0)
2020C6:  VLDR            D16, [R7,#arg_0]
2020CA:  MOV             R5, R2
2020CC:  ADD             R0, PC; __stack_chk_guard_ptr
2020CE:  VLDR            D8, [R7,#arg_8]
2020D2:  VCMPE.F64       D16, #0.0
2020D6:  MOV             R6, R1
2020D8:  LDR             R0, [R0]; __stack_chk_guard
2020DA:  LDR             R0, [R0]
2020DC:  VMRS            APSR_nzcv, FPSCR
2020E0:  STR             R0, [SP,#0x58+var_24]
2020E2:  BLE             loc_20214C
2020E4:  VCMPE.F64       D8, #0.0
2020E8:  VMRS            APSR_nzcv, FPSCR
2020EC:  BLE             loc_202160
2020EE:  SUB.W           R8, R7, #-var_36
2020F2:  MOV.W           R9, #5
2020F6:  MOV             R0, R4
2020F8:  MOVS            R2, #0x12
2020FA:  MOV             R1, R8
2020FC:  STR.W           R9, [SP,#0x58+var_50]
202100:  VSTR            D16, [SP,#0x58+var_58]
202104:  BLX             j_png_ascii_from_fp
202108:  STR.W           R9, [SP,#0x58+var_50]
20210C:  ADD.W           R9, SP, #0x58+var_48
202110:  MOV             R0, R4
202112:  MOVS            R2, #0x12
202114:  MOV             R1, R9
202116:  VSTR            D8, [SP,#0x58+var_58]
20211A:  BLX             j_png_ascii_from_fp
20211E:  MOV             R0, R4
202120:  MOV             R1, R6
202122:  MOV             R2, R5
202124:  MOV             R3, R8
202126:  STR.W           R9, [SP,#0x58+var_58]
20212A:  BLX             j_png_set_sCAL_s
20212E:  LDR             R0, =(__stack_chk_guard_ptr - 0x202136)
202130:  LDR             R1, [SP,#0x58+var_24]
202132:  ADD             R0, PC; __stack_chk_guard_ptr
202134:  LDR             R0, [R0]; __stack_chk_guard
202136:  LDR             R0, [R0]
202138:  SUBS            R0, R0, R1
20213A:  ITTTT EQ
20213C:  ADDEQ           SP, SP, #0x38 ; '8'
20213E:  VPOPEQ          {D8}
202142:  POPEQ.W         {R8,R9,R11}
202146:  POPEQ           {R4-R7,PC}
202148:  BLX             __stack_chk_fail
20214C:  LDR             R0, =(__stack_chk_guard_ptr - 0x202154)
20214E:  LDR             R1, [SP,#0x58+var_24]
202150:  ADD             R0, PC; __stack_chk_guard_ptr
202152:  LDR             R0, [R0]; __stack_chk_guard
202154:  LDR             R0, [R0]
202156:  SUBS            R0, R0, R1
202158:  BNE             loc_202148
20215A:  LDR             R1, =(aInvalidScalWid_0 - 0x202160); "Invalid sCAL width ignored"
20215C:  ADD             R1, PC; "Invalid sCAL width ignored"
20215E:  B               loc_202172
202160:  LDR             R0, =(__stack_chk_guard_ptr - 0x202168)
202162:  LDR             R1, [SP,#0x58+var_24]
202164:  ADD             R0, PC; __stack_chk_guard_ptr
202166:  LDR             R0, [R0]; __stack_chk_guard
202168:  LDR             R0, [R0]
20216A:  SUBS            R0, R0, R1
20216C:  BNE             loc_202148
20216E:  LDR             R1, =(aInvalidScalHei_0 - 0x202174); "Invalid sCAL height ignored"
202170:  ADD             R1, PC; "Invalid sCAL height ignored"
202172:  MOV             R0, R4
202174:  ADD             SP, SP, #0x38 ; '8'
202176:  VPOP            {D8}
20217A:  POP.W           {R8,R9,R11}
20217E:  POP.W           {R4-R7,LR}
202182:  B.W             j_j_png_warning
