; =========================================================
; Game Engine Function: sub_80DF0
; Address            : 0x80DF0 - 0x81AAC
; =========================================================

80DF0:  PUSH            {R4-R7,LR}
80DF2:  ADD             R7, SP, #0xC
80DF4:  PUSH.W          {R8-R10}
80DF8:  SUB             SP, SP, #0x120
80DFA:  MOV             R4, R0
80DFC:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x80E04)
80E00:  ADD             R0, PC; __stack_chk_guard_ptr
80E02:  LDR             R0, [R0]; __stack_chk_guard
80E04:  LDR             R0, [R0]
80E06:  STR             R0, [SP,#0x138+var_1C]
80E08:  LDRH            R0, [R4]
80E0A:  SUBS            R0, #2; switch 21 cases
80E0C:  CMP             R0, #0x14
80E0E:  BHI.W           def_80E12; jumptable 00080E12 default case, cases 17,18
80E12:  TBH.W           [PC,R0,LSL#1]; switch jump
80E16:  DCW 0x15; jump table for switch statement
80E18:  DCW 0x2A
80E1A:  DCW 0x38
80E1C:  DCW 0x51
80E1E:  DCW 0x68
80E20:  DCW 0x7E
80E22:  DCW 0x9A
80E24:  DCW 0xB4
80E26:  DCW 0xEC
80E28:  DCW 0x14A
80E2A:  DCW 0x196
80E2C:  DCW 0x223
80E2E:  DCW 0x26F
80E30:  DCW 0x2AC
80E32:  DCW 0x2FB
80E34:  DCW 0x505
80E36:  DCW 0x505
80E38:  DCW 0x30B
80E3A:  DCW 0x34A
80E3C:  DCW 0x388
80E3E:  DCW 0x3BD
80E40:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 2
80E42:  CMP             R0, #0
80E44:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
80E48:  LDR             R0, =(aSvDbgPluginMut - 0x80E4E); "[sv:dbg:plugin:muteenable]" ...
80E4A:  ADD             R0, PC; "[sv:dbg:plugin:muteenable]"
80E4C:  BL              sub_80664
80E50:  LDR             R0, =(byte_1A49E5 - 0x80E5C)
80E52:  MOVS            R3, #0
80E54:  LDR             R1, =(byte_1A49E4 - 0x80E5E)
80E56:  LDR             R2, =(byte_1A49E6 - 0x80E60)
80E58:  ADD             R0, PC; byte_1A49E5
80E5A:  ADD             R1, PC; byte_1A49E4
80E5C:  ADD             R2, PC; byte_1A49E6
80E5E:  STRB            R3, [R0]
80E60:  MOVS            R0, #1
80E62:  STRB            R0, [R1]
80E64:  STRB            R3, [R2]
80E66:  B.W             def_80E12; jumptable 00080E12 default case, cases 17,18
80E6A:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 3
80E6C:  CMP             R0, #0
80E6E:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
80E72:  LDR             R0, =(aSvDbgPluginMut_0 - 0x80E78); "[sv:dbg:plugin:mutedisable]" ...
80E74:  ADD             R0, PC; "[sv:dbg:plugin:mutedisable]"
80E76:  BL              sub_80664
80E7A:  LDR             R0, =(byte_1A49E4 - 0x80E82)
80E7C:  MOVS            R1, #0
80E7E:  ADD             R0, PC; byte_1A49E4
80E80:  STRB            R1, [R0]
80E82:  B.W             def_80E12; jumptable 00080E12 default case, cases 17,18
80E86:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 4
80E88:  CMP             R0, #0
80E8A:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
80E8E:  LDR             R0, =(aSvDbgPluginSta - 0x80E94); "[sv:dbg:plugin:startrecord]" ...
80E90:  ADD             R0, PC; "[sv:dbg:plugin:startrecord]"
80E92:  BL              sub_80664
80E96:  LDR             R0, =(byte_1A49E4 - 0x80E9C)
80E98:  ADD             R0, PC; byte_1A49E4
80E9A:  LDRB            R0, [R0]
80E9C:  CMP             R0, #0
80E9E:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
80EA2:  LDR             R0, =(byte_1A49E5 - 0x80EAC)
80EA4:  MOVS            R2, #1
80EA6:  LDR             R1, =(byte_1A49E6 - 0x80EAE)
80EA8:  ADD             R0, PC; byte_1A49E5
80EAA:  ADD             R1, PC; byte_1A49E6
80EAC:  STRB            R2, [R0]
80EAE:  STRB            R2, [R1]
80EB0:  BL              sub_8345C
80EB4:  B.W             def_80E12; jumptable 00080E12 default case, cases 17,18
80EB8:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 5
80EBA:  CMP             R0, #0
80EBC:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
80EC0:  LDR             R0, =(aSvDbgPluginSto - 0x80EC6); "[sv:dbg:plugin:stoprecord]" ...
80EC2:  ADD             R0, PC; "[sv:dbg:plugin:stoprecord]"
80EC4:  BL              sub_80664
80EC8:  LDR             R0, =(byte_1A49E4 - 0x80ECE)
80ECA:  ADD             R0, PC; byte_1A49E4
80ECC:  LDRB            R0, [R0]
80ECE:  CMP             R0, #0
80ED0:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
80ED4:  LDR             R0, =(byte_1A49E6 - 0x80EDE)
80ED6:  MOVS            R2, #0
80ED8:  LDR             R1, =(byte_1A49E5 - 0x80EE0)
80EDA:  ADD             R0, PC; byte_1A49E6
80EDC:  ADD             R1, PC; byte_1A49E5
80EDE:  STRB            R2, [R0]
80EE0:  STRB            R2, [R1]
80EE2:  B.W             def_80E12; jumptable 00080E12 default case, cases 17,18
80EE6:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 6
80EE8:  CMP             R0, #1
80EEA:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
80EEE:  LDR             R0, =(aSvDbgPluginAdd - 0x80EF6); "[sv:dbg:plugin:addkey] : keyid(0x%hhx)" ...
80EF0:  LDRB            R1, [R4,#4]
80EF2:  ADD             R0, PC; "[sv:dbg:plugin:addkey] : keyid(0x%hhx)"
80EF4:  BL              sub_80664
80EF8:  LDRB            R1, [R4,#4]
80EFA:  LDR             R0, [SP,#0x138+var_1C]
80EFC:  LDR.W           R2, =(__stack_chk_guard_ptr - 0x80F04)
80F00:  ADD             R2, PC; __stack_chk_guard_ptr
80F02:  LDR             R2, [R2]; __stack_chk_guard
80F04:  LDR             R2, [R2]
80F06:  CMP             R2, R0
80F08:  BNE.W           loc_81836
80F0C:  LDR             R0, =(aDbgKeyfilterAd - 0x80F12); "[dbg:keyfilter] : adding key (0x%hhx)" ...
80F0E:  ADD             R0, PC; "[dbg:keyfilter] : adding key (0x%hhx)"
80F10:  B               loc_80F3C
80F12:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 7
80F14:  CMP             R0, #1
80F16:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
80F1A:  LDR             R0, =(aSvDbgPluginRem - 0x80F22); "[sv:dbg:plugin:removekey] : keyid(0x%hh"... ...
80F1C:  LDRB            R1, [R4,#4]
80F1E:  ADD             R0, PC; "[sv:dbg:plugin:removekey] : keyid(0x%hh"...
80F20:  BL              sub_80664
80F24:  LDRB            R1, [R4,#4]
80F26:  LDR             R0, [SP,#0x138+var_1C]
80F28:  LDR.W           R2, =(__stack_chk_guard_ptr - 0x80F30)
80F2C:  ADD             R2, PC; __stack_chk_guard_ptr
80F2E:  LDR             R2, [R2]; __stack_chk_guard
80F30:  LDR             R2, [R2]
80F32:  CMP             R2, R0
80F34:  BNE.W           loc_81836
80F38:  LDR             R0, =(aDbgKeyfilterRe - 0x80F3E); "[dbg:keyfilter] : removing key (0x%hhx)" ...
80F3A:  ADD             R0, PC; "[dbg:keyfilter] : removing key (0x%hhx)"
80F3C:  ADD             SP, SP, #0x120
80F3E:  POP.W           {R8-R10}
80F42:  POP.W           {R4-R7,LR}
80F46:  B.W             sub_80664
80F4A:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 8
80F4C:  CMP             R0, #0
80F4E:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
80F52:  LDR             R0, =(aSvDbgPluginRem_0 - 0x80F58); "[sv:dbg:plugin:removeallkeys]" ...
80F54:  ADD             R0, PC; "[sv:dbg:plugin:removeallkeys]"
80F56:  BL              sub_80664
80F5A:  LDR             R0, [SP,#0x138+var_1C]
80F5C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x80F64)
80F60:  ADD             R1, PC; __stack_chk_guard_ptr
80F62:  LDR             R1, [R1]; __stack_chk_guard
80F64:  LDR             R1, [R1]
80F66:  CMP             R1, R0
80F68:  BNE.W           loc_81836
80F6C:  LDR             R0, =(aDbgKeyfilterRe_0 - 0x80F72); "[dbg:keyfilter] : removing all keys" ...
80F6E:  ADD             R0, PC; "[dbg:keyfilter] : removing all keys"
80F70:  ADD             SP, SP, #0x120
80F72:  POP.W           {R8-R10}
80F76:  POP.W           {R4-R7,LR}
80F7A:  B.W             sub_80664
80F7E:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 9
80F80:  CMP             R0, #8
80F82:  BCC.W           def_80E12; jumptable 00080E12 default case, cases 17,18
80F86:  MOV             R5, R4
80F88:  LDR             R0, =(aSvDbgPluginCre - 0x80F94); "[sv:dbg:plugin:creategstream] : stream("... ...
80F8A:  LDR.W           R2, [R5,#8]!
80F8E:  LDR             R3, =(byte_4FDB8 - 0x80F9C)
80F90:  ADD             R0, PC; "[sv:dbg:plugin:creategstream] : stream("...
80F92:  LDR.W           R1, [R5,#-4]
80F96:  ADDS            R6, R5, #4
80F98:  ADD             R3, PC; byte_4FDB8
80F9A:  CMP             R2, #0
80F9C:  IT NE
80F9E:  MOVNE           R3, R6
80FA0:  BL              sub_80664
80FA4:  ADD             R0, SP, #0x138+var_114
80FA6:  MOV             R1, R5
80FA8:  MOV             R2, R6
80FAA:  BL              sub_81BC0
80FAE:  LDR             R2, =(dword_1A49D8 - 0x80FB4)
80FB0:  ADD             R2, PC; dword_1A49D8
80FB2:  MOV             R5, R2
80FB4:  LDR.W           R6, [R5,#(dword_1A49DC - 0x1A49D8)]!
80FB8:  CMP             R6, #0
80FBA:  BEQ.W           loc_8161C
80FBE:  LDR             R0, [R4,#4]
80FC0:  ADDS            R1, R2, #4
80FC2:  MOV             R9, R2
80FC4:  B               loc_80FD2
80FC6:  LDR             R2, [R6]
80FC8:  CMP             R2, #0
80FCA:  BEQ.W           loc_81680
80FCE:  MOV             R1, R6
80FD0:  MOV             R6, R2
80FD2:  LDR             R2, [R6,#0x10]
80FD4:  CMP             R0, R2
80FD6:  BCC             loc_80FC6
80FD8:  CMP             R2, R0
80FDA:  BCS.W           loc_815FE
80FDE:  MOV             R1, R6
80FE0:  LDR.W           R2, [R1,#4]!
80FE4:  CMP             R2, #0
80FE6:  BEQ.W           loc_815FE
80FEA:  MOV             R6, R1
80FEC:  B               loc_80FCE
80FEE:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 10
80FF0:  CMP             R0, #0x18
80FF2:  BCC.W           def_80E12; jumptable 00080E12 default case, cases 17,18
80FF6:  MOV             R5, R4
80FF8:  LDR.W           R12, [R5,#8]!
80FFC:  LDR             R0, =(byte_4FDB8 - 0x81016)
80FFE:  ADD.W           R8, R5, #0x14
81002:  MOV             R10, R5
81004:  MOV             R9, R5
81006:  VMOV            S2, R12
8100A:  LDR.W           R3, [R10,#4]!
8100E:  LDR.W           R6, [R9,#0x10]!
81012:  ADD             R0, PC; byte_4FDB8
81014:  VCVT.F64.F32    D16, S2
81018:  CMP             R6, #0
8101A:  IT NE
8101C:  MOVNE           R0, R8
8101E:  LDR             R2, [R5,#8]
81020:  LDR.W           R1, [R5,#-4]
81024:  VMOV            S0, R3
81028:  LDR             R3, [R5,#0xC]
8102A:  VMOV            S2, R2
8102E:  STRD.W          R6, R0, [SP,#0x138+var_120]
81032:  VCVT.F64.F32    D18, S0
81036:  LDR             R0, =(aSvDbgPluginCre_0 - 0x8103C); "[sv:dbg:plugin:createlpstream] : stream"... ...
81038:  ADD             R0, PC; "[sv:dbg:plugin:createlpstream] : stream"...
8103A:  VMOV            S4, R3
8103E:  VSTR            D18, [SP,#0x138+var_138]
81042:  VMOV            R2, R3, D16
81046:  VCVT.F64.F32    D16, S4
8104A:  VCVT.F64.F32    D17, S2
8104E:  VSTR            D17, [SP,#0x138+var_130]
81052:  VSTR            D16, [SP,#0x138+var_128]
81056:  BL              sub_80664
8105A:  ADD             R0, SP, #0x138+var_114
8105C:  MOV             R1, R9
8105E:  MOV             R2, R8
81060:  MOV             R3, R5
81062:  STR.W           R10, [SP,#0x138+var_138]
81066:  BL              sub_81C80
8106A:  LDR             R2, =(dword_1A49D8 - 0x81070)
8106C:  ADD             R2, PC; dword_1A49D8
8106E:  MOV             R5, R2
81070:  LDR.W           R6, [R5,#(dword_1A49DC - 0x1A49D8)]!
81074:  CMP             R6, #0
81076:  BEQ.W           loc_8167A
8107A:  LDR             R0, [R4,#4]
8107C:  ADDS            R1, R2, #4
8107E:  MOV             R9, R2
81080:  B               loc_8108E
81082:  LDR             R2, [R6]
81084:  CMP             R2, #0
81086:  BEQ.W           loc_8174C
8108A:  MOV             R1, R6
8108C:  MOV             R6, R2
8108E:  LDR             R2, [R6,#0x10]
81090:  CMP             R0, R2
81092:  BCC             loc_81082
81094:  CMP             R2, R0
81096:  BCS.W           loc_81604
8109A:  MOV             R1, R6
8109C:  LDR.W           R2, [R1,#4]!
810A0:  CMP             R2, #0
810A2:  BEQ.W           loc_81604
810A6:  MOV             R6, R1
810A8:  B               loc_8108A
810AA:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 11
810AC:  CMP             R0, #0x10
810AE:  BCC.W           def_80E12; jumptable 00080E12 default case, cases 17,18
810B2:  MOV             R5, R4
810B4:  LDR.W           R0, [R5,#8]!
810B8:  LDR             R6, =(byte_4FDB8 - 0x810CE)
810BA:  ADD.W           R8, R5, #0xC
810BE:  MOV             R9, R5
810C0:  MOV             R10, R5
810C2:  VMOV            S0, R0
810C6:  LDR.W           R12, [R9,#8]!
810CA:  ADD             R6, PC; byte_4FDB8
810CC:  LDR.W           R1, [R5,#-4]
810D0:  VCVT.F64.F32    D16, S0
810D4:  LDR.W           LR, [R10,#4]!
810D8:  CMP.W           R12, #0
810DC:  IT NE
810DE:  MOVNE           R6, R8
810E0:  LDR             R0, =(aSvDbgPluginCre_1 - 0x810EA); "[sv:dbg:plugin:createlstreamatvehicle] "... ...
810E2:  STRD.W          LR, R12, [SP,#0x138+var_138]
810E6:  ADD             R0, PC; "[sv:dbg:plugin:createlstreamatvehicle] "...
810E8:  STR             R6, [SP,#0x138+var_130]
810EA:  VMOV            R2, R3, D16
810EE:  BL              sub_80664
810F2:  ADD             R0, SP, #0x138+var_114
810F4:  MOV             R1, R9
810F6:  MOV             R2, R8
810F8:  MOV             R3, R5
810FA:  STR.W           R10, [SP,#0x138+var_138]
810FE:  BL              sub_81D50
81102:  LDR             R2, =(dword_1A49D8 - 0x81108)
81104:  ADD             R2, PC; dword_1A49D8
81106:  MOV             R5, R2
81108:  LDR.W           R6, [R5,#(dword_1A49DC - 0x1A49D8)]!
8110C:  CMP             R6, #0
8110E:  BEQ.W           loc_81622
81112:  LDR             R0, [R4,#4]
81114:  ADDS            R1, R2, #4
81116:  MOV             R9, R2
81118:  B               loc_81126
8111A:  LDR             R2, [R6]
8111C:  CMP             R2, #0
8111E:  BEQ.W           loc_8183A
81122:  MOV             R1, R6
81124:  MOV             R6, R2
81126:  LDR             R2, [R6,#0x10]
81128:  CMP             R0, R2
8112A:  BCC             loc_8111A
8112C:  CMP             R2, R0
8112E:  BCS.W           loc_8160A
81132:  MOV             R1, R6
81134:  LDR.W           R2, [R1,#4]!
81138:  CMP             R2, #0
8113A:  BEQ.W           loc_8160A
8113E:  MOV             R6, R1
81140:  B               loc_81122
81142:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 12
81144:  CMP             R0, #0x10
81146:  BCC.W           def_80E12; jumptable 00080E12 default case, cases 17,18
8114A:  MOV             R5, R4
8114C:  LDR.W           R0, [R5,#8]!
81150:  LDR             R6, =(byte_4FDB8 - 0x81166)
81152:  ADD.W           R8, R5, #0xC
81156:  MOV             R9, R5
81158:  MOV             R10, R5
8115A:  VMOV            S0, R0
8115E:  LDR.W           R12, [R9,#8]!
81162:  ADD             R6, PC; byte_4FDB8
81164:  LDR.W           R1, [R5,#-4]
81168:  VCVT.F64.F32    D16, S0
8116C:  LDR.W           LR, [R10,#4]!
81170:  CMP.W           R12, #0
81174:  IT NE
81176:  MOVNE           R6, R8
81178:  LDR             R0, =(aSvDbgPluginCre_2 - 0x81182); "[sv:dbg:plugin:createlstreamatplayer] :"... ...
8117A:  STRD.W          LR, R12, [SP,#0x138+var_138]
8117E:  ADD             R0, PC; "[sv:dbg:plugin:createlstreamatplayer] :"...
81180:  STR             R6, [SP,#0x138+var_130]
81182:  VMOV            R2, R3, D16
81186:  BL              sub_80664
8118A:  ADD             R0, SP, #0x138+var_114
8118C:  MOV             R1, R9
8118E:  MOV             R2, R8
81190:  MOV             R3, R5
81192:  STR.W           R10, [SP,#0x138+var_138]
81196:  BL              sub_81E1C
8119A:  LDR             R2, =(dword_1A49D8 - 0x811A0)
8119C:  ADD             R2, PC; dword_1A49D8
8119E:  MOV             R5, R2
811A0:  LDR.W           R6, [R5,#(dword_1A49DC - 0x1A49D8)]!
811A4:  CMP             R6, #0
811A6:  BEQ.W           loc_81628
811AA:  LDR             R0, [R4,#4]
811AC:  ADDS            R1, R2, #4
811AE:  MOV             R9, R2
811B0:  B               loc_811BE
811B2:  LDR             R2, [R6]
811B4:  CMP             R2, #0
811B6:  BEQ.W           loc_81906
811BA:  MOV             R1, R6
811BC:  MOV             R6, R2
811BE:  LDR             R2, [R6,#0x10]
811C0:  CMP             R0, R2
811C2:  BCC             loc_811B2
811C4:  CMP             R2, R0
811C6:  BCS.W           loc_81610
811CA:  MOV             R1, R6
811CC:  LDR.W           R2, [R1,#4]!
811D0:  CMP             R2, #0
811D2:  BEQ.W           loc_81610
811D6:  MOV             R6, R1
811D8:  B               loc_811BA
811DA:  ALIGN 4
811DC:  DCD aSvDbgPluginMut - 0x80E4E
811E0:  DCD byte_1A49E5 - 0x80E5C
811E4:  DCD byte_1A49E4 - 0x80E5E
811E8:  DCD byte_1A49E6 - 0x80E60
811EC:  DCD aSvDbgPluginMut_0 - 0x80E78
811F0:  DCD byte_1A49E4 - 0x80E82
811F4:  DCD aSvDbgPluginSta - 0x80E94
811F8:  DCD byte_1A49E4 - 0x80E9C
811FC:  DCD byte_1A49E5 - 0x80EAC
81200:  DCD byte_1A49E6 - 0x80EAE
81204:  DCD aSvDbgPluginSto - 0x80EC6
81208:  DCD byte_1A49E4 - 0x80ECE
8120C:  DCD byte_1A49E6 - 0x80EDE
81210:  DCD byte_1A49E5 - 0x80EE0
81214:  DCD aSvDbgPluginAdd - 0x80EF6
81218:  DCD aDbgKeyfilterAd - 0x80F12
8121C:  DCD aSvDbgPluginRem - 0x80F22
81220:  DCD aDbgKeyfilterRe - 0x80F3E
81224:  DCD aSvDbgPluginRem_0 - 0x80F58
81228:  DCD aDbgKeyfilterRe_0 - 0x80F72
8122C:  DCD aSvDbgPluginCre - 0x80F94
81230:  DCD byte_4FDB8 - 0x80F9C
81234:  DCD dword_1A49D8 - 0x80FB4
81238:  DCD byte_4FDB8 - 0x81016
8123C:  DCD aSvDbgPluginCre_0 - 0x8103C
81240:  DCD dword_1A49D8 - 0x81070
81244:  DCD byte_4FDB8 - 0x810CE
81248:  DCD aSvDbgPluginCre_1 - 0x810EA
8124C:  DCD dword_1A49D8 - 0x81108
81250:  DCD byte_4FDB8 - 0x81166
81254:  DCD aSvDbgPluginCre_2 - 0x81182
81258:  DCD dword_1A49D8 - 0x811A0
8125C:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 13
8125E:  CMP             R0, #0x10
81260:  BCC.W           def_80E12; jumptable 00080E12 default case, cases 17,18
81264:  MOV             R5, R4
81266:  LDR.W           R0, [R5,#8]!
8126A:  LDR             R6, =(byte_4FDB8 - 0x81280)
8126C:  ADD.W           R8, R5, #0xC
81270:  MOV             R9, R5
81272:  MOV             R10, R5
81274:  VMOV            S0, R0
81278:  LDR.W           R12, [R9,#8]!
8127C:  ADD             R6, PC; byte_4FDB8
8127E:  LDR.W           R1, [R5,#-4]
81282:  VCVT.F64.F32    D16, S0
81286:  LDR.W           LR, [R10,#4]!
8128A:  CMP.W           R12, #0
8128E:  IT NE
81290:  MOVNE           R6, R8
81292:  LDR             R0, =(aSvDbgPluginCre_3 - 0x8129C); "[sv:dbg:plugin:createlstreamatobject] :"... ...
81294:  STRD.W          LR, R12, [SP,#0x138+var_138]
81298:  ADD             R0, PC; "[sv:dbg:plugin:createlstreamatobject] :"...
8129A:  STR             R6, [SP,#0x138+var_130]
8129C:  VMOV            R2, R3, D16
812A0:  BL              sub_80664
812A4:  ADD             R0, SP, #0x138+var_114
812A6:  MOV             R1, R9
812A8:  MOV             R2, R8
812AA:  MOV             R3, R5
812AC:  STR.W           R10, [SP,#0x138+var_138]
812B0:  BL              sub_81EEC
812B4:  LDR             R2, =(dword_1A49D8 - 0x812BA)
812B6:  ADD             R2, PC; dword_1A49D8
812B8:  MOV             R5, R2
812BA:  LDR.W           R6, [R5,#(dword_1A49DC - 0x1A49D8)]!
812BE:  CMP             R6, #0
812C0:  BEQ.W           loc_81674
812C4:  LDR             R0, [R4,#4]
812C6:  ADDS            R1, R2, #4
812C8:  MOV             R9, R2
812CA:  B               loc_812D8
812CC:  LDR             R2, [R6]
812CE:  CMP             R2, #0
812D0:  BEQ.W           loc_819D2
812D4:  MOV             R1, R6
812D6:  MOV             R6, R2
812D8:  LDR             R2, [R6,#0x10]
812DA:  CMP             R0, R2
812DC:  BCC             loc_812CC
812DE:  CMP             R2, R0
812E0:  BCS.W           loc_81616
812E4:  MOV             R1, R6
812E6:  LDR.W           R2, [R1,#4]!
812EA:  CMP             R2, #0
812EC:  BEQ.W           loc_81616
812F0:  MOV             R6, R1
812F2:  B               loc_812D4
812F4:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 14
812F6:  CMP             R0, #8
812F8:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
812FC:  LDR             R0, [R4,#8]
812FE:  LDR             R1, [R4,#4]
81300:  VMOV            S0, R0
81304:  LDR             R0, =(aSvDbgPluginUpd - 0x8130E); "[sv:dbg:plugin:updatelpstreamdistance] "... ...
81306:  VCVT.F64.F32    D16, S0
8130A:  ADD             R0, PC; "[sv:dbg:plugin:updatelpstreamdistance] "...
8130C:  VMOV            R2, R3, D16
81310:  BL              sub_80664
81314:  LDR             R0, =(dword_1A49D8 - 0x8131A)
81316:  ADD             R0, PC; dword_1A49D8
81318:  LDR             R5, [R0,#(dword_1A49DC - 0x1A49D8)]
8131A:  CMP             R5, #0
8131C:  BEQ.W           def_80E12; jumptable 00080E12 default case, cases 17,18
81320:  ADDS            R3, R0, #4
81322:  LDR             R1, [R4,#4]
81324:  MOV             R0, R3
81326:  LDR             R6, [R5,#0x10]
81328:  MOV             R2, R5
8132A:  CMP             R6, R1
8132C:  IT CC
8132E:  ADDCC           R2, #4
81330:  LDR             R2, [R2]
81332:  IT CS
81334:  MOVCS           R0, R5
81336:  CMP             R2, #0
81338:  MOV             R5, R2
8133A:  BNE             loc_81326
8133C:  CMP             R0, R3
8133E:  BEQ.W           def_80E12; jumptable 00080E12 default case, cases 17,18
81342:  LDR             R2, [R0,#0x10]
81344:  CMP             R1, R2
81346:  BCC.W           def_80E12; jumptable 00080E12 default case, cases 17,18
8134A:  LDR             R1, [R4,#8]
8134C:  LDR             R0, [R0,#0x14]
8134E:  LDR             R2, [SP,#0x138+var_1C]
81350:  LDR.W           R3, =(__stack_chk_guard_ptr - 0x81358)
81354:  ADD             R3, PC; __stack_chk_guard_ptr
81356:  LDR             R3, [R3]; __stack_chk_guard
81358:  LDR             R3, [R3]
8135A:  CMP             R3, R2
8135C:  ITTTT EQ
8135E:  ADDEQ           SP, SP, #0x120
81360:  POPEQ.W         {R8-R10}
81364:  POPEQ.W         {R4-R7,LR}
81368:  BEQ.W           sub_7E294
8136C:  B               loc_81836
8136E:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 15
81370:  CMP             R0, #0x10
81372:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
81376:  LDR.W           R0, [R4,#8]!
8137A:  LDR             R1, [R4,#4]
8137C:  VMOV            S0, R0
81380:  LDR             R0, [R4,#8]
81382:  VCVT.F64.F32    D16, S0
81386:  VMOV            R2, R3, D16
8138A:  VMOV            S2, R1
8138E:  LDR.W           R1, [R4,#-4]
81392:  VMOV            S0, R0
81396:  LDR             R0, =(aSvDbgPluginUpd_0 - 0x813A0); "[sv:dbg:plugin:updatelpstreamcoords] : "... ...
81398:  VCVT.F64.F32    D17, S2
8139C:  ADD             R0, PC; "[sv:dbg:plugin:updatelpstreamcoords] : "...
8139E:  VCVT.F64.F32    D16, S0
813A2:  VSTR            D17, [SP,#0x138+var_138]
813A6:  VSTR            D16, [SP,#0x138+var_130]
813AA:  BL              sub_80664
813AE:  LDR             R0, =(dword_1A49D8 - 0x813B4)
813B0:  ADD             R0, PC; dword_1A49D8
813B2:  LDR             R5, [R0,#(dword_1A49DC - 0x1A49D8)]
813B4:  CMP             R5, #0
813B6:  BEQ.W           def_80E12; jumptable 00080E12 default case, cases 17,18
813BA:  ADDS            R3, R0, #4
813BC:  LDR.W           R1, [R4,#-4]
813C0:  MOV             R0, R3
813C2:  LDR             R6, [R5,#0x10]
813C4:  MOV             R2, R5
813C6:  CMP             R6, R1
813C8:  IT CC
813CA:  ADDCC           R2, #4
813CC:  LDR             R2, [R2]
813CE:  IT CS
813D0:  MOVCS           R0, R5
813D2:  CMP             R2, #0
813D4:  MOV             R5, R2
813D6:  BNE             loc_813C2
813D8:  CMP             R0, R3
813DA:  BEQ.W           def_80E12; jumptable 00080E12 default case, cases 17,18
813DE:  LDR             R2, [R0,#0x10]
813E0:  CMP             R1, R2
813E2:  BCC.W           def_80E12; jumptable 00080E12 default case, cases 17,18
813E6:  LDR             R0, [R0,#0x14]
813E8:  LDR             R1, [SP,#0x138+var_1C]
813EA:  LDR.W           R2, =(__stack_chk_guard_ptr - 0x813F2)
813EE:  ADD             R2, PC; __stack_chk_guard_ptr
813F0:  LDR             R2, [R2]; __stack_chk_guard
813F2:  LDR             R2, [R2]
813F4:  CMP             R2, R1
813F6:  ITTTT EQ
813F8:  MOVEQ           R1, R4
813FA:  ADDEQ           SP, SP, #0x120
813FC:  POPEQ.W         {R8-R10}
81400:  POPEQ.W         {R4-R7,LR}
81404:  IT EQ
81406:  BEQ.W           sub_85CCC
8140A:  B               loc_81836
8140C:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 16
8140E:  CMP             R0, #4
81410:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
81414:  LDR             R0, =(aSvDbgPluginDel - 0x8141E); "[sv:dbg:plugin:deletestream] : stream(%"... ...
81416:  LDR.W           R1, [R4,#4]!
8141A:  ADD             R0, PC; "[sv:dbg:plugin:deletestream] : stream(%"...
8141C:  BL              sub_80664
81420:  LDR             R0, =(dword_1A49D8 - 0x81428)
81422:  MOV             R1, R4
81424:  ADD             R0, PC; dword_1A49D8
81426:  BL              sub_82284
8142A:  B               def_80E12; jumptable 00080E12 default case, cases 17,18
8142C:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 19
8142E:  CMP             R0, #0xC
81430:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
81434:  LDR             R0, [R4,#0xC]
81436:  LDR             R1, [R4,#4]
81438:  LDR             R2, [R4,#8]
8143A:  VMOV            S0, R0
8143E:  LDR             R0, =(aSvDbgPluginStr - 0x81448); "[sv:dbg:plugin:streamsetparameter] : st"... ...
81440:  VCVT.F64.F32    D16, S0
81444:  ADD             R0, PC; "[sv:dbg:plugin:streamsetparameter] : st"...
81446:  VSTR            D16, [SP,#0x138+var_138]
8144A:  BL              sub_80664
8144E:  LDR             R0, =(dword_1A49D8 - 0x81454)
81450:  ADD             R0, PC; dword_1A49D8
81452:  LDR             R5, [R0,#(dword_1A49DC - 0x1A49D8)]
81454:  CMP             R5, #0
81456:  BEQ.W           def_80E12; jumptable 00080E12 default case, cases 17,18
8145A:  ADDS            R3, R0, #4
8145C:  LDR             R1, [R4,#4]
8145E:  MOV             R0, R3
81460:  LDR             R6, [R5,#0x10]
81462:  MOV             R2, R5
81464:  CMP             R6, R1
81466:  IT CC
81468:  ADDCC           R2, #4
8146A:  LDR             R2, [R2]
8146C:  IT CS
8146E:  MOVCS           R0, R5
81470:  CMP             R2, #0
81472:  MOV             R5, R2
81474:  BNE             loc_81460
81476:  CMP             R0, R3
81478:  BEQ.W           def_80E12; jumptable 00080E12 default case, cases 17,18
8147C:  LDR             R2, [R0,#0x10]
8147E:  CMP             R1, R2
81480:  BCC.W           def_80E12; jumptable 00080E12 default case, cases 17,18
81484:  LDR             R2, [R4,#0xC]
81486:  LDRB            R1, [R4,#8]
81488:  LDR             R0, [R0,#0x14]
8148A:  LDR             R3, [SP,#0x138+var_1C]
8148C:  LDR.W           R6, =(__stack_chk_guard_ptr - 0x81494)
81490:  ADD             R6, PC; __stack_chk_guard_ptr
81492:  LDR             R6, [R6]; __stack_chk_guard
81494:  LDR             R6, [R6]
81496:  CMP             R6, R3
81498:  ITTTT EQ
8149A:  ADDEQ           SP, SP, #0x120
8149C:  POPEQ.W         {R8-R10}
814A0:  POPEQ.W         {R4-R7,LR}
814A4:  BEQ.W           sub_84DD6
814A8:  B               loc_81836
814AA:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 20
814AC:  CMP             R0, #0x14
814AE:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
814B2:  LDR             R0, [R4,#0xC]
814B4:  LDR             R3, [R4,#0x10]
814B6:  LDR             R1, [R4,#4]
814B8:  VMOV            S2, R0
814BC:  LDR             R2, [R4,#8]
814BE:  VMOV            S0, R3
814C2:  LDR             R3, [R4,#0x14]
814C4:  VCVT.F64.F32    D17, S2
814C8:  LDR             R0, =(aSvDbgPluginStr_0 - 0x814D0); "[sv:dbg:plugin:streamslideparameter] : "... ...
814CA:  STR             R3, [SP,#0x138+var_128]
814CC:  ADD             R0, PC; "[sv:dbg:plugin:streamslideparameter] : "...
814CE:  VCVT.F64.F32    D16, S0
814D2:  VSTR            D17, [SP,#0x138+var_138]
814D6:  VSTR            D16, [SP,#0x138+var_130]
814DA:  BL              sub_80664
814DE:  LDR             R0, =(dword_1A49D8 - 0x814E4)
814E0:  ADD             R0, PC; dword_1A49D8
814E2:  LDR             R5, [R0,#(dword_1A49DC - 0x1A49D8)]
814E4:  CMP             R5, #0
814E6:  BEQ.W           def_80E12; jumptable 00080E12 default case, cases 17,18
814EA:  ADDS            R3, R0, #4
814EC:  LDR             R1, [R4,#4]
814EE:  MOV             R0, R3
814F0:  LDR             R6, [R5,#0x10]
814F2:  MOV             R2, R5
814F4:  CMP             R6, R1
814F6:  IT CC
814F8:  ADDCC           R2, #4
814FA:  LDR             R2, [R2]
814FC:  IT CS
814FE:  MOVCS           R0, R5
81500:  CMP             R2, #0
81502:  MOV             R5, R2
81504:  BNE             loc_814F0
81506:  CMP             R0, R3
81508:  BEQ.W           def_80E12; jumptable 00080E12 default case, cases 17,18
8150C:  LDR             R2, [R0,#0x10]
8150E:  CMP             R1, R2
81510:  BCC.W           def_80E12; jumptable 00080E12 default case, cases 17,18
81514:  LDR             R3, [R4,#0x10]
81516:  LDR             R2, [R4,#0xC]
81518:  LDRB            R1, [R4,#8]
8151A:  LDR             R0, [R0,#0x14]
8151C:  LDR             R6, [R4,#0x14]
8151E:  STR             R6, [SP,#0x138+var_138]
81520:  BL              sub_84EA0
81524:  B               def_80E12; jumptable 00080E12 default case, cases 17,18
81526:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 21
81528:  CMP             R0, #0x10
8152A:  BCC.W           def_80E12; jumptable 00080E12 default case, cases 17,18
8152E:  LDR             R1, [R4,#4]
81530:  LDR             R2, [R4,#8]
81532:  LDR             R3, [R4,#0xC]
81534:  LDR             R6, [R4,#0x10]
81536:  LDR             R0, =(aSvDbgPluginEff - 0x8153E); "[sv:dbg:plugin:effectcreate] : stream(%"... ...
81538:  STR             R6, [SP,#0x138+var_138]
8153A:  ADD             R0, PC; "[sv:dbg:plugin:effectcreate] : stream(%"...
8153C:  BL              sub_80664
81540:  LDR             R0, =(dword_1A49D8 - 0x81546)
81542:  ADD             R0, PC; dword_1A49D8
81544:  LDR             R5, [R0,#(dword_1A49DC - 0x1A49D8)]
81546:  CMP             R5, #0
81548:  BEQ.W           def_80E12; jumptable 00080E12 default case, cases 17,18
8154C:  ADDS            R3, R0, #4
8154E:  LDR             R1, [R4,#4]
81550:  MOV             R0, R3
81552:  LDR             R6, [R5,#0x10]
81554:  MOV             R2, R5
81556:  CMP             R6, R1
81558:  IT CC
8155A:  ADDCC           R2, #4
8155C:  LDR             R2, [R2]
8155E:  IT CS
81560:  MOVCS           R0, R5
81562:  CMP             R2, #0
81564:  MOV             R5, R2
81566:  BNE             loc_81552
81568:  CMP             R0, R3
8156A:  BEQ.W           def_80E12; jumptable 00080E12 default case, cases 17,18
8156E:  LDR             R2, [R0,#0x10]
81570:  CMP             R1, R2
81572:  BCC.W           def_80E12; jumptable 00080E12 default case, cases 17,18
81576:  LDRH            R6, [R4,#2]
81578:  ADD.W           R5, R4, #0x14
8157C:  LDR             R1, [R4,#8]
8157E:  LDR             R2, [R4,#0xC]
81580:  SUBS            R6, #0x10
81582:  LDR             R3, [R4,#0x10]
81584:  LDR             R0, [R0,#0x14]
81586:  STRD.W          R5, R6, [SP,#0x138+var_138]
8158A:  BL              sub_84F78
8158E:  B               def_80E12; jumptable 00080E12 default case, cases 17,18
81590:  LDRH            R0, [R4,#2]; jumptable 00080E12 case 22
81592:  CMP             R0, #8
81594:  BNE.W           def_80E12; jumptable 00080E12 default case, cases 17,18
81598:  LDR             R0, =(aSvDbgPluginEff_0 - 0x815A2); "[sv:dbg:plugin:effectdelete] : stream(%"... ...
8159A:  LDR             R1, [R4,#4]
8159C:  LDR             R2, [R4,#8]
8159E:  ADD             R0, PC; "[sv:dbg:plugin:effectdelete] : stream(%"...
815A0:  BL              sub_80664
815A4:  LDR             R0, =(dword_1A49D8 - 0x815AA)
815A6:  ADD             R0, PC; dword_1A49D8
815A8:  LDR             R5, [R0,#(dword_1A49DC - 0x1A49D8)]
815AA:  CMP             R5, #0
815AC:  BEQ.W           def_80E12; jumptable 00080E12 default case, cases 17,18
815B0:  ADDS            R3, R0, #4
815B2:  LDR             R1, [R4,#4]
815B4:  MOV             R0, R3
815B6:  LDR             R6, [R5,#0x10]
815B8:  MOV             R2, R5
815BA:  CMP             R6, R1
815BC:  IT CC
815BE:  ADDCC           R2, #4
815C0:  LDR             R2, [R2]
815C2:  IT CS
815C4:  MOVCS           R0, R5
815C6:  CMP             R2, #0
815C8:  MOV             R5, R2
815CA:  BNE             loc_815B6
815CC:  CMP             R0, R3
815CE:  BEQ.W           def_80E12; jumptable 00080E12 default case, cases 17,18
815D2:  LDR             R2, [R0,#0x10]
815D4:  CMP             R1, R2
815D6:  BCC.W           def_80E12; jumptable 00080E12 default case, cases 17,18
815DA:  LDR             R1, [R4,#8]
815DC:  LDR             R0, [R0,#0x14]
815DE:  LDR             R2, [SP,#0x138+var_1C]
815E0:  LDR.W           R3, =(__stack_chk_guard_ptr - 0x815E8)
815E4:  ADD             R3, PC; __stack_chk_guard_ptr
815E6:  LDR             R3, [R3]; __stack_chk_guard
815E8:  LDR             R3, [R3]
815EA:  CMP             R3, R2
815EC:  ITTTT EQ
815EE:  ADDEQ           SP, SP, #0x120
815F0:  POPEQ.W         {R8-R10}
815F4:  POPEQ.W         {R4-R7,LR}
815F8:  BEQ.W           sub_8509A
815FC:  B               loc_81836
815FE:  MOV             R5, R6
81600:  MOV             R6, R1
81602:  B               loc_81682
81604:  MOV             R5, R6
81606:  MOV             R6, R1
81608:  B               loc_8174E
8160A:  MOV             R5, R6
8160C:  MOV             R6, R1
8160E:  B               loc_8183C
81610:  MOV             R5, R6
81612:  MOV             R6, R1
81614:  B               loc_81908
81616:  MOV             R5, R6
81618:  MOV             R6, R1
8161A:  B               loc_819D4
8161C:  MOV             R9, R2
8161E:  MOV             R6, R5
81620:  B               loc_81682
81622:  MOV             R9, R2
81624:  MOV             R6, R5
81626:  B               loc_8183C
81628:  MOV             R9, R2
8162A:  MOV             R6, R5
8162C:  B               loc_81908
8162E:  ALIGN 0x10
81630:  DCD byte_4FDB8 - 0x81280
81634:  DCD aSvDbgPluginCre_3 - 0x8129C
81638:  DCD dword_1A49D8 - 0x812BA
8163C:  DCD aSvDbgPluginUpd - 0x8130E
81640:  DCD dword_1A49D8 - 0x8131A
81644:  DCD aSvDbgPluginUpd_0 - 0x813A0
81648:  DCD dword_1A49D8 - 0x813B4
8164C:  DCD aSvDbgPluginDel - 0x8141E
81650:  DCD dword_1A49D8 - 0x81428
81654:  DCD aSvDbgPluginStr - 0x81448
81658:  DCD dword_1A49D8 - 0x81454
8165C:  DCD aSvDbgPluginStr_0 - 0x814D0
81660:  DCD dword_1A49D8 - 0x814E4
81664:  DCD aSvDbgPluginEff - 0x8153E
81668:  DCD dword_1A49D8 - 0x81546
8166C:  DCD aSvDbgPluginEff_0 - 0x815A2
81670:  DCD dword_1A49D8 - 0x815AA
81674:  MOV             R9, R2
81676:  MOV             R6, R5
81678:  B               loc_819D4
8167A:  MOV             R9, R2
8167C:  MOV             R6, R5
8167E:  B               loc_8174E
81680:  MOV             R5, R6
81682:  LDR.W           R8, [R6]
81686:  CMP.W           R8, #0
8168A:  BNE             loc_816D0
8168C:  MOVS            R0, #0x18; unsigned int
8168E:  BLX             j__Znwj; operator new(uint)
81692:  MOV             R8, R0
81694:  MOVS            R0, #0
81696:  STR.W           R0, [R8,#0x14]
8169A:  STRD.W          R0, R0, [R8]
8169E:  STR.W           R5, [R8,#8]
816A2:  STR.W           R8, [R6]
816A6:  LDR.W           R0, [R9]
816AA:  LDR             R1, [R4,#4]
816AC:  LDR             R0, [R0]
816AE:  STR.W           R1, [R8,#0x10]
816B2:  CMP             R0, #0
816B4:  ITTE NE
816B6:  STRNE.W         R0, [R9]
816BA:  LDRNE           R1, [R6]
816BC:  MOVEQ           R1, R8
816BE:  LDR.W           R0, [R9,#(dword_1A49DC - 0x1A49D8)]
816C2:  BL              sub_77D8A
816C6:  LDR.W           R0, [R9,#(dword_1A49E0 - 0x1A49D8)]
816CA:  ADDS            R0, #1
816CC:  STR.W           R0, [R9,#(dword_1A49E0 - 0x1A49D8)]
816D0:  LDR.W           R0, [R8,#0x14]
816D4:  MOVS            R4, #0
816D6:  LDR             R1, [SP,#0x138+var_114]
816D8:  STR.W           R1, [R8,#0x14]
816DC:  STR             R4, [SP,#0x138+var_114]
816DE:  CBZ             R0, loc_816F4
816E0:  LDR             R1, [R0]
816E2:  LDR             R1, [R1,#4]
816E4:  BLX             R1
816E6:  LDR             R0, [SP,#0x138+var_114]
816E8:  STR             R4, [SP,#0x138+var_114]
816EA:  CMP             R0, #0
816EC:  ITTT NE
816EE:  LDRNE           R1, [R0]
816F0:  LDRNE           R1, [R1,#4]
816F2:  BLXNE           R1
816F4:  LDR             R1, =(off_114D00 - 0x816FE)
816F6:  ADD             R4, SP, #0x138+var_38
816F8:  LDR             R2, =(unk_111394 - 0x81704)
816FA:  ADD             R1, PC; off_114D00
816FC:  LDR.W           R0, [R8,#0x14]
81700:  ADD             R2, PC; unk_111394
81702:  STR             R4, [SP,#0x138+var_28]
81704:  LDR             R1, [R1]; sub_841B0
81706:  ADD.W           R5, R2, #8
8170A:  STRD.W          R5, R1, [SP,#0x138+var_38]
8170E:  MOV             R1, R4
81710:  BL              sub_850DC
81714:  LDR             R0, [SP,#0x138+var_28]
81716:  CMP             R4, R0
81718:  BEQ             loc_81720
8171A:  CBZ             R0, loc_8172A
8171C:  MOVS            R1, #5
8171E:  B               loc_81722
81720:  MOVS            R1, #4
81722:  LDR             R2, [R0]
81724:  LDR.W           R1, [R2,R1,LSL#2]
81728:  BLX             R1
8172A:  LDR             R1, =(off_114D04 - 0x81736)
8172C:  ADD             R4, SP, #0x138+var_50
8172E:  LDR.W           R0, [R8,#0x14]
81732:  ADD             R1, PC; off_114D04
81734:  STR             R4, [SP,#0x138+var_40]
81736:  LDR             R1, [R1]; sub_8423C
81738:  STRD.W          R5, R1, [SP,#0x138+var_50]
8173C:  MOV             R1, R4
8173E:  BL              sub_851AA
81742:  LDR             R0, [SP,#0x138+var_40]
81744:  CMP             R4, R0
81746:  BNE             loc_81814
81748:  MOVS            R1, #4
8174A:  B               loc_81818
8174C:  MOV             R5, R6
8174E:  LDR.W           R8, [R6]
81752:  CMP.W           R8, #0
81756:  BNE             loc_8179C
81758:  MOVS            R0, #0x18; unsigned int
8175A:  BLX             j__Znwj; operator new(uint)
8175E:  MOV             R8, R0
81760:  MOVS            R0, #0
81762:  STR.W           R0, [R8,#0x14]
81766:  STRD.W          R0, R0, [R8]
8176A:  STR.W           R5, [R8,#8]
8176E:  STR.W           R8, [R6]
81772:  LDR.W           R0, [R9]
81776:  LDR             R1, [R4,#4]
81778:  LDR             R0, [R0]
8177A:  STR.W           R1, [R8,#0x10]
8177E:  CMP             R0, #0
81780:  ITTE NE
81782:  STRNE.W         R0, [R9]
81786:  LDRNE           R1, [R6]
81788:  MOVEQ           R1, R8
8178A:  LDR.W           R0, [R9,#(dword_1A49DC - 0x1A49D8)]
8178E:  BL              sub_77D8A
81792:  LDR.W           R0, [R9,#(dword_1A49E0 - 0x1A49D8)]
81796:  ADDS            R0, #1
81798:  STR.W           R0, [R9,#(dword_1A49E0 - 0x1A49D8)]
8179C:  LDR.W           R0, [R8,#0x14]
817A0:  MOVS            R4, #0
817A2:  LDR             R1, [SP,#0x138+var_114]
817A4:  STR.W           R1, [R8,#0x14]
817A8:  STR             R4, [SP,#0x138+var_114]
817AA:  CBZ             R0, loc_817C0
817AC:  LDR             R1, [R0]
817AE:  LDR             R1, [R1,#4]
817B0:  BLX             R1
817B2:  LDR             R0, [SP,#0x138+var_114]
817B4:  STR             R4, [SP,#0x138+var_114]
817B6:  CMP             R0, #0
817B8:  ITTT NE
817BA:  LDRNE           R1, [R0]
817BC:  LDRNE           R1, [R1,#4]
817BE:  BLXNE           R1
817C0:  LDR             R1, =(off_114D00 - 0x817CA)
817C2:  ADD             R4, SP, #0x138+var_68
817C4:  LDR             R2, =(unk_111394 - 0x817D0)
817C6:  ADD             R1, PC; off_114D00
817C8:  LDR.W           R0, [R8,#0x14]
817CC:  ADD             R2, PC; unk_111394
817CE:  STR             R4, [SP,#0x138+var_58]
817D0:  LDR             R1, [R1]; sub_841B0
817D2:  ADD.W           R5, R2, #8
817D6:  STRD.W          R5, R1, [SP,#0x138+var_68]
817DA:  MOV             R1, R4
817DC:  BL              sub_850DC
817E0:  LDR             R0, [SP,#0x138+var_58]
817E2:  CMP             R4, R0
817E4:  BEQ             loc_817EC
817E6:  CBZ             R0, loc_817F6
817E8:  MOVS            R1, #5
817EA:  B               loc_817EE
817EC:  MOVS            R1, #4
817EE:  LDR             R2, [R0]
817F0:  LDR.W           R1, [R2,R1,LSL#2]
817F4:  BLX             R1
817F6:  LDR             R1, =(off_114D04 - 0x81802)
817F8:  ADD             R4, SP, #0x138+var_80
817FA:  LDR.W           R0, [R8,#0x14]
817FE:  ADD             R1, PC; off_114D04
81800:  STR             R4, [SP,#0x138+var_70]
81802:  LDR             R1, [R1]; sub_8423C
81804:  STRD.W          R5, R1, [SP,#0x138+var_80]
81808:  MOV             R1, R4
8180A:  BL              sub_851AA
8180E:  LDR             R0, [SP,#0x138+var_70]
81810:  CMP             R4, R0
81812:  BEQ             loc_81748
81814:  CBZ             R0, def_80E12; jumptable 00080E12 default case, cases 17,18
81816:  MOVS            R1, #5
81818:  LDR             R2, [R0]
8181A:  LDR.W           R1, [R2,R1,LSL#2]
8181E:  BLX             R1
81820:  LDR             R0, [SP,#0x138+var_1C]; jumptable 00080E12 default case, cases 17,18
81822:  LDR             R1, =(__stack_chk_guard_ptr - 0x81828)
81824:  ADD             R1, PC; __stack_chk_guard_ptr
81826:  LDR             R1, [R1]; __stack_chk_guard
81828:  LDR             R1, [R1]
8182A:  CMP             R1, R0
8182C:  ITTT EQ
8182E:  ADDEQ           SP, SP, #0x120
81830:  POPEQ.W         {R8-R10}
81834:  POPEQ           {R4-R7,PC}
81836:  BLX             __stack_chk_fail
8183A:  MOV             R5, R6
8183C:  LDR.W           R8, [R6]
81840:  CMP.W           R8, #0
81844:  BNE             loc_8188A
81846:  MOVS            R0, #0x18; unsigned int
81848:  BLX             j__Znwj; operator new(uint)
8184C:  MOV             R8, R0
8184E:  MOVS            R0, #0
81850:  STR.W           R0, [R8,#0x14]
81854:  STRD.W          R0, R0, [R8]
81858:  STR.W           R5, [R8,#8]
8185C:  STR.W           R8, [R6]
81860:  LDR.W           R0, [R9]
81864:  LDR             R1, [R4,#4]
81866:  LDR             R0, [R0]
81868:  STR.W           R1, [R8,#0x10]
8186C:  CMP             R0, #0
8186E:  ITTE NE
81870:  STRNE.W         R0, [R9]
81874:  LDRNE           R1, [R6]
81876:  MOVEQ           R1, R8
81878:  LDR.W           R0, [R9,#(dword_1A49DC - 0x1A49D8)]
8187C:  BL              sub_77D8A
81880:  LDR.W           R0, [R9,#(dword_1A49E0 - 0x1A49D8)]
81884:  ADDS            R0, #1
81886:  STR.W           R0, [R9,#(dword_1A49E0 - 0x1A49D8)]
8188A:  LDR.W           R0, [R8,#0x14]
8188E:  MOVS            R4, #0
81890:  LDR             R1, [SP,#0x138+var_114]
81892:  STR.W           R1, [R8,#0x14]
81896:  STR             R4, [SP,#0x138+var_114]
81898:  CBZ             R0, loc_818AE
8189A:  LDR             R1, [R0]
8189C:  LDR             R1, [R1,#4]
8189E:  BLX             R1
818A0:  LDR             R0, [SP,#0x138+var_114]
818A2:  STR             R4, [SP,#0x138+var_114]
818A4:  CMP             R0, #0
818A6:  ITTT NE
818A8:  LDRNE           R1, [R0]
818AA:  LDRNE           R1, [R1,#4]
818AC:  BLXNE           R1
818AE:  LDR             R1, =(off_114D00 - 0x818B8)
818B0:  ADD             R4, SP, #0x138+var_98
818B2:  LDR             R2, =(unk_111394 - 0x818BE)
818B4:  ADD             R1, PC; off_114D00
818B6:  LDR.W           R0, [R8,#0x14]
818BA:  ADD             R2, PC; unk_111394
818BC:  STR             R4, [SP,#0x138+var_88]
818BE:  LDR             R1, [R1]; sub_841B0
818C0:  ADD.W           R5, R2, #8
818C4:  STRD.W          R5, R1, [SP,#0x138+var_98]
818C8:  MOV             R1, R4
818CA:  BL              sub_850DC
818CE:  LDR             R0, [SP,#0x138+var_88]
818D0:  CMP             R4, R0
818D2:  BEQ             loc_818DA
818D4:  CBZ             R0, loc_818E4
818D6:  MOVS            R1, #5
818D8:  B               loc_818DC
818DA:  MOVS            R1, #4
818DC:  LDR             R2, [R0]
818DE:  LDR.W           R1, [R2,R1,LSL#2]
818E2:  BLX             R1
818E4:  LDR             R1, =(off_114D04 - 0x818F0)
818E6:  ADD             R4, SP, #0x138+var_B0
818E8:  LDR.W           R0, [R8,#0x14]
818EC:  ADD             R1, PC; off_114D04
818EE:  STR             R4, [SP,#0x138+var_A0]
818F0:  LDR             R1, [R1]; sub_8423C
818F2:  STRD.W          R5, R1, [SP,#0x138+var_B0]
818F6:  MOV             R1, R4
818F8:  BL              sub_851AA
818FC:  LDR             R0, [SP,#0x138+var_A0]
818FE:  CMP             R4, R0
81900:  BNE.W           loc_81814
81904:  B               loc_81748
81906:  MOV             R5, R6
81908:  LDR.W           R8, [R6]
8190C:  CMP.W           R8, #0
81910:  BNE             loc_81956
81912:  MOVS            R0, #0x18; unsigned int
81914:  BLX             j__Znwj; operator new(uint)
81918:  MOV             R8, R0
8191A:  MOVS            R0, #0
8191C:  STR.W           R0, [R8,#0x14]
81920:  STRD.W          R0, R0, [R8]
81924:  STR.W           R5, [R8,#8]
81928:  STR.W           R8, [R6]
8192C:  LDR.W           R0, [R9]
81930:  LDR             R1, [R4,#4]
81932:  LDR             R0, [R0]
81934:  STR.W           R1, [R8,#0x10]
81938:  CMP             R0, #0
8193A:  ITTE NE
8193C:  STRNE.W         R0, [R9]
81940:  LDRNE           R1, [R6]
81942:  MOVEQ           R1, R8
81944:  LDR.W           R0, [R9,#(dword_1A49DC - 0x1A49D8)]
81948:  BL              sub_77D8A
8194C:  LDR.W           R0, [R9,#(dword_1A49E0 - 0x1A49D8)]
81950:  ADDS            R0, #1
81952:  STR.W           R0, [R9,#(dword_1A49E0 - 0x1A49D8)]
81956:  LDR.W           R0, [R8,#0x14]
8195A:  MOVS            R4, #0
8195C:  LDR             R1, [SP,#0x138+var_114]
8195E:  STR.W           R1, [R8,#0x14]
81962:  STR             R4, [SP,#0x138+var_114]
81964:  CBZ             R0, loc_8197A
81966:  LDR             R1, [R0]
81968:  LDR             R1, [R1,#4]
8196A:  BLX             R1
8196C:  LDR             R0, [SP,#0x138+var_114]
8196E:  STR             R4, [SP,#0x138+var_114]
81970:  CMP             R0, #0
81972:  ITTT NE
81974:  LDRNE           R1, [R0]
81976:  LDRNE           R1, [R1,#4]
81978:  BLXNE           R1
8197A:  LDR             R1, =(off_114D00 - 0x81984)
8197C:  ADD             R4, SP, #0x138+var_C8
8197E:  LDR             R2, =(unk_111394 - 0x8198A)
81980:  ADD             R1, PC; off_114D00
81982:  LDR.W           R0, [R8,#0x14]
81986:  ADD             R2, PC; unk_111394
81988:  STR             R4, [SP,#0x138+var_B8]
8198A:  LDR             R1, [R1]; sub_841B0
8198C:  ADD.W           R5, R2, #8
81990:  STRD.W          R5, R1, [SP,#0x138+var_C8]
81994:  MOV             R1, R4
81996:  BL              sub_850DC
8199A:  LDR             R0, [SP,#0x138+var_B8]
8199C:  CMP             R4, R0
8199E:  BEQ             loc_819A6
819A0:  CBZ             R0, loc_819B0
819A2:  MOVS            R1, #5
819A4:  B               loc_819A8
819A6:  MOVS            R1, #4
819A8:  LDR             R2, [R0]
819AA:  LDR.W           R1, [R2,R1,LSL#2]
819AE:  BLX             R1
819B0:  LDR             R1, =(off_114D04 - 0x819BC)
819B2:  ADD             R4, SP, #0x138+var_E0
819B4:  LDR.W           R0, [R8,#0x14]
819B8:  ADD             R1, PC; off_114D04
819BA:  STR             R4, [SP,#0x138+var_D0]
819BC:  LDR             R1, [R1]; sub_8423C
819BE:  STRD.W          R5, R1, [SP,#0x138+var_E0]
819C2:  MOV             R1, R4
819C4:  BL              sub_851AA
819C8:  LDR             R0, [SP,#0x138+var_D0]
819CA:  CMP             R4, R0
819CC:  BNE.W           loc_81814
819D0:  B               loc_81748
819D2:  MOV             R5, R6
819D4:  LDR.W           R8, [R6]
819D8:  CMP.W           R8, #0
819DC:  BNE             loc_81A22
819DE:  MOVS            R0, #0x18; unsigned int
819E0:  BLX             j__Znwj; operator new(uint)
819E4:  MOV             R8, R0
819E6:  MOVS            R0, #0
819E8:  STR.W           R0, [R8,#0x14]
819EC:  STRD.W          R0, R0, [R8]
819F0:  STR.W           R5, [R8,#8]
819F4:  STR.W           R8, [R6]
819F8:  LDR.W           R0, [R9]
819FC:  LDR             R1, [R4,#4]
819FE:  LDR             R0, [R0]
81A00:  STR.W           R1, [R8,#0x10]
81A04:  CMP             R0, #0
81A06:  ITTE NE
81A08:  STRNE.W         R0, [R9]
81A0C:  LDRNE           R1, [R6]
81A0E:  MOVEQ           R1, R8
81A10:  LDR.W           R0, [R9,#(dword_1A49DC - 0x1A49D8)]
81A14:  BL              sub_77D8A
81A18:  LDR.W           R0, [R9,#(dword_1A49E0 - 0x1A49D8)]
81A1C:  ADDS            R0, #1
81A1E:  STR.W           R0, [R9,#(dword_1A49E0 - 0x1A49D8)]
81A22:  LDR.W           R0, [R8,#0x14]
81A26:  MOVS            R4, #0
81A28:  LDR             R1, [SP,#0x138+var_114]
81A2A:  STR.W           R1, [R8,#0x14]
81A2E:  STR             R4, [SP,#0x138+var_114]
81A30:  CBZ             R0, loc_81A46
81A32:  LDR             R1, [R0]
81A34:  LDR             R1, [R1,#4]
81A36:  BLX             R1
81A38:  LDR             R0, [SP,#0x138+var_114]
81A3A:  STR             R4, [SP,#0x138+var_114]
81A3C:  CMP             R0, #0
81A3E:  ITTT NE
81A40:  LDRNE           R1, [R0]
81A42:  LDRNE           R1, [R1,#4]
81A44:  BLXNE           R1
81A46:  LDR             R1, =(off_114D00 - 0x81A50)
81A48:  ADD             R4, SP, #0x138+var_F8
81A4A:  LDR             R2, =(unk_111394 - 0x81A56)
81A4C:  ADD             R1, PC; off_114D00
81A4E:  LDR.W           R0, [R8,#0x14]
81A52:  ADD             R2, PC; unk_111394
81A54:  STR             R4, [SP,#0x138+var_E8]
81A56:  LDR             R1, [R1]; sub_841B0
81A58:  ADD.W           R5, R2, #8
81A5C:  STRD.W          R5, R1, [SP,#0x138+var_F8]
81A60:  MOV             R1, R4
81A62:  BL              sub_850DC
81A66:  LDR             R0, [SP,#0x138+var_E8]
81A68:  CMP             R4, R0
81A6A:  BEQ             loc_81A80
81A6C:  CBZ             R0, loc_81A8A
81A6E:  MOVS            R1, #5
81A70:  B               loc_81A82
81A72:  ALIGN 4
81A74:  DCD off_114D00 - 0x816FE
81A78:  DCD unk_111394 - 0x81704
81A7C:  DCD off_114D04 - 0x81736
81A80:  MOVS            R1, #4
81A82:  LDR             R2, [R0]
81A84:  LDR.W           R1, [R2,R1,LSL#2]
81A88:  BLX             R1
81A8A:  LDR             R1, =(off_114D04 - 0x81A96)
81A8C:  ADD             R4, SP, #0x138+var_110
81A8E:  LDR.W           R0, [R8,#0x14]
81A92:  ADD             R1, PC; off_114D04
81A94:  STR             R4, [SP,#0x138+var_100]
81A96:  LDR             R1, [R1]; sub_8423C
81A98:  STRD.W          R5, R1, [SP,#0x138+var_110]
81A9C:  MOV             R1, R4
81A9E:  BL              sub_851AA
81AA2:  LDR             R0, [SP,#0x138+var_100]
81AA4:  CMP             R4, R0
81AA6:  BNE.W           loc_81814
81AAA:  B               loc_81748
