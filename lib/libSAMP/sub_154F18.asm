; =========================================================
; Game Engine Function: sub_154F18
; Address            : 0x154F18 - 0x15524A
; =========================================================

154F18:  PUSH            {R4-R7,LR}
154F1A:  ADD             R7, SP, #0xC
154F1C:  PUSH.W          {R8-R11}
154F20:  SUB             SP, SP, #4
154F22:  VPUSH           {D8-D15}
154F26:  SUB             SP, SP, #0x88
154F28:  MOV             R4, R0
154F2A:  LDR             R0, [R0,#0x58]
154F2C:  LDR             R0, [R0,#0x18]
154F2E:  CMP             R0, #0
154F30:  BEQ.W           loc_15523C
154F34:  BL              sub_15E5BC
154F38:  LDR             R1, [R4,#0x58]
154F3A:  LDR.W           R8, [R1,#0x14]
154F3E:  CMP.W           R8, #0
154F42:  BEQ.W           loc_15523C
154F46:  STR             R0, [SP,#0xE8+var_D8]
154F48:  ADD             R0, SP, #0xE8+var_B0
154F4A:  ADD.W           R1, R0, #0x10
154F4E:  MOVW            R10, #0x8400
154F52:  ADDS            R0, #0x30 ; '0'
154F54:  ADD             R6, SP, #0xE8+var_B0
154F56:  VLDR            S16, =900.0
154F5A:  MOVT            R10, #0x17D7
154F5E:  VLDR            S18, =0.0475
154F62:  VLDR            S20, =0.43
154F66:  STR             R0, [SP,#0xE8+var_E0]
154F68:  MOVS            R0, #0
154F6A:  STR             R1, [SP,#0xE8+var_DC]
154F6C:  STR             R0, [SP,#0xE8+var_CC]
154F6E:  LDR.W           R9, [R8,#0xC]
154F72:  MOV             R0, R9
154F74:  BL              sub_150588
154F78:  LDR.W           R0, [R9,#0x1C]
154F7C:  CBZ             R0, loc_154FA8
154F7E:  MOV             R0, R6; this
154F80:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
154F84:  LDRD.W          R0, R1, [R9,#0x30]
154F88:  MOVS            R6, #0
154F8A:  LDRD.W          R2, R3, [SP,#0xE8+var_B0]
154F8E:  SUBS            R2, R2, R0
154F90:  SBC.W           R1, R3, R1
154F94:  STR             R2, [SP,#0xE8+var_D0]
154F96:  MOV             R0, R2
154F98:  STR             R1, [SP,#0xE8+var_D4]
154F9A:  SUBS.W          R0, R2, R10
154F9E:  SBCS.W          R0, R1, #0
154FA2:  IT LT
154FA4:  MOVLT           R6, #1
154FA6:  B               loc_154FB2
154FA8:  MOVS            R0, #0
154FAA:  MOVS            R6, #0
154FAC:  STR             R0, [SP,#0xE8+var_D0]
154FAE:  MOVS            R0, #0
154FB0:  STR             R0, [SP,#0xE8+var_D4]
154FB2:  LDR             R1, =(_ZTI12AudioChannel - 0x154FBE); `typeinfo for'AudioChannel ...
154FB4:  MOV             R0, R9; lpsrc
154FB6:  LDR             R2, =(_ZTI18AudioChannelPlayer - 0x154FC0); `typeinfo for'AudioChannelPlayer ...
154FB8:  MOVS            R3, #0; s2d
154FBA:  ADD             R1, PC; lpstype
154FBC:  ADD             R2, PC; lpdtype
154FBE:  BLX             j___dynamic_cast
154FC2:  CMP             R0, #0
154FC4:  BEQ             loc_155052
154FC6:  MOV             R11, R0
154FC8:  LDRH.W          R0, [R0,#0x68]
154FCC:  BL              sub_15E5D4
154FD0:  CMP             R0, #0
154FD2:  BEQ.W           loc_155144
154FD6:  ADD             R1, SP, #0xE8+var_B0
154FD8:  MOV             R4, R0
154FDA:  BL              sub_F8910
154FDE:  LDR             R0, [SP,#0xE8+var_E0]
154FE0:  ADD             R5, SP, #0xE8+var_BC
154FE2:  MOV             R1, R5
154FE4:  VLDR            D16, [R0]
154FE8:  LDR             R0, [R0,#8]
154FEA:  STR             R0, [SP,#0xE8+var_68]
154FEC:  MOV             R0, R4
154FEE:  VSTR            D16, [SP,#0xE8+var_70]
154FF2:  BL              sub_F8994
154FF6:  STR             R6, [SP,#0xE8+var_CC]
154FF8:  ADD             R6, SP, #0xE8+var_C8
154FFA:  MOV             R0, R4
154FFC:  MOVS            R1, #5
154FFE:  MOV             R2, R6
155000:  BL              sub_104D90
155004:  VLDR            D16, [SP,#0xE8+var_C8]
155008:  LDR             R0, [SP,#0xE8+var_C0]
15500A:  STR             R0, [SP,#0xE8+var_68]
15500C:  MOV             R0, R4
15500E:  VSTR            D16, [SP,#0xE8+var_70]
155012:  BL              sub_F8D40
155016:  VMOV.F32        S2, S20
15501A:  LDR             R2, [SP,#0xE8+var_DC]
15501C:  VMOV            S0, R0
155020:  MOV             R0, R11
155022:  MOV             R1, R6
155024:  MOV             R3, R5
155026:  LDR             R4, [SP,#0xE8+var_CC]
155028:  VMLA.F32        S2, S0, S18
15502C:  VLDR            S0, [SP,#0xE8+var_68]
155030:  VADD.F32        S0, S0, S2
155034:  VSTR            S0, [SP,#0xE8+var_68]
155038:  BL              sub_150CB4
15503C:  LDRB.W          R0, [R11,#0x6A]
155040:  CMP             R0, #0
155042:  IT NE
155044:  MOVNE           R0, #1
155046:  CMP             R4, R0
155048:  IT NE
15504A:  STRBNE.W        R4, [R11,#0x6A]
15504E:  ADD             R6, SP, #0xE8+var_B0
155050:  B               loc_1550A6
155052:  LDR             R1, =(_ZTI12AudioChannel - 0x15505E); `typeinfo for'AudioChannel ...
155054:  MOV             R0, R9; lpsrc
155056:  LDR             R2, =(_ZTI19AudioChannelVehicle - 0x155060); `typeinfo for'AudioChannelVehicle ...
155058:  MOVS            R3, #0; s2d
15505A:  ADD             R1, PC; lpstype
15505C:  ADD             R2, PC; lpdtype
15505E:  BLX             j___dynamic_cast
155062:  CMP             R0, #0
155064:  BEQ.W           loc_1551C2
155068:  MOV             R4, R0
15506A:  LDRH.W          R0, [R0,#0x68]
15506E:  BL              sub_15E638
155072:  CMP             R0, #0
155074:  BEQ             loc_155144
155076:  STR             R6, [SP,#0xE8+var_CC]
155078:  ADD             R6, SP, #0xE8+var_B0
15507A:  MOV             R5, R0
15507C:  MOV             R1, R6
15507E:  BL              sub_F8910
155082:  LDR             R0, [SP,#0xE8+var_E0]
155084:  VLDR            D16, [R0]
155088:  LDR             R0, [R0,#8]
15508A:  STR             R0, [SP,#0xE8+var_68]
15508C:  MOV             R0, R5
15508E:  ADD             R5, SP, #0xE8+var_BC
155090:  VSTR            D16, [SP,#0xE8+var_70]
155094:  MOV             R1, R5
155096:  BL              sub_F8994
15509A:  LDR             R2, [SP,#0xE8+var_DC]
15509C:  ADD             R1, SP, #0xE8+var_70
15509E:  MOV             R0, R4
1550A0:  MOV             R3, R5
1550A2:  BL              sub_150CB4
1550A6:  LDR             R0, [SP,#0xE8+var_D8]
1550A8:  MOV             R1, R6
1550AA:  BL              sub_F8910
1550AE:  LDR             R0, =(off_234E50 - 0x1550B8)
1550B0:  MOVS            R3, #0; s2d
1550B2:  LDR             R1, =(_ZTI12AudioChannel - 0x1550BE); `typeinfo for'AudioChannel ...
1550B4:  ADD             R0, PC; off_234E50
1550B6:  VLDR            S22, [SP,#0xE8+var_70]
1550BA:  ADD             R1, PC; lpstype
1550BC:  VLDR            S24, [SP,#0xE8+var_70+4]
1550C0:  LDR             R2, [R0]; lpdtype
1550C2:  MOV             R0, R9; lpsrc
1550C4:  VLDR            S26, [SP,#0xE8+var_68]
1550C8:  VLDR            S28, [SP,#0xE8+var_80]
1550CC:  VLDR            S30, [SP,#0xE8+var_7C]
1550D0:  VLDR            S17, [SP,#0xE8+var_78]
1550D4:  BLX             j___dynamic_cast
1550D8:  VSUB.F32        S0, S24, S30
1550DC:  VSUB.F32        S2, S22, S28
1550E0:  VSUB.F32        S4, S26, S17
1550E4:  VMUL.F32        S0, S0, S0
1550E8:  VMLA.F32        S0, S2, S2
1550EC:  VMLA.F32        S0, S4, S4
1550F0:  VSTR            S0, [R0,#0x64]
1550F4:  VCMP.F32        S0, S16
1550F8:  MOVS            R0, #0
1550FA:  VMRS            APSR_nzcv, FPSCR
1550FE:  IT HI
155100:  MOVHI           R0, #1
155102:  LDR             R6, [SP,#0xE8+var_CC]
155104:  EOR.W           R1, R6, #1
155108:  ORRS            R0, R1
15510A:  BNE             loc_155140
15510C:  LDR             R0, [SP,#0xE8+var_D0]
15510E:  MOVS            R1, #0
155110:  LDR             R2, [SP,#0xE8+var_D4]
155112:  MOVS            R3, #0
155114:  SUBS.W          R0, R10, R0
155118:  SBCS            R1, R2
15511A:  MOV             R2, #0xF4240
155122:  BLX             sub_221404
155126:  MOV             R3, R0
155128:  VMOV            R0, S22
15512C:  VMOV            R1, S24
155130:  MOV             R5, R6
155132:  VMOV            R2, S26
155136:  MOVS            R6, #0xB4
155138:  STR             R6, [SP,#0xE8+var_E8]
15513A:  MOV             R6, R5
15513C:  BL              sub_15E720
155140:  MOVS            R0, #1
155142:  STR             R0, [SP,#0xE8+var_CC]
155144:  CMP             R6, #0
155146:  ADD             R6, SP, #0xE8+var_B0
155148:  MOV.W           R11, #0
15514C:  ITT NE
15514E:  LDRNE.W         R5, [R9,#0x18]
155152:  CMPNE           R5, #0
155154:  BNE             loc_155164
155156:  LDR.W           R8, [R8]
15515A:  CMP.W           R8, #0
15515E:  BNE.W           loc_154F6E
155162:  B               loc_1551E8
155164:  ADD.W           R4, R9, #0x38 ; '8'
155168:  MOV             R0, R6; this
15516A:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
15516E:  LDR             R0, [R5,#0xC]
155170:  LDRD.W          R1, R2, [SP,#0xE8+var_B0]
155174:  LDRD.W          R0, R3, [R0,#0x18]
155178:  SUBS            R0, R1, R0
15517A:  SBC.W           R1, R2, R3
15517E:  SUBS.W          R2, R0, R10
155182:  SBCS.W          R2, R1, #0
155186:  BGE             loc_1551BA
155188:  MOVW            R2, #:lower16:loc_F4240
15518C:  SUBS.W          R0, R10, R0
155190:  SBC.W           R1, R11, R1
155194:  MOVT            R2, #:upper16:loc_F4240
155198:  MOVS            R3, #0
15519A:  BLX             sub_2217B4
15519E:  LDR             R1, =(off_234A24 - 0x1551A8)
1551A0:  LDR.W           R3, [R9,#0x44]
1551A4:  ADD             R1, PC; off_234A24
1551A6:  LDR             R1, [R1]; dword_23DEEC
1551A8:  LDR             R2, [R1]
1551AA:  LDRH            R1, [R5,#8]
1551AC:  LDR.W           R2, [R2,#0x84]
1551B0:  STR             R0, [SP,#0xE8+var_E8]
1551B2:  MOV             R0, R2
1551B4:  MOV             R2, R4
1551B6:  BL              sub_138284
1551BA:  LDR             R5, [R5]
1551BC:  CMP             R5, #0
1551BE:  BNE             loc_155168
1551C0:  B               loc_155156
1551C2:  LDR             R0, =(off_234E4C - 0x1551CC)
1551C4:  MOVS            R3, #0; s2d
1551C6:  LDR             R1, =(_ZTI12AudioChannel - 0x1551CE); `typeinfo for'AudioChannel ...
1551C8:  ADD             R0, PC; off_234E4C
1551CA:  ADD             R1, PC; lpstype
1551CC:  LDR             R2, [R0]; lpdtype
1551CE:  MOV             R0, R9; lpsrc
1551D0:  BLX             j___dynamic_cast
1551D4:  CMP             R0, #0
1551D6:  BEQ             loc_155144
1551D8:  VLDR            D16, [R0,#0x6C]
1551DC:  LDR             R0, [R0,#0x74]
1551DE:  STR             R6, [SP,#0xE8+var_CC]
1551E0:  STR             R0, [SP,#0xE8+var_68]
1551E2:  VSTR            D16, [SP,#0xE8+var_70]
1551E6:  B               loc_15504E
1551E8:  LDR             R0, [SP,#0xE8+var_CC]
1551EA:  LDR             R6, [SP,#0xE8+var_D8]
1551EC:  LSLS            R0, R0, #0x1F
1551EE:  BEQ             loc_15523C
1551F0:  BL              sub_15E620
1551F4:  ADD             R4, SP, #0xE8+var_B0
1551F6:  MOV             R1, R4
1551F8:  BL              sub_F8828
1551FC:  MOV             R0, R6
1551FE:  BL              sub_104108
155202:  CBZ             R0, loc_15520C
155204:  MOV             R0, R6
155206:  BL              sub_104326
15520A:  B               loc_15520E
15520C:  LDR             R0, [R6,#4]
15520E:  ADDS            R0, #0x14
155210:  ADD             R5, SP, #0xE8+var_BC
155212:  LDR             R0, [R0]
155214:  MOV             R1, R5
155216:  VLDR            D16, [R0,#0x30]
15521A:  LDR             R0, [R0,#0x38]
15521C:  STR             R0, [SP,#0xE8+var_68]
15521E:  MOV             R0, R6
155220:  VSTR            D16, [SP,#0xE8+var_70]
155224:  BL              sub_F8994
155228:  ADD.W           R2, R4, #0x20 ; ' '
15522C:  ADD.W           R3, R4, #0x10
155230:  ADD             R0, SP, #0xE8+var_70
155232:  MOV             R1, R5
155234:  BL              sub_1546AC
155238:  BL              sub_154694
15523C:  ADD             SP, SP, #0x88
15523E:  VPOP            {D8-D15}
155242:  ADD             SP, SP, #4
155244:  POP.W           {R8-R11}
155248:  POP             {R4-R7,PC}
