; =========================================================
; Game Engine Function: sub_13CDD0
; Address            : 0x13CDD0 - 0x13CE0A
; =========================================================

13CDD0:  PUSH            {R4,R5,R7,LR}
13CDD2:  ADD             R7, SP, #8
13CDD4:  MOV             R4, R1
13CDD6:  MOV             R5, R0
13CDD8:  LDRD.W          R1, R0, [R0]; src
13CDDC:  LDR             R3, [R4,#4]
13CDDE:  SUBS            R2, R0, R1; n
13CDE0:  SUBS            R0, R3, R2; dest
13CDE2:  CMP             R2, #1
13CDE4:  STR             R0, [R4,#4]
13CDE6:  BLT             loc_13CDEE
13CDE8:  BLX             j_memcpy
13CDEC:  LDR             R0, [R4,#4]
13CDEE:  LDR             R1, [R5]
13CDF0:  STR             R0, [R5]
13CDF2:  STR             R1, [R4,#4]
13CDF4:  LDR             R0, [R4,#8]
13CDF6:  LDR             R1, [R5,#4]
13CDF8:  STR             R0, [R5,#4]
13CDFA:  STR             R1, [R4,#8]
13CDFC:  LDR             R0, [R4,#0xC]
13CDFE:  LDR             R1, [R5,#8]
13CE00:  STR             R0, [R5,#8]
13CE02:  LDR             R0, [R4,#4]
13CE04:  STR             R1, [R4,#0xC]
13CE06:  STR             R0, [R4]
13CE08:  POP             {R4,R5,R7,PC}
