; =========================================================
; Game Engine Function: sub_10B118
; Address            : 0x10B118 - 0x10B1F4
; =========================================================

10B118:  PUSH            {R4-R7,LR}
10B11A:  ADD             R7, SP, #0xC
10B11C:  PUSH.W          {R8,R9,R11}
10B120:  SUB             SP, SP, #0x28
10B122:  LDR             R4, =(dword_263080 - 0x10B130)
10B124:  MOV             R8, R1
10B126:  MOV             R5, R0
10B128:  LDRD.W          R1, R0, [R7,#arg_0]
10B12C:  ADD             R4, PC; dword_263080
10B12E:  STRD.W          R1, R0, [SP,#0x40+var_20]
10B132:  STRD.W          R2, R3, [SP,#0x40+var_28]
10B136:  LDR             R0, [R4,#(dword_263084 - 0x263080)]; this
10B138:  CBZ             R0, loc_10B19A
10B13A:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
10B13E:  STR             R0, [SP,#0x40+var_2C]
10B140:  CBZ             R0, loc_10B19A
10B142:  LDR             R4, [R4]
10B144:  MOV             R6, R0
10B146:  STR             R4, [SP,#0x40+var_30]
10B148:  CBZ             R4, loc_10B19E
10B14A:  BL              sub_10B314
10B14E:  CBZ             R0, loc_10B19E
10B150:  BL              sub_10B380
10B154:  CBZ             R0, loc_10B19E
10B156:  BL              sub_10B4A0
10B15A:  BL              sub_10B314
10B15E:  MOV             R9, R0
10B160:  BL              sub_10B314
10B164:  LDRB.W          R0, [R0,#0x71C]
10B168:  LDR             R1, [R4]
10B16A:  RSB.W           R0, R0, R0,LSL#3
10B16E:  LDR.W           R12, [R1,#0x40]
10B172:  ADD.W           R0, R9, R0,LSL#2
10B176:  LDR.W           R1, [R0,#0x5AC]
10B17A:  LDR.W           R0, [R0,#0x5B0]
10B17E:  SUBS            R3, R0, R1
10B180:  STR             R1, [SP,#0x40+var_40]
10B182:  ADD.W           R2, R5, #0x20 ; ' '
10B186:  ADD             R1, SP, #0x40+var_28
10B188:  MOV             R0, R4
10B18A:  BLX             R12
10B18C:  MOV             R4, R0
10B18E:  MOVS            R0, #0
10B190:  BL              sub_163C8C
10B194:  CBZ             R4, loc_10B19E
10B196:  MOVS            R4, #0
10B198:  B               loc_10B1A0
10B19A:  MOVS            R4, #1
10B19C:  B               loc_10B1C8
10B19E:  MOVS            R4, #1
10B1A0:  ADDS            R0, R6, #4
10B1A2:  DMB.W           ISH
10B1A6:  LDREX.W         R1, [R0]
10B1AA:  SUBS            R2, R1, #1
10B1AC:  STREX.W         R3, R2, [R0]
10B1B0:  CMP             R3, #0
10B1B2:  BNE             loc_10B1A6
10B1B4:  DMB.W           ISH
10B1B8:  CBNZ            R1, loc_10B1C8
10B1BA:  LDR             R0, [R6]
10B1BC:  LDR             R1, [R0,#8]
10B1BE:  MOV             R0, R6
10B1C0:  BLX             R1
10B1C2:  MOV             R0, R6; this
10B1C4:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10B1C8:  CBZ             R4, loc_10B1EC
10B1CA:  LDR             R0, =(off_263068 - 0x10B1D0)
10B1CC:  ADD             R0, PC; off_263068
10B1CE:  LDR             R6, [R0]
10B1D0:  CBZ             R6, loc_10B1EC
10B1D2:  LDRD.W          R2, R3, [SP,#0x40+var_28]
10B1D6:  LDRD.W          R0, R1, [SP,#0x40+var_20]
10B1DA:  VLDR            S0, [R7,#arg_8]
10B1DE:  STRD.W          R0, R1, [SP,#0x40+var_40]
10B1E2:  MOV             R0, R5
10B1E4:  MOV             R1, R8
10B1E6:  VSTR            S0, [SP,#0x40+var_38]
10B1EA:  BLX             R6
10B1EC:  ADD             SP, SP, #0x28 ; '('
10B1EE:  POP.W           {R8,R9,R11}
10B1F2:  POP             {R4-R7,PC}
