; =========================================================
; Game Engine Function: _ZN14CRunningScript23ReadTextLabelFromScriptEPch
; Address            : 0x328F84 - 0x329370
; =========================================================

328F84:  PUSH            {R4-R7,LR}
328F86:  ADD             R7, SP, #0xC
328F88:  PUSH.W          {R8}
328F8C:  LDR             R6, [R0,#0x14]
328F8E:  MOV             R3, R6
328F90:  LDRSB.W         R4, [R3],#1
328F94:  STR             R3, [R0,#0x14]
328F96:  SUB.W           R5, R4, #9; switch 11 cases
328F9A:  CMP             R5, #0xA
328F9C:  BHI.W           def_328FA8; jumptable 00328FA8 default case
328FA0:  UXTB.W          R12, R4
328FA4:  MOV.W           R4, #0xFFFFFFFF
328FA8:  TBB.W           [PC,R5]; switch jump
328FAC:  DCB 0x38; jump table for switch statement
328FAD:  DCB 0x62
328FAE:  DCB 0x73
328FAF:  DCB 6
328FB0:  DCB 0x1F
328FB1:  DCB 0x8D
328FB2:  DCB 0xB8
328FB3:  DCB 0xD7
328FB4:  DCB 0xEB
328FB5:  DCB 6
328FB6:  DCB 0x1F
328FB7:  ALIGN 2
328FB8:  LDRSH.W         R3, [R6,#5]; jumptable 00328FA8 cases 12,18
328FBC:  LDRH.W          R5, [R6,#3]
328FC0:  LDRH.W          LR, [R6,#1]
328FC4:  ADDS            R6, #7
328FC6:  CMP             R3, R4
328FC8:  BLE.W           loc_3291BA
328FCC:  LDR             R3, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x328FD6)
328FCE:  LDRB.W          R8, [R0,#0xFC]
328FD2:  ADD             R3, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
328FD4:  CMP.W           R8, #0
328FD8:  LDR             R3, [R3]; CTheScripts::LocalVariablesForCurrentMission ...
328FDA:  ADD.W           R4, R3, R5,LSL#2
328FDE:  ADD.W           R3, R0, R5,LSL#2
328FE2:  IT EQ
328FE4:  ADDEQ.W         R4, R3, #0x3C ; '<'
328FE8:  B               loc_3291C2
328FEA:  LDRSH.W         R3, [R6,#5]; jumptable 00328FA8 cases 13,19
328FEE:  LDRH.W          R5, [R6,#3]
328FF2:  LDRH.W          LR, [R6,#1]
328FF6:  ADDS            R6, #7
328FF8:  CMP             R3, R4
328FFA:  BLE.W           loc_3291EA
328FFE:  LDR             R3, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329008)
329000:  LDRB.W          R8, [R0,#0xFC]
329004:  ADD             R3, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329006:  CMP.W           R8, #0
32900A:  LDR             R3, [R3]; CTheScripts::LocalVariablesForCurrentMission ...
32900C:  ADD.W           R4, R3, R5,LSL#2
329010:  ADD.W           R3, R0, R5,LSL#2
329014:  IT EQ
329016:  ADDEQ.W         R4, R3, #0x3C ; '<'
32901A:  B               loc_3291F2
32901C:  LDRB            R2, [R6,#1]; jumptable 00328FA8 case 9
32901E:  ADDS            R3, R6, #2
329020:  STR             R3, [R0,#0x14]
329022:  STRB            R2, [R1]
329024:  LDR             R2, [R0,#0x14]
329026:  LDRB.W          R3, [R2],#1
32902A:  STR             R2, [R0,#0x14]
32902C:  STRB            R3, [R1,#1]
32902E:  LDR             R2, [R0,#0x14]
329030:  LDRB.W          R3, [R2],#1
329034:  STR             R2, [R0,#0x14]
329036:  STRB            R3, [R1,#2]
329038:  LDR             R2, [R0,#0x14]
32903A:  LDRB.W          R3, [R2],#1
32903E:  STR             R2, [R0,#0x14]
329040:  STRB            R3, [R1,#3]
329042:  LDR             R2, [R0,#0x14]
329044:  LDRB.W          R3, [R2],#1
329048:  STR             R2, [R0,#0x14]
32904A:  STRB            R3, [R1,#4]
32904C:  LDR             R2, [R0,#0x14]
32904E:  LDRB.W          R3, [R2],#1
329052:  STR             R2, [R0,#0x14]
329054:  STRB            R3, [R1,#5]
329056:  LDR             R2, [R0,#0x14]
329058:  LDRB.W          R3, [R2],#1
32905C:  STR             R2, [R0,#0x14]
32905E:  STRB            R3, [R1,#6]
329060:  LDR             R2, [R0,#0x14]
329062:  LDRB.W          R3, [R2],#1
329066:  STR             R2, [R0,#0x14]
329068:  STRB            R3, [R1,#7]
32906A:  POP.W           {R8}
32906E:  POP             {R4-R7,PC}
329070:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32907C); jumptable 00328FA8 case 10
329072:  LDRH.W          R3, [R6,#1]
329076:  ADDS            R6, #3
329078:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32907A:  STR             R6, [R0,#0x14]
32907C:  MOV             R0, R1; char *
32907E:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
329080:  ADD             R2, R3
329082:  MOV             R1, R2; char *
329084:  MOVS            R2, #8; size_t
329086:  POP.W           {R8}
32908A:  POP.W           {R4-R7,LR}
32908E:  B.W             sub_19F770
329092:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x32909E); jumptable 00328FA8 case 11
329094:  LDRH.W          R3, [R6,#1]
329098:  ADDS            R6, #3
32909A:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
32909C:  LDRB.W          R5, [R0,#0xFC]
3290A0:  STR             R6, [R0,#0x14]
3290A2:  LDR             R2, [R2]; CTheScripts::LocalVariablesForCurrentMission ...
3290A4:  ADD.W           R0, R0, R3,LSL#2
3290A8:  CMP             R5, #0
3290AA:  ADD.W           R2, R2, R3,LSL#2
3290AE:  IT EQ
3290B0:  ADDEQ.W         R2, R0, #0x3C ; '<'
3290B4:  MOV             R0, R1; char *
3290B6:  MOV             R1, R2; char *
3290B8:  MOVS            R2, #8; size_t
3290BA:  POP.W           {R8}
3290BE:  POP.W           {R4-R7,LR}
3290C2:  B.W             sub_19F770
3290C6:  LDRSB.W         LR, [R6,#1]; jumptable 00328FA8 case 14
3290CA:  ADDS            R3, R6, #2
3290CC:  STR             R3, [R0,#0x14]
3290CE:  CMP.W           LR, #1
3290D2:  UXTB.W          R12, LR
3290D6:  BLT             loc_3290FE
3290D8:  CMP.W           R12, #1
3290DC:  LDRB            R3, [R6,#2]
3290DE:  ADD.W           R4, R6, #3
3290E2:  STR             R4, [R0,#0x14]
3290E4:  STRB            R3, [R1]
3290E6:  BEQ             loc_3290FE
3290E8:  MOVS            R3, #1
3290EA:  MOVS            R4, #1
3290EC:  LDR             R5, [R0,#0x14]
3290EE:  ADDS            R4, #1
3290F0:  LDRB.W          R6, [R5],#1
3290F4:  STR             R5, [R0,#0x14]
3290F6:  STRB            R6, [R1,R3]
3290F8:  UXTB            R3, R4
3290FA:  CMP             R3, LR
3290FC:  BLT             loc_3290EC
3290FE:  CMP             R12, R2
329100:  BCS             def_328FA8; jumptable 00328FA8 default case
329102:  ADD.W           R0, R1, R12
329106:  SUBS            R1, R2, #1
329108:  SUB.W           R1, R1, R12
32910C:  MOVS            R2, #1
32910E:  UXTAB.W         R1, R2, R1
329112:  BLX             j___aeabi_memclr8_1
329116:  POP.W           {R8}
32911A:  POP             {R4-R7,PC}
32911C:  CMP             R2, #0x10; jumptable 00328FA8 case 15
32911E:  BCS.W           loc_32927E
329122:  CMP             R2, #0
329124:  BEQ.W           loc_32935A
329128:  LDRB            R3, [R6,#1]
32912A:  ADDS            R6, #2
32912C:  STR             R6, [R0,#0x14]
32912E:  STRB            R3, [R1]
329130:  SUBS            R3, R2, #1
329132:  UXTB            R3, R3
329134:  BEQ             loc_32914A
329136:  ADDS            R1, #1
329138:  SUBS            R2, #1
32913A:  LDR             R6, [R0,#0x14]
32913C:  SUBS            R2, #1
32913E:  LDRB.W          R5, [R6],#1
329142:  STR             R6, [R0,#0x14]
329144:  STRB.W          R5, [R1],#1
329148:  BNE             loc_32913A
32914A:  ADDS            R1, R3, #1
32914C:  UXTB            R2, R1; size_t
32914E:  CMP             R2, #0xF
329150:  BLS.W           loc_32935C
329154:  POP.W           {R8}; jumptable 00328FA8 default case
329158:  POP             {R4-R7,PC}
32915A:  LDR             R3, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32916A); jumptable 00328FA8 case 16
32915C:  CMP             R2, #0xF
32915E:  LDRH.W          R5, [R6,#1]
329162:  ADD.W           R6, R6, #3
329166:  ADD             R3, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329168:  STR             R6, [R0,#0x14]
32916A:  MOV             R0, R1; char *
32916C:  LDR             R3, [R3]; CTheScripts::ScriptSpace ...
32916E:  ADD             R3, R5
329170:  MOV             R1, R3; char *
329172:  BHI.W           loc_329322
329176:  POP.W           {R8}
32917A:  POP.W           {R4-R7,LR}
32917E:  B.W             sub_19F770
329182:  LDR             R3, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x32918E); jumptable 00328FA8 case 17
329184:  LDRH.W          R5, [R6,#1]
329188:  ADDS            R6, #3
32918A:  ADD             R3, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
32918C:  LDRB.W          R4, [R0,#0xFC]
329190:  STR             R6, [R0,#0x14]
329192:  LDR             R3, [R3]; CTheScripts::LocalVariablesForCurrentMission ...
329194:  ADD.W           R0, R0, R5,LSL#2
329198:  CMP             R4, #0
32919A:  ADD.W           R3, R3, R5,LSL#2
32919E:  IT EQ
3291A0:  ADDEQ.W         R3, R0, #0x3C ; '<'
3291A4:  MOV             R0, R1; char *
3291A6:  MOV             R1, R3; char *
3291A8:  CMP             R2, #0xF
3291AA:  BHI.W           loc_329330
3291AE:  POP.W           {R8}
3291B2:  POP.W           {R4-R7,LR}
3291B6:  B.W             sub_19F770
3291BA:  LDR             R3, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x3291C0)
3291BC:  ADD             R3, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
3291BE:  LDR             R3, [R3]; CTheScripts::ScriptSpace ...
3291C0:  ADDS            R4, R3, R5
3291C2:  LDR             R4, [R4]
3291C4:  CMP.W           R12, #0xC
3291C8:  STR             R6, [R0,#0x14]
3291CA:  BNE             loc_32922C
3291CC:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x3291D6)
3291CE:  ADD.W           R2, LR, R4,LSL#3
3291D2:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
3291D4:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
3291D6:  ADD             R2, R0
3291D8:  MOV             R0, R1; char *
3291DA:  MOV             R1, R2; char *
3291DC:  MOVS            R2, #8; size_t
3291DE:  POP.W           {R8}
3291E2:  POP.W           {R4-R7,LR}
3291E6:  B.W             sub_19F770
3291EA:  LDR             R3, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x3291F0)
3291EC:  ADD             R3, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
3291EE:  LDR             R3, [R3]; CTheScripts::ScriptSpace ...
3291F0:  ADDS            R4, R3, R5
3291F2:  LDRH            R4, [R4]
3291F4:  CMP.W           R12, #0xD
3291F8:  STR             R6, [R0,#0x14]
3291FA:  BNE             loc_32924C
3291FC:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x32920A)
3291FE:  ADD.W           R3, LR, R4,LSL#1
329202:  LDRB.W          R6, [R0,#0xFC]
329206:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329208:  ADD.W           R0, R0, R3,LSL#2
32920C:  CMP             R6, #0
32920E:  LDR             R2, [R2]; CTheScripts::LocalVariablesForCurrentMission ...
329210:  ADD.W           R2, R2, R3,LSL#2
329214:  IT EQ
329216:  ADDEQ.W         R2, R0, #0x3C ; '<'
32921A:  MOV             R0, R1; char *
32921C:  MOV             R1, R2; char *
32921E:  MOVS            R2, #8; size_t
329220:  POP.W           {R8}
329224:  POP.W           {R4-R7,LR}
329228:  B.W             sub_19F770
32922C:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329238)
32922E:  ADD.W           R3, LR, R4,LSL#4
329232:  CMP             R2, #0xF
329234:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329236:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
329238:  ADD             R3, R0
32923A:  MOV             R0, R1; char *
32923C:  MOV             R1, R3; char *
32923E:  BHI             loc_32933E
329240:  POP.W           {R8}
329244:  POP.W           {R4-R7,LR}
329248:  B.W             sub_19F770
32924C:  LDR             R3, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x32925A)
32924E:  ADD.W           R6, LR, R4,LSL#2
329252:  LDRB.W          R5, [R0,#0xFC]
329256:  ADD             R3, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329258:  ADD.W           R0, R0, R6,LSL#2
32925C:  CMP             R5, #0
32925E:  LDR             R3, [R3]; CTheScripts::LocalVariablesForCurrentMission ...
329260:  ADD.W           R3, R3, R6,LSL#2
329264:  IT EQ
329266:  ADDEQ.W         R3, R0, #0x3C ; '<'
32926A:  MOV             R0, R1; char *
32926C:  MOV             R1, R3; char *
32926E:  CMP             R2, #0xF
329270:  BHI             loc_32934C
329272:  POP.W           {R8}
329276:  POP.W           {R4-R7,LR}
32927A:  B.W             sub_19F770
32927E:  LDRB            R2, [R6,#1]
329280:  ADDS            R3, R6, #2
329282:  STR             R3, [R0,#0x14]
329284:  STRB            R2, [R1]
329286:  LDR             R2, [R0,#0x14]
329288:  LDRB.W          R3, [R2],#1
32928C:  STR             R2, [R0,#0x14]
32928E:  STRB            R3, [R1,#1]
329290:  LDR             R2, [R0,#0x14]
329292:  LDRB.W          R3, [R2],#1
329296:  STR             R2, [R0,#0x14]
329298:  STRB            R3, [R1,#2]
32929A:  LDR             R2, [R0,#0x14]
32929C:  LDRB.W          R3, [R2],#1
3292A0:  STR             R2, [R0,#0x14]
3292A2:  STRB            R3, [R1,#3]
3292A4:  LDR             R2, [R0,#0x14]
3292A6:  LDRB.W          R3, [R2],#1
3292AA:  STR             R2, [R0,#0x14]
3292AC:  STRB            R3, [R1,#4]
3292AE:  LDR             R2, [R0,#0x14]
3292B0:  LDRB.W          R3, [R2],#1
3292B4:  STR             R2, [R0,#0x14]
3292B6:  STRB            R3, [R1,#5]
3292B8:  LDR             R2, [R0,#0x14]
3292BA:  LDRB.W          R3, [R2],#1
3292BE:  STR             R2, [R0,#0x14]
3292C0:  STRB            R3, [R1,#6]
3292C2:  LDR             R2, [R0,#0x14]
3292C4:  LDRB.W          R3, [R2],#1
3292C8:  STR             R2, [R0,#0x14]
3292CA:  STRB            R3, [R1,#7]
3292CC:  LDR             R2, [R0,#0x14]
3292CE:  LDRB.W          R3, [R2],#1
3292D2:  STR             R2, [R0,#0x14]
3292D4:  STRB            R3, [R1,#8]
3292D6:  LDR             R2, [R0,#0x14]
3292D8:  LDRB.W          R3, [R2],#1
3292DC:  STR             R2, [R0,#0x14]
3292DE:  STRB            R3, [R1,#9]
3292E0:  LDR             R2, [R0,#0x14]
3292E2:  LDRB.W          R3, [R2],#1
3292E6:  STR             R2, [R0,#0x14]
3292E8:  STRB            R3, [R1,#0xA]
3292EA:  LDR             R2, [R0,#0x14]
3292EC:  LDRB.W          R3, [R2],#1
3292F0:  STR             R2, [R0,#0x14]
3292F2:  STRB            R3, [R1,#0xB]
3292F4:  LDR             R2, [R0,#0x14]
3292F6:  LDRB.W          R3, [R2],#1
3292FA:  STR             R2, [R0,#0x14]
3292FC:  STRB            R3, [R1,#0xC]
3292FE:  LDR             R2, [R0,#0x14]
329300:  LDRB.W          R3, [R2],#1
329304:  STR             R2, [R0,#0x14]
329306:  STRB            R3, [R1,#0xD]
329308:  LDR             R2, [R0,#0x14]
32930A:  LDRB.W          R3, [R2],#1
32930E:  STR             R2, [R0,#0x14]
329310:  STRB            R3, [R1,#0xE]
329312:  LDR             R2, [R0,#0x14]
329314:  LDRB.W          R3, [R2],#1
329318:  STR             R2, [R0,#0x14]
32931A:  STRB            R3, [R1,#0xF]
32931C:  POP.W           {R8}
329320:  POP             {R4-R7,PC}
329322:  MOVS            R2, #0x10; size_t
329324:  POP.W           {R8}
329328:  POP.W           {R4-R7,LR}
32932C:  B.W             sub_19F770
329330:  MOVS            R2, #0x10; size_t
329332:  POP.W           {R8}
329336:  POP.W           {R4-R7,LR}
32933A:  B.W             sub_19F770
32933E:  MOVS            R2, #0x10; size_t
329340:  POP.W           {R8}
329344:  POP.W           {R4-R7,LR}
329348:  B.W             sub_19F770
32934C:  MOVS            R2, #0x10; size_t
32934E:  POP.W           {R8}
329352:  POP.W           {R4-R7,LR}
329356:  B.W             sub_19F770
32935A:  MOVS            R1, #0
32935C:  LDR             R2, [R0,#0x14]
32935E:  RSB.W           R1, R1, #0xF
329362:  UXTAB.W         R1, R2, R1
329366:  ADDS            R1, #1
329368:  STR             R1, [R0,#0x14]
32936A:  POP.W           {R8}
32936E:  POP             {R4-R7,PC}
