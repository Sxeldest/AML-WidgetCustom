; =========================================================
; Game Engine Function: sub_F4124
; Address            : 0xF4124 - 0xF415E
; =========================================================

F4124:  PUSH            {R4,R5,R7,LR}
F4126:  ADD             R7, SP, #8
F4128:  MOV             R4, R1
F412A:  MOV             R5, R0
F412C:  LDRD.W          R1, R0, [R0]; src
F4130:  LDR             R3, [R4,#4]
F4132:  SUBS            R2, R0, R1; n
F4134:  SUBS            R0, R3, R2; dest
F4136:  CMP             R2, #1
F4138:  STR             R0, [R4,#4]
F413A:  BLT             loc_F4142
F413C:  BLX             j_memcpy
F4140:  LDR             R0, [R4,#4]
F4142:  LDR             R1, [R5]
F4144:  STR             R0, [R5]
F4146:  STR             R1, [R4,#4]
F4148:  LDR             R0, [R4,#8]
F414A:  LDR             R1, [R5,#4]
F414C:  STR             R0, [R5,#4]
F414E:  STR             R1, [R4,#8]
F4150:  LDR             R0, [R4,#0xC]
F4152:  LDR             R1, [R5,#8]
F4154:  STR             R0, [R5,#8]
F4156:  LDR             R0, [R4,#4]
F4158:  STR             R1, [R4,#0xC]
F415A:  STR             R0, [R4]
F415C:  POP             {R4,R5,R7,PC}
