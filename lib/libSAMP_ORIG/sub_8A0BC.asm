; =========================================================
; Game Engine Function: sub_8A0BC
; Address            : 0x8A0BC - 0x8A1E0
; =========================================================

8A0BC:  PUSH            {R7,LR}
8A0BE:  MOV             R7, SP
8A0C0:  SUB             SP, SP, #0x20
8A0C2:  LDR.W           R12, =(__stack_chk_guard_ptr - 0x8A0D6)
8A0C6:  VMOV.F32        S0, #0.5
8A0CA:  VMOV            S8, R1
8A0CE:  VLDR            S6, [R7,#0xC]
8A0D2:  ADD             R12, PC; __stack_chk_guard_ptr
8A0D4:  LDR             R1, [R7,#8]
8A0D6:  LDR.W           R12, [R12]; __stack_chk_guard
8A0DA:  CMP             R1, #3; switch 4 cases
8A0DC:  LDR.W           R12, [R12]
8A0E0:  STR.W           R12, [SP,#0x28+var_C]
8A0E4:  LDR.W           R12, [R0,#0x28]
8A0E8:  VLDR            S4, [R12,#0xC]
8A0EC:  VMUL.F32        S2, S4, S0
8A0F0:  VMOV            S0, R2
8A0F4:  VMLA.F32        S0, S2, S6
8A0F8:  VADD.F32        S2, S2, S8
8A0FC:  BHI             def_8A10A; jumptable 0008A10A default case
8A0FE:  VLDR            S8, =0.4
8A102:  VMUL.F32        S4, S4, S8
8A106:  VMUL.F32        S8, S4, S6
8A10A:  TBB.W           [PC,R1]; switch jump
8A10E:  DCB 2; jump table for switch statement
8A10F:  DCB 4
8A110:  DCB 0x28
8A111:  DCB 0x2A
8A112:  VNEG.F32        S8, S8; jumptable 0008A10A case 0
8A116:  VMOV.F32        S4, #-0.75; jumptable 0008A10A case 1
8A11A:  VLDR            S6, =-0.866
8A11E:  VMOV.F32        S10, #0.75
8A122:  VLDR            S1, =0.0
8A126:  VLDR            S12, =0.866
8A12A:  VMUL.F32        S6, S8, S6
8A12E:  VMUL.F32        S1, S8, S1
8A132:  VMUL.F32        S14, S8, S12
8A136:  VMUL.F32        S4, S8, S4
8A13A:  VMUL.F32        S12, S8, S10
8A13E:  VMOV.F32        S10, S4
8A142:  B               loc_8A18E
8A144:  VLDR            S4, =0.0; jumptable 0008A10A default case
8A148:  VMOV.F32        S6, S4
8A14C:  VMOV.F32        S10, S4
8A150:  VMOV.F32        S14, S4
8A154:  VMOV.F32        S12, S4
8A158:  VMOV.F32        S1, S4
8A15C:  B               loc_8A18E
8A15E:  VNEG.F32        S8, S8; jumptable 0008A10A case 2
8A162:  VMOV.F32        S6, #-0.75; jumptable 0008A10A case 3
8A166:  VLDR            S4, =0.866
8A16A:  VMOV.F32        S14, #0.75
8A16E:  VLDR            S10, =-0.866
8A172:  VLDR            S12, =0.0
8A176:  VMUL.F32        S4, S8, S4
8A17A:  VMUL.F32        S10, S8, S10
8A17E:  VMUL.F32        S12, S8, S12
8A182:  VMUL.F32        S6, S8, S6
8A186:  VMUL.F32        S1, S8, S14
8A18A:  VMOV.F32        S14, S6
8A18E:  VADD.F32        S8, S0, S1
8A192:  STR             R3, [SP,#0x28+var_28]
8A194:  VADD.F32        S14, S0, S14
8A198:  ADD             R1, SP, #0x28+var_14
8A19A:  VADD.F32        S12, S2, S12
8A19E:  ADD             R2, SP, #0x28+var_1C
8A1A0:  VADD.F32        S10, S2, S10
8A1A4:  ADD             R3, SP, #0x28+var_24
8A1A6:  VADD.F32        S0, S0, S6
8A1AA:  VADD.F32        S2, S2, S4
8A1AE:  VSTR            S8, [SP,#0x28+var_10]
8A1B2:  VSTR            S14, [SP,#0x28+var_18]
8A1B6:  VSTR            S12, [SP,#0x28+var_14]
8A1BA:  VSTR            S10, [SP,#0x28+var_1C]
8A1BE:  VSTR            S0, [SP,#0x28+var_20]
8A1C2:  VSTR            S2, [SP,#0x28+var_24]
8A1C6:  BL              sub_9D6F8
8A1CA:  LDR             R0, [SP,#0x28+var_C]
8A1CC:  LDR             R1, =(__stack_chk_guard_ptr - 0x8A1D2)
8A1CE:  ADD             R1, PC; __stack_chk_guard_ptr
8A1D0:  LDR             R1, [R1]; __stack_chk_guard
8A1D2:  LDR             R1, [R1]
8A1D4:  CMP             R1, R0
8A1D6:  ITT EQ
8A1D8:  ADDEQ           SP, SP, #0x20 ; ' '
8A1DA:  POPEQ           {R7,PC}
8A1DC:  BLX             __stack_chk_fail
