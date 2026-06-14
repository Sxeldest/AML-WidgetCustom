; =========================================================
; Game Engine Function: sub_7F0CC
; Address            : 0x7F0CC - 0x7F312
; =========================================================

7F0CC:  PUSH            {R4-R7,LR}
7F0CE:  ADD             R7, SP, #0xC
7F0D0:  PUSH.W          {R8,R9,R11}
7F0D4:  SUB             SP, SP, #0x18
7F0D6:  LDR             R5, =(byte_1A49B2 - 0x7F0DE)
7F0D8:  MOV             R4, R0
7F0DA:  ADD             R5, PC; byte_1A49B2
7F0DC:  LDRB            R0, [R5]
7F0DE:  LDR             R1, =(__stack_chk_guard_ptr - 0x7F0E4)
7F0E0:  ADD             R1, PC; __stack_chk_guard_ptr
7F0E2:  LDR             R1, [R1]; __stack_chk_guard
7F0E4:  LDR             R1, [R1]
7F0E6:  STR             R1, [SP,#0x30+var_1C]
7F0E8:  CBNZ            R0, loc_7F0F6
7F0EA:  LDR             R0, =(aSvDbgNetworkRe - 0x7F0F0); "[sv:dbg:network:receive] : packet recei"... ...
7F0EC:  ADD             R0, PC; "[sv:dbg:network:receive] : packet recei"...
7F0EE:  BL              sub_80664
7F0F2:  MOVS            R0, #1
7F0F4:  STRB            R0, [R5]
7F0F6:  LDR             R0, =(byte_1A45F3 - 0x7F0FC)
7F0F8:  ADD             R0, PC; byte_1A45F3
7F0FA:  LDRB            R0, [R0]
7F0FC:  CBZ             R0, loc_7F110
7F0FE:  LDR             R6, [R4,#0xC]
7F100:  CMP             R6, #4
7F102:  BHI             loc_7F11A
7F104:  LDR             R0, =(aSvErrNetworkRe - 0x7F10A); "[sv:err:network:receive] : invalid pack"... ...
7F106:  ADD             R0, PC; "[sv:err:network:receive] : invalid pack"...
7F108:  MOV             R1, R6
7F10A:  BL              sub_80664
7F10E:  B               loc_7F204
7F110:  LDR             R0, =(aSvErrNetworkRe_0 - 0x7F116); "[sv:err:network:receive] : network not "... ...
7F112:  ADD             R0, PC; "[sv:err:network:receive] : network not "...
7F114:  BL              sub_80664
7F118:  B               loc_7F204
7F11A:  LDR             R4, [R4,#0x14]
7F11C:  LDRB            R1, [R4]
7F11E:  CMP             R1, #0xDE
7F120:  BNE             loc_7F1FC
7F122:  ADDS            R5, R4, #1
7F124:  MOV             R0, R5
7F126:  BL              sub_7DD90
7F12A:  SUBS            R6, #1
7F12C:  CMP             R6, R0
7F12E:  BNE             loc_7F220
7F130:  LDRH            R0, [R5]
7F132:  CMP             R0, #1
7F134:  BEQ             loc_7F22E
7F136:  CMP             R0, #0
7F138:  BNE.W           loc_7F26A
7F13C:  LDRH.W          R0, [R4,#3]
7F140:  CMP             R0, #6
7F142:  BNE             loc_7F22A
7F144:  LDR             R6, =(dword_1A4600 - 0x7F14A)
7F146:  ADD             R6, PC; dword_1A4600
7F148:  ADDS            R5, R6, #1
7F14A:  LDRB            R3, [R6]
7F14C:  LDR             R1, [R6,#(dword_1A4608 - 0x1A4600)]
7F14E:  LDR             R0, =(aSvDbgNetworkSe - 0x7F15A); "[sv:dbg:network:serverInfo] : connectin"... ...
7F150:  LDRH.W          R2, [R4,#9]
7F154:  LSLS            R3, R3, #0x1F
7F156:  ADD             R0, PC; "[sv:dbg:network:serverInfo] : connectin"...
7F158:  IT EQ
7F15A:  MOVEQ           R1, R5
7F15C:  BL              sub_80664
7F160:  LDR             R0, =(byte_1A49B0 - 0x7F168)
7F162:  MOVS            R1, #1
7F164:  ADD             R0, PC; byte_1A49B0
7F166:  STRB            R1, [R0]
7F168:  BL              sub_7E42C
7F16C:  BL              sub_83B30
7F170:  LDRB            R1, [R6]
7F172:  MOVS            R2, #0
7F174:  STRD.W          R2, R2, [SP,#0x30+addr.sa_data+6]
7F178:  MOVS            R2, #2
7F17A:  LDR             R0, [R6,#(dword_1A4608 - 0x1A4600)]
7F17C:  LSLS            R1, R1, #0x1F
7F17E:  STRH.W          R2, [SP,#0x30+addr]
7F182:  IT EQ
7F184:  MOVEQ           R0, R5; cp
7F186:  BLX             inet_addr
7F18A:  LDR             R1, =(dword_116E00 - 0x7F194)
7F18C:  LDRH.W          R2, [R4,#9]
7F190:  ADD             R1, PC; dword_116E00
7F192:  STR             R0, [SP,#0x30+addr.sa_data+2]
7F194:  REV             R2, R2
7F196:  LDR             R0, [R1]; fd
7F198:  LSRS            R1, R2, #0x10
7F19A:  STRH.W          R1, [SP,#0x30+addr.sa_data]
7F19E:  ADD             R1, SP, #0x30+addr; addr
7F1A0:  MOVS            R2, #0x10; len
7F1A2:  BLX             connect
7F1A6:  ADDS            R0, #1
7F1A8:  BEQ.W           loc_7F2FE
7F1AC:  LDR             R0, =(dword_1A461C - 0x7F1B6)
7F1AE:  MOVS            R3, #1
7F1B0:  LDR             R1, =(dword_1A460C - 0x7F1BC)
7F1B2:  ADD             R0, PC; dword_1A461C
7F1B4:  LDR.W           R2, [R4,#5]
7F1B8:  ADD             R1, PC; dword_1A460C
7F1BA:  LDR             R0, [R0]
7F1BC:  STR             R2, [R1]
7F1BE:  MOVS            R1, #0
7F1C0:  STR             R1, [R0,#0x10]
7F1C2:  STR             R1, [R0,#0xC]
7F1C4:  STR             R3, [R0,#8]
7F1C6:  STR             R2, [R0,#4]
7F1C8:  STR             R1, [R0,#0x14]
7F1CA:  BL              sub_8613E
7F1CE:  LDR             R0, =(dword_1A45F4 - 0x7F1D8)
7F1D0:  MOVS            R2, #2
7F1D2:  LDR             R1, =(sub_7ED6C+1 - 0x7F1DA)
7F1D4:  ADD             R0, PC; dword_1A45F4
7F1D6:  ADD             R1, PC; sub_7ED6C
7F1D8:  STR             R2, [R0]
7F1DA:  MOV             R0, SP
7F1DC:  BL              sub_7F3A4
7F1E0:  LDR             R0, =(dword_1A45F8 - 0x7F1E6)
7F1E2:  ADD             R0, PC; dword_1A45F8
7F1E4:  LDR             R1, [R0]
7F1E6:  CMP             R1, #0
7F1E8:  BNE.W           loc_7F30E
7F1EC:  LDR             R1, [SP,#0x30+var_30]
7F1EE:  STR             R1, [R0]
7F1F0:  MOVS            R0, #0
7F1F2:  STR             R0, [SP,#0x30+var_30]
7F1F4:  MOV             R0, SP; this
7F1F6:  BLX             j__ZNSt6__ndk16threadD2Ev; std::thread::~thread()
7F1FA:  B               loc_7F22A
7F1FC:  LDR             R0, =(aSvErrNetworkRe_1 - 0x7F202); "[sv:err:network:receive] : invalid pack"... ...
7F1FE:  ADD             R0, PC; "[sv:err:network:receive] : invalid pack"...
7F200:  BL              sub_80664
7F204:  MOVS            R0, #1
7F206:  LDR             R1, [SP,#0x30+var_1C]
7F208:  LDR             R2, =(__stack_chk_guard_ptr - 0x7F20E)
7F20A:  ADD             R2, PC; __stack_chk_guard_ptr
7F20C:  LDR             R2, [R2]; __stack_chk_guard
7F20E:  LDR             R2, [R2]
7F210:  CMP             R2, R1
7F212:  ITTT EQ
7F214:  ADDEQ           SP, SP, #0x18
7F216:  POPEQ.W         {R8,R9,R11}
7F21A:  POPEQ           {R4-R7,PC}
7F21C:  BLX             __stack_chk_fail
7F220:  LDR             R0, =(aSvErrNetworkRe_2 - 0x7F226); "[sv:err:network:receive] : invalid pack"... ...
7F222:  ADD             R0, PC; "[sv:err:network:receive] : invalid pack"...
7F224:  MOV             R1, R6
7F226:  BL              sub_80664
7F22A:  MOVS            R0, #0
7F22C:  B               loc_7F206
7F22E:  LDRH.W          R0, [R4,#3]
7F232:  CMP             R0, #5
7F234:  BNE             loc_7F22A
7F236:  LDRB            R2, [R4,#9]
7F238:  LDR.W           R1, [R4,#5]
7F23C:  LDR             R0, =(aSvDbgNetworkPl - 0x7F242); "[sv:dbg:network:pluginInit] : plugin in"... ...
7F23E:  ADD             R0, PC; "[sv:dbg:network:pluginInit] : plugin in"...
7F240:  BL              sub_80664
7F244:  LDR             R0, =(dword_1A4998 - 0x7F24A)
7F246:  ADD             R0, PC; dword_1A4998
7F248:  LDRD.W          R5, R6, [R0]
7F24C:  CMP             R5, R6
7F24E:  BEQ             loc_7F2F4
7F250:  ADDS            R4, #5
7F252:  B               loc_7F25A
7F254:  ADDS            R5, #0x18
7F256:  CMP             R5, R6
7F258:  BEQ             loc_7F2F4
7F25A:  LDR             R0, [R5,#0x10]
7F25C:  CMP             R0, #0
7F25E:  BEQ             loc_7F254
7F260:  LDR             R1, [R0]
7F262:  LDR             R2, [R1,#0x18]
7F264:  MOV             R1, R4
7F266:  BLX             R2
7F268:  B               loc_7F254
7F26A:  MOVS            R0, #0xC; unsigned int
7F26C:  BLX             j__Znwj; operator new(uint)
7F270:  MOV             R8, R0
7F272:  MOVS            R0, #0
7F274:  CMP.W           R6, #0xFFFFFFFF
7F278:  STRD.W          R0, R0, [R8]
7F27C:  STR.W           R0, [R8,#8]
7F280:  BLE             loc_7F308
7F282:  MOV             R0, R6; unsigned int
7F284:  BLX             j__Znwj; operator new(uint)
7F288:  MOV             R1, R6; n
7F28A:  ADD.W           R9, R0, R6
7F28E:  MOV             R4, R0
7F290:  STR.W           R9, [R8,#8]
7F294:  STR.W           R0, [R8]
7F298:  BLX             sub_10967C
7F29C:  MOV             R0, R4; dest
7F29E:  MOV             R1, R5; src
7F2A0:  MOV             R2, R6; n
7F2A2:  STR.W           R9, [R8,#4]
7F2A6:  BLX             j_memcpy
7F2AA:  LDR             R0, =(dword_1A4680 - 0x7F2B0)
7F2AC:  ADD             R0, PC; dword_1A4680
7F2AE:  LDR.W           R1, [R0,#(dword_1A4700 - 0x1A4680)]
7F2B2:  LDR             R2, [R0]
7F2B4:  ADDS            R6, R1, #1
7F2B6:  LDR.W           R3, [R0,#(dword_1A4780 - 0x1A4680)]
7F2BA:  SUBS            R2, R6, R2
7F2BC:  IT NE
7F2BE:  MOVNE           R2, R6
7F2C0:  CMP             R2, R3
7F2C2:  DMB.W           ISH
7F2C6:  BNE             loc_7F2E0
7F2C8:  LDR.W           R0, [R8]; void *
7F2CC:  CMP             R0, #0
7F2CE:  ITT NE
7F2D0:  STRNE.W         R0, [R8,#4]
7F2D4:  BLXNE           j__ZdlPv; operator delete(void *)
7F2D8:  MOV             R0, R8; void *
7F2DA:  BLX             j__ZdlPv; operator delete(void *)
7F2DE:  B               loc_7F22A
7F2E0:  LDR             R3, [R0,#(dword_1A4684 - 0x1A4680)]
7F2E2:  ADD.W           R1, R3, R1,LSL#2
7F2E6:  STR.W           R8, [R1,#0x80]
7F2EA:  DMB.W           ISH
7F2EE:  STR.W           R2, [R0,#(dword_1A4700 - 0x1A4680)]
7F2F2:  B               loc_7F22A
7F2F4:  LDR             R0, =(dword_1A45F4 - 0x7F2FC)
7F2F6:  MOVS            R1, #3
7F2F8:  ADD             R0, PC; dword_1A45F4
7F2FA:  STR             R1, [R0]
7F2FC:  B               loc_7F22A
7F2FE:  LDR             R0, =(aSvErrNetworkSe - 0x7F304); "[sv:err:network:serverInfo] : connect e"... ...
7F300:  ADD             R0, PC; "[sv:err:network:serverInfo] : connect e"...
7F302:  BL              sub_80664
7F306:  B               loc_7F22A
7F308:  MOV             R0, R8
7F30A:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
7F30E:  BLX             j__ZSt9terminatev; std::terminate(void)
