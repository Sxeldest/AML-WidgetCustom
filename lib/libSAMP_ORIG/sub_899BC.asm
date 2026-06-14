; =========================================================
; Game Engine Function: sub_899BC
; Address            : 0x899BC - 0x89A84
; =========================================================

899BC:  PUSH            {R4-R7,LR}
899BE:  ADD             R7, SP, #0xC
899C0:  PUSH.W          {R11}
899C4:  SUB             SP, SP, #0x20; float
899C6:  MOV             R6, R0
899C8:  LDR             R0, =(dword_1ACF68 - 0x899CE)
899CA:  ADD             R0, PC; dword_1ACF68
899CC:  LDR             R0, [R0]
899CE:  LDR             R5, =(__stack_chk_guard_ptr - 0x899D4)
899D0:  ADD             R5, PC; __stack_chk_guard_ptr
899D2:  LDR             R5, [R5]; __stack_chk_guard
899D4:  LDR             R5, [R5]
899D6:  STR             R5, [SP,#0x30+var_14]
899D8:  MOVW            R5, #0x18C4
899DC:  ADD             R0, R5
899DE:  CBZ             R3, loc_89A0C
899E0:  CMP             R2, #0
899E2:  IT EQ
899E4:  MOVEQ.W         R2, #0xFFFFFFFF
899E8:  CMP             R2, R1
899EA:  BLS             loc_89A5E
899EC:  SUBS            R4, R2, R1
899EE:  MOV             R3, R1
899F0:  B               loc_89A00
899F2:  LDRB            R5, [R3,#1]
899F4:  CMP             R5, #0x23 ; '#'
899F6:  BEQ             loc_89A0E
899F8:  SUBS            R4, #1
899FA:  ADD.W           R3, R3, #1
899FE:  BEQ             loc_89A0C
89A00:  LDRB            R5, [R3]
89A02:  CMP             R5, #0x23 ; '#'
89A04:  BEQ             loc_899F2
89A06:  CMP             R5, #0
89A08:  BNE             loc_899F8
89A0A:  B               loc_89A0E
89A0C:  MOV             R3, R2
89A0E:  VLDR            S0, [R0,#4]
89A12:  CMP             R3, R1
89A14:  BEQ             loc_89A62
89A16:  VMOV            R2, S0; int
89A1A:  LDR             R4, [R0]
89A1C:  MOVS            R0, #0
89A1E:  STRD.W          R1, R3, [SP,#0x30+var_2C]; int
89A22:  MOVW            R3, #0xFFFF
89A26:  VLDR            S2, [R7,#arg_0]
89A2A:  STR             R0, [SP,#0x30+var_24]; int
89A2C:  ADD             R0, SP, #0x30+var_20; int
89A2E:  MOVT            R3, #0x7F7F; int
89A32:  MOV             R1, R4; int
89A34:  VSTR            S2, [SP,#0x30+var_30]
89A38:  BL              sub_A3980
89A3C:  VLDR            S0, =0.95
89A40:  VLDR            S2, [SP,#0x30+var_20]
89A44:  LDR             R0, [SP,#0x30+var_1C]
89A46:  VADD.F32        S0, S2, S0
89A4A:  VCVT.S32.F32    S0, S0
89A4E:  VCVT.F32.S32    S0, S0
89A52:  VSTR            S0, [SP,#0x30+var_20]
89A56:  LDR             R1, [SP,#0x30+var_20]
89A58:  STRD.W          R1, R0, [R6]
89A5C:  B               loc_89A6A
89A5E:  VLDR            S0, [R0,#4]
89A62:  MOVS            R0, #0
89A64:  VSTR            S0, [R6,#4]
89A68:  STR             R0, [R6]
89A6A:  LDR             R0, [SP,#0x30+var_14]
89A6C:  LDR             R1, =(__stack_chk_guard_ptr - 0x89A72)
89A6E:  ADD             R1, PC; __stack_chk_guard_ptr
89A70:  LDR             R1, [R1]; __stack_chk_guard
89A72:  LDR             R1, [R1]
89A74:  CMP             R1, R0
89A76:  ITTT EQ
89A78:  ADDEQ           SP, SP, #0x20 ; ' '
89A7A:  POPEQ.W         {R11}
89A7E:  POPEQ           {R4-R7,PC}
89A80:  BLX             __stack_chk_fail
