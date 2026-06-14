; =========================================================
; Game Engine Function: sub_21C010
; Address            : 0x21C010 - 0x21C238
; =========================================================

21C010:  PUSH            {R4-R7,LR}
21C012:  ADD             R7, SP, #0xC
21C014:  PUSH.W          {R8-R11}
21C018:  SUB             SP, SP, #0x24
21C01A:  MOV             R5, R0
21C01C:  LDR             R0, =(RwEngineInstance_ptr - 0x21C026)
21C01E:  STR             R3, [SP,#0x40+var_28]
21C020:  MOV             R8, R1
21C022:  ADD             R0, PC; RwEngineInstance_ptr
21C024:  STR             R2, [SP,#0x40+var_20]
21C026:  LDR             R0, [R0]; RwEngineInstance
21C028:  LDR             R0, [R0]
21C02A:  LDR.W           R1, [R0,#0x12C]
21C02E:  LSLS            R0, R5, #2
21C030:  BLX             R1
21C032:  MOV             R10, R0
21C034:  MOVS            R0, #0x24 ; '$'; int
21C036:  MOV             R1, R5; int
21C038:  MOVS            R2, #4; int
21C03A:  BLX             j__Z16RwFreeListCreateiii; RwFreeListCreate(int,int,int)
21C03E:  STR.W           R0, [R8]
21C042:  MOVS            R0, #1
21C044:  ADD.W           R1, R0, R5,LSR#1; int
21C048:  MOVS            R0, #0x10; int
21C04A:  MOVS            R2, #4; int
21C04C:  BLX             j__Z16RwFreeListCreateiii; RwFreeListCreate(int,int,int)
21C050:  CMP             R5, #0
21C052:  STR.W           R0, [R8,#4]
21C056:  STR             R5, [SP,#0x40+var_2C]
21C058:  BEQ.W           loc_21C22E
21C05C:  LDR             R0, =(RwEngineInstance_ptr - 0x21C06A)
21C05E:  MOV.W           R11, #0
21C062:  STR.W           R8, [SP,#0x40+var_30]
21C066:  ADD             R0, PC; RwEngineInstance_ptr
21C068:  LDR             R0, [R0]; RwEngineInstance
21C06A:  STR             R0, [SP,#0x40+var_34]
21C06C:  LDR             R0, =(RwEngineInstance_ptr - 0x21C072)
21C06E:  ADD             R0, PC; RwEngineInstance_ptr
21C070:  LDR             R0, [R0]; RwEngineInstance
21C072:  STR             R0, [SP,#0x40+var_38]
21C074:  LDR             R0, =(RwEngineInstance_ptr - 0x21C07A)
21C076:  ADD             R0, PC; RwEngineInstance_ptr
21C078:  LDR             R0, [R0]; RwEngineInstance
21C07A:  STR             R0, [SP,#0x40+var_3C]
21C07C:  LDR             R0, =(RwEngineInstance_ptr - 0x21C082)
21C07E:  ADD             R0, PC; RwEngineInstance_ptr
21C080:  LDR             R0, [R0]; RwEngineInstance
21C082:  STR             R0, [SP,#0x40+var_40]
21C084:  LDR             R0, [SP,#0x40+var_34]
21C086:  LDR             R1, [R0]
21C088:  LDR.W           R0, [R8]
21C08C:  LDR.W           R1, [R1,#0x13C]
21C090:  BLX             R1
21C092:  MOVS            R1, #0
21C094:  STR.W           R0, [R10,R11,LSL#2]
21C098:  STRB.W          R1, [R0,#0x20]
21C09C:  LDR.W           R0, [R10,R11,LSL#2]
21C0A0:  STR.W           R11, [R0]
21C0A4:  LDR.W           R0, [R10,R11,LSL#2]
21C0A8:  STR             R1, [R0,#0x14]
21C0AA:  LDR.W           R0, [R10,R11,LSL#2]
21C0AE:  STR             R1, [R0,#0x10]
21C0B0:  LDR.W           R0, [R10,R11,LSL#2]
21C0B4:  STR             R1, [R0,#0x18]
21C0B6:  ADD.W           R0, R11, R11,LSL#1
21C0BA:  LDR             R1, [SP,#0x40+var_28]
21C0BC:  ADD.W           R9, R1, R0,LSL#2
21C0C0:  LDRH.W          R6, [R1,R0,LSL#2]
21C0C4:  MOV             R1, R8
21C0C6:  LDR             R0, [SP,#0x40+var_20]
21C0C8:  MOV             R8, R9
21C0CA:  LDR             R1, [R1,#4]
21C0CC:  LDRH.W          R5, [R8,#2]!
21C0D0:  LDR             R0, [R0]
21C0D2:  CBNZ            R0, loc_21C0DA
21C0D4:  B               loc_21C110
21C0D6:  LDR             R0, [R0,#0xC]
21C0D8:  CBZ             R0, loc_21C110
21C0DA:  LDRH            R2, [R0,#2]
21C0DC:  CMP             R2, R6
21C0DE:  BNE             loc_21C0D6
21C0E0:  LDRH            R2, [R0]
21C0E2:  CMP             R2, R5
21C0E4:  ITT EQ
21C0E6:  LDREQ           R2, [R0,#8]
21C0E8:  CMPEQ           R2, #0
21C0EA:  BNE             loc_21C0D6
21C0EC:  LDR             R1, [R0,#4]
21C0EE:  LDRB.W          R2, [R1,#0x20]
21C0F2:  ADDS            R2, #1
21C0F4:  STRB.W          R2, [R1,#0x20]
21C0F8:  LDR.W           R1, [R10,R11,LSL#2]
21C0FC:  LDRB.W          R2, [R1,#0x20]
21C100:  ADDS            R2, #1
21C102:  STRB.W          R2, [R1,#0x20]
21C106:  LDR.W           R1, [R10,R11,LSL#2]
21C10A:  STR             R1, [R0,#8]
21C10C:  LDR             R2, [SP,#0x40+var_20]
21C10E:  B               loc_21C132
21C110:  LDR             R0, [SP,#0x40+var_38]
21C112:  LDR             R0, [R0]
21C114:  LDR.W           R2, [R0,#0x13C]
21C118:  MOV             R0, R1
21C11A:  BLX             R2
21C11C:  STRH            R6, [R0]
21C11E:  MOVS            R2, #0
21C120:  STRH            R5, [R0,#2]
21C122:  LDR.W           R1, [R10,R11,LSL#2]
21C126:  STRD.W          R1, R2, [R0,#4]
21C12A:  LDR             R2, [SP,#0x40+var_20]
21C12C:  LDR             R1, [R2]
21C12E:  STR             R1, [R0,#0xC]
21C130:  STR             R0, [R2]
21C132:  LDR.W           R1, [R10,R11,LSL#2]
21C136:  MOV             R4, R2
21C138:  STR             R0, [R1,#4]
21C13A:  STR.W           R9, [SP,#0x40+var_24]
21C13E:  LDRH.W          R5, [R8]
21C142:  LDR.W           R8, [SP,#0x40+var_30]
21C146:  LDR             R0, [R2]
21C148:  LDRH.W          R6, [R9,#4]!
21C14C:  LDR.W           R1, [R8,#4]
21C150:  CBZ             R0, loc_21C16A
21C152:  LDRH            R2, [R0,#2]
21C154:  CMP             R2, R5
21C156:  BNE             loc_21C164
21C158:  LDRH            R2, [R0]
21C15A:  CMP             R2, R6
21C15C:  ITT EQ
21C15E:  LDREQ           R2, [R0,#8]
21C160:  CMPEQ           R2, #0
21C162:  BEQ             loc_21C18C
21C164:  LDR             R0, [R0,#0xC]
21C166:  CMP             R0, #0
21C168:  BNE             loc_21C152
21C16A:  LDR             R0, [SP,#0x40+var_3C]
21C16C:  LDR             R0, [R0]
21C16E:  LDR.W           R2, [R0,#0x13C]
21C172:  MOV             R0, R1
21C174:  BLX             R2
21C176:  STRH            R5, [R0]
21C178:  MOVS            R2, #0
21C17A:  STRH            R6, [R0,#2]
21C17C:  LDR.W           R1, [R10,R11,LSL#2]
21C180:  STRD.W          R1, R2, [R0,#4]
21C184:  LDR             R1, [R4]
21C186:  STR             R1, [R0,#0xC]
21C188:  STR             R0, [R4]
21C18A:  B               loc_21C1AC
21C18C:  LDR             R1, [R0,#4]
21C18E:  LDRB.W          R2, [R1,#0x20]
21C192:  ADDS            R2, #1
21C194:  STRB.W          R2, [R1,#0x20]
21C198:  LDR.W           R1, [R10,R11,LSL#2]
21C19C:  LDRB.W          R2, [R1,#0x20]
21C1A0:  ADDS            R2, #1
21C1A2:  STRB.W          R2, [R1,#0x20]
21C1A6:  LDR.W           R1, [R10,R11,LSL#2]
21C1AA:  STR             R1, [R0,#8]
21C1AC:  LDR.W           R1, [R10,R11,LSL#2]
21C1B0:  STR             R0, [R1,#8]
21C1B2:  LDR             R1, [SP,#0x40+var_24]
21C1B4:  LDR             R0, [R4]
21C1B6:  LDRH.W          R5, [R9]
21C1BA:  LDRH            R6, [R1]
21C1BC:  LDR.W           R1, [R8,#4]
21C1C0:  CBNZ            R0, loc_21C1C8
21C1C2:  B               loc_21C1FC
21C1C4:  LDR             R0, [R0,#0xC]
21C1C6:  CBZ             R0, loc_21C1FC
21C1C8:  LDRH            R2, [R0,#2]
21C1CA:  CMP             R2, R5
21C1CC:  BNE             loc_21C1C4
21C1CE:  LDRH            R2, [R0]
21C1D0:  CMP             R2, R6
21C1D2:  ITT EQ
21C1D4:  LDREQ           R2, [R0,#8]
21C1D6:  CMPEQ           R2, #0
21C1D8:  BNE             loc_21C1C4
21C1DA:  LDR             R1, [R0,#4]
21C1DC:  LDRB.W          R2, [R1,#0x20]
21C1E0:  ADDS            R2, #1
21C1E2:  STRB.W          R2, [R1,#0x20]
21C1E6:  LDR.W           R1, [R10,R11,LSL#2]
21C1EA:  LDRB.W          R2, [R1,#0x20]
21C1EE:  ADDS            R2, #1
21C1F0:  STRB.W          R2, [R1,#0x20]
21C1F4:  LDR.W           R1, [R10,R11,LSL#2]
21C1F8:  STR             R1, [R0,#8]
21C1FA:  B               loc_21C21C
21C1FC:  LDR             R0, [SP,#0x40+var_40]
21C1FE:  LDR             R0, [R0]
21C200:  LDR.W           R2, [R0,#0x13C]
21C204:  MOV             R0, R1
21C206:  BLX             R2
21C208:  STRH            R5, [R0]
21C20A:  MOVS            R2, #0
21C20C:  STRH            R6, [R0,#2]
21C20E:  LDR.W           R1, [R10,R11,LSL#2]
21C212:  STRD.W          R1, R2, [R0,#4]
21C216:  LDR             R1, [R4]
21C218:  STR             R1, [R0,#0xC]
21C21A:  STR             R0, [R4]
21C21C:  LDR.W           R1, [R10,R11,LSL#2]
21C220:  ADD.W           R11, R11, #1
21C224:  STR             R0, [R1,#0xC]
21C226:  LDR             R0, [SP,#0x40+var_2C]
21C228:  CMP             R11, R0
21C22A:  BNE.W           loc_21C084
21C22E:  MOV             R0, R10
21C230:  ADD             SP, SP, #0x24 ; '$'
21C232:  POP.W           {R8-R11}
21C236:  POP             {R4-R7,PC}
