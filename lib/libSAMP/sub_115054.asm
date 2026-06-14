; =========================================================
; Game Engine Function: sub_115054
; Address            : 0x115054 - 0x115158
; =========================================================

115054:  PUSH            {R4-R7,LR}
115056:  ADD             R7, SP, #0xC
115058:  PUSH.W          {R11}
11505C:  MOV             R5, R0
11505E:  LDR             R0, =(byte_263470 - 0x115066)
115060:  MOV             R4, R1
115062:  ADD             R0, PC; byte_263470
115064:  LDRB            R0, [R0]
115066:  DMB.W           ISH
11506A:  LDR             R6, =(dword_26346C - 0x115070)
11506C:  ADD             R6, PC; dword_26346C
11506E:  LSLS            R0, R0, #0x1F
115070:  BEQ             loc_115132
115072:  VLDR            S2, [R4,#4]
115076:  VLDR            S4, [R4]
11507A:  VMUL.F32        S0, S2, S2
11507E:  LDR             R0, [R6]
115080:  LDRB.W          R1, [R5,#0x55]
115084:  LDRB            R0, [R0]
115086:  VMLA.F32        S0, S4, S4
11508A:  VSQRT.F32       S0, S0
11508E:  CBZ             R1, loc_1150CE
115090:  CMP             R0, #0
115092:  BNE             loc_115128
115094:  VLDR            S6, =1.4142
115098:  VCMP.F32        S0, S6
11509C:  VMRS            APSR_nzcv, FPSCR
1150A0:  BLE             loc_1150BA
1150A2:  VLDR            S6, =0.7071
1150A6:  VMUL.F32        S6, S0, S6
1150AA:  VDIV.F32        S2, S2, S6
1150AE:  VDIV.F32        S4, S4, S6
1150B2:  VSTR            S4, [R4]
1150B6:  VSTR            S2, [R4,#4]
1150BA:  VMOV.F32        S6, #1.0
1150BE:  VCMP.F32        S4, S6
1150C2:  VMRS            APSR_nzcv, FPSCR
1150C6:  BLE             loc_1150F0
1150C8:  VSTR            S6, [R4]
1150CC:  B               loc_115102
1150CE:  CBNZ            R0, loc_115128
1150D0:  VMOV.F32        S6, #1.0
1150D4:  VCMP.F32        S0, S6
1150D8:  VMRS            APSR_nzcv, FPSCR
1150DC:  BLE             loc_115128
1150DE:  VDIV.F32        S6, S6, S0
1150E2:  VMUL.F32        S8, S4, S6
1150E6:  VMUL.F32        S4, S2, S6
1150EA:  VSTR            S8, [R4]
1150EE:  B               loc_115110
1150F0:  VMOV.F32        S6, #-1.0
1150F4:  VCMP.F32        S4, S6
1150F8:  VMRS            APSR_nzcv, FPSCR
1150FC:  IT MI
1150FE:  VSTRMI          S6, [R4]
115102:  VMOV.F32        S4, #1.0
115106:  VCMP.F32        S2, S4
11510A:  VMRS            APSR_nzcv, FPSCR
11510E:  BLE             loc_115116
115110:  VSTR            S4, [R4,#4]
115114:  B               loc_115128
115116:  VMOV.F32        S4, #-1.0
11511A:  VCMP.F32        S2, S4
11511E:  VMRS            APSR_nzcv, FPSCR
115122:  IT MI
115124:  VSTRMI          S4, [R4,#4]
115128:  VMOV            R0, S0
11512C:  POP.W           {R11}
115130:  POP             {R4-R7,PC}
115132:  LDR             R0, =(byte_263470 - 0x115138)
115134:  ADD             R0, PC; byte_263470 ; __guard *
115136:  BLX             j___cxa_guard_acquire
11513A:  CMP             R0, #0
11513C:  BEQ             loc_115072
11513E:  LDR             R0, =(off_23494C - 0x115144)
115140:  ADD             R0, PC; off_23494C
115142:  LDR             R1, [R0]; dword_23DF24
115144:  LDR             R0, =(byte_263470 - 0x11514C)
115146:  LDR             R1, [R1]
115148:  ADD             R0, PC; byte_263470 ; __guard *
11514A:  ADD.W           R1, R1, #0x6E0000
11514E:  ADDS            R1, #0xD8
115150:  STR             R1, [R6]
115152:  BLX             j___cxa_guard_release
115156:  B               loc_115072
