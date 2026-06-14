; =========================================================
; Game Engine Function: sub_84058
; Address            : 0x84058 - 0x84146
; =========================================================

84058:  PUSH            {R4,R5,R7,LR}
8405A:  ADD             R7, SP, #8
8405C:  SUB             SP, SP, #0x48
8405E:  VMOV            S4, R1
84062:  LDR             R1, =(__stack_chk_guard_ptr - 0x84070)
84064:  VMOV.F32        S0, #0.5
84068:  VLDR            S2, =0.0475
8406C:  ADD             R1, PC; __stack_chk_guard_ptr
8406E:  MOVS            R5, #0
84070:  LDR             R1, [R1]; __stack_chk_guard
84072:  LDR             R1, [R1]
84074:  VMLA.F32        S0, S4, S2
84078:  STR             R1, [SP,#0x50+var_C]
8407A:  LDR             R1, [R0]
8407C:  LDR             R2, [R0,#4]
8407E:  LDR             R0, [R0,#8]
84080:  LDR             R3, =(off_114AA8 - 0x84092)
84082:  STRD.W          R1, R2, [SP,#0x50+var_18]
84086:  MOVW            R1, #0x5799
8408A:  VMOV            S2, R0
8408E:  ADD             R3, PC; off_114AA8
84090:  MOVT            R1, #0x5C ; '\'
84094:  MOVS            R2, #0
84096:  LDR             R0, [R3]; dword_1A4404
84098:  VADD.F32        S0, S0, S2
8409C:  MOVS            R3, #0
8409E:  STR             R5, [SP,#0x50+var_1C]
840A0:  STRD.W          R5, R5, [SP,#0x50+var_24]
840A4:  LDR             R0, [R0]
840A6:  STRD.W          R5, R5, [SP,#0x50+var_50]
840AA:  ADDS            R4, R0, R1
840AC:  ADD             R0, SP, #0x50+var_18
840AE:  ADD             R1, SP, #0x50+var_24
840B0:  VSTR            S0, [SP,#0x50+var_10]
840B4:  BLX             R4
840B6:  VMOV.F32        S0, #1.0
840BA:  VLDR            S2, [SP,#0x50+var_1C]
840BE:  VCMP.F32        S2, S0
840C2:  VMRS            APSR_nzcv, FPSCR
840C6:  BMI             loc_84130
840C8:  LDR             R0, =(off_114C24 - 0x840D6)
840CA:  VMOV.F32        S0, #-23.0
840CE:  VLDR            S2, [SP,#0x50+var_24]
840D2:  ADD             R0, PC; off_114C24
840D4:  VLDR            S4, [SP,#0x50+var_20]
840D8:  LDR             R0, [R0]; dword_116D58
840DA:  VLDR            S6, [R0]
840DE:  VADD.F32        S0, S2, S0
840E2:  VSUB.F32        S2, S4, S6
840E6:  VLDR            S4, =46.0
840EA:  VADD.F32        S6, S0, S4
840EE:  VSTR            S0, [SP,#0x50+var_2C]
840F2:  VADD.F32        S4, S2, S4
840F6:  VSTR            S2, [SP,#0x50+var_28]
840FA:  VSTR            S6, [SP,#0x50+var_34]
840FE:  VSTR            S4, [SP,#0x50+var_30]
84102:  BL              sub_8C550
84106:  LDR             R1, =(dword_1A6FA8 - 0x84112)
84108:  MOV.W           R2, #0x3F800000
8410C:  ADD             R3, SP, #0x50+var_44
8410E:  ADD             R1, PC; dword_1A6FA8
84110:  LDR             R1, [R1]
84112:  LDR             R1, [R1]
84114:  STRD.W          R2, R2, [SP,#0x50+var_44]
84118:  MOV.W           R2, #0xFFFFFFFF
8411C:  STRD.W          R5, R5, [SP,#0x50+var_3C]
84120:  ADD             R5, SP, #0x50+var_3C
84122:  STRD.W          R5, R3, [SP,#0x50+var_50]
84126:  ADD             R3, SP, #0x50+var_34
84128:  STR             R2, [SP,#0x50+var_48]
8412A:  ADD             R2, SP, #0x50+var_2C
8412C:  BL              sub_9DF08
84130:  LDR             R0, [SP,#0x50+var_C]
84132:  LDR             R1, =(__stack_chk_guard_ptr - 0x84138)
84134:  ADD             R1, PC; __stack_chk_guard_ptr
84136:  LDR             R1, [R1]; __stack_chk_guard
84138:  LDR             R1, [R1]
8413A:  CMP             R1, R0
8413C:  ITT EQ
8413E:  ADDEQ           SP, SP, #0x48 ; 'H'
84140:  POPEQ           {R4,R5,R7,PC}
84142:  BLX             __stack_chk_fail
