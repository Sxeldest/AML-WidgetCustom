; =========================================================
; Game Engine Function: sub_7D0F4
; Address            : 0x7D0F4 - 0x7D1FE
; =========================================================

7D0F4:  PUSH            {R4-R7,LR}
7D0F6:  ADD             R7, SP, #0xC
7D0F8:  PUSH.W          {R11}
7D0FC:  SUB             SP, SP, #0x30
7D0FE:  MOV             R4, R0
7D100:  LDR             R0, =(off_114C34 - 0x7D108)
7D102:  MOV             R5, R1
7D104:  ADD             R0, PC; off_114C34
7D106:  LDR             R0, [R0]; byte_1A44C8
7D108:  LDRB            R0, [R0]
7D10A:  LDR             R1, =(__stack_chk_guard_ptr - 0x7D110)
7D10C:  ADD             R1, PC; __stack_chk_guard_ptr
7D10E:  LDR             R1, [R1]; __stack_chk_guard
7D110:  LDR             R1, [R1]
7D112:  STR             R1, [SP,#0x40+var_14]
7D114:  CBZ             R0, loc_7D11E
7D116:  MOVS            R0, #0xC3160000
7D11C:  B               loc_7D1D8
7D11E:  VLDR            S0, [R4,#0x14]
7D122:  MOV.W           R1, #0x3F800000
7D126:  VLDR            S4, [R4,#0x2C]
7D12A:  MOVS            R2, #1
7D12C:  VLDR            S2, [R4,#0x18]
7D130:  ADD             R6, SP, #0x40+var_38
7D132:  VLDR            S6, [R4,#0x30]
7D136:  VADD.F32        S0, S4, S0
7D13A:  LDRB.W          R0, [R4,#0x34]
7D13E:  ADD.W           R3, R4, #0x80
7D142:  VADD.F32        S2, S6, S2
7D146:  STRD.W          R2, R1, [SP,#0x40+var_40]; int
7D14A:  ADD.W           R1, R4, #0x2C ; ','; int
7D14E:  CMP             R0, #0
7D150:  MOV             R0, R5; int
7D152:  MOV             R2, R6; int
7D154:  VSTR            S0, [SP,#0x40+var_38]
7D158:  VSTR            S2, [SP,#0x40+var_34]
7D15C:  IT EQ
7D15E:  ADDEQ.W         R3, R4, #0x70 ; 'p'; int
7D162:  BL              sub_7157C
7D166:  LDR             R0, =(off_114C1C - 0x7D174)
7D168:  ADD             R1, SP, #0x40+var_1C; int
7D16A:  VLDR            S2, [R4,#0x2C]
7D16E:  ADD             R2, SP, #0x40+var_24; int
7D170:  ADD             R0, PC; off_114C1C
7D172:  VLDR            S4, [R4,#0x30]
7D176:  MOV             R3, R6; int
7D178:  LDR             R0, [R0]; dword_116D5C
7D17A:  VLDR            S0, [R0]
7D17E:  VADD.F32        S6, S0, S4
7D182:  VADD.F32        S8, S0, S2
7D186:  VSTR            S6, [SP,#0x40+var_18]
7D18A:  VSTR            S8, [SP,#0x40+var_1C]
7D18E:  VLDR            S6, [R4,#0x14]
7D192:  VLDR            S8, [R4,#0x18]
7D196:  VADD.F32        S2, S2, S6
7D19A:  LDR             R0, =(off_114B98 - 0x7D1A8)
7D19C:  VADD.F32        S4, S4, S8
7D1A0:  VSTR            S0, [SP,#0x40+var_3C]
7D1A4:  ADD             R0, PC; off_114B98
7D1A6:  LDR             R0, [R0]; unk_1A3A88
7D1A8:  VLD1.32         {D16-D17}, [R0]
7D1AC:  MOVS            R0, #0
7D1AE:  VSUB.F32        S2, S2, S0
7D1B2:  VSUB.F32        S4, S4, S0
7D1B6:  STR             R0, [SP,#0x40+var_40]; int
7D1B8:  MOV             R0, R5; int
7D1BA:  VST1.64         {D16-D17}, [R6]
7D1BE:  VSTR            S2, [SP,#0x40+var_24]
7D1C2:  VSTR            S4, [SP,#0x40+var_20]
7D1C6:  BL              sub_7157C
7D1CA:  MOV             R0, R4
7D1CC:  MOV             R1, R5
7D1CE:  BL              sub_7C960
7D1D2:  MOVS            R0, #0x41700000
7D1D8:  ADD             R1, SP, #0x40+var_38
7D1DA:  STR             R0, [SP,#0x40+var_34]
7D1DC:  STR             R0, [SP,#0x40+var_38]
7D1DE:  MOV             R0, R4
7D1E0:  BL              sub_7C4A6
7D1E4:  LDR             R0, [SP,#0x40+var_14]
7D1E6:  LDR             R1, =(__stack_chk_guard_ptr - 0x7D1EC)
7D1E8:  ADD             R1, PC; __stack_chk_guard_ptr
7D1EA:  LDR             R1, [R1]; __stack_chk_guard
7D1EC:  LDR             R1, [R1]
7D1EE:  CMP             R1, R0
7D1F0:  ITTT EQ
7D1F2:  ADDEQ           SP, SP, #0x30 ; '0'
7D1F4:  POPEQ.W         {R11}
7D1F8:  POPEQ           {R4-R7,PC}
7D1FA:  BLX             __stack_chk_fail
