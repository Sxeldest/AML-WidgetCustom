; =========================================================
; Game Engine Function: sub_6F07A
; Address            : 0x6F07A - 0x6F20E
; =========================================================

6F07A:  PUSH            {R4-R7,LR}
6F07C:  ADD             R7, SP, #0xC
6F07E:  PUSH.W          {R8,R9,R11}
6F082:  MOV             R4, R2
6F084:  MOV             R5, R1
6F086:  LDRD.W          R2, R1, [R1,#0xC]
6F08A:  MOV             R9, R0
6F08C:  CMP             R1, R2
6F08E:  BCS             loc_6F096
6F090:  ADDS            R1, #1
6F092:  STR             R1, [R5,#0x10]
6F094:  B               loc_6F0D8
6F096:  LDRB            R0, [R5,#0x1C]
6F098:  CBNZ            R0, loc_6F0D8
6F09A:  LDRD.W          R1, R6, [R5,#0x14]
6F09E:  MOV.W           R8, #1
6F0A2:  LDRD.W          R3, R0, [R5]; stream
6F0A6:  LDR             R2, [R5,#8]; n
6F0A8:  ADD             R1, R6
6F0AA:  STR             R1, [R5,#0x18]
6F0AC:  MOVS            R1, #1; size
6F0AE:  BLX             fread
6F0B2:  LDRD.W          R1, R6, [R5,#4]
6F0B6:  CMP             R0, R6
6F0B8:  STR             R0, [R5,#0x14]
6F0BA:  ADD.W           R3, R1, R0
6F0BE:  SUB.W           R2, R3, #1
6F0C2:  STRD.W          R2, R1, [R5,#0xC]
6F0C6:  BCS             loc_6F0D8
6F0C8:  MOVS            R0, #0
6F0CA:  STRB            R0, [R3]
6F0CC:  LDRD.W          R0, R1, [R5,#0xC]
6F0D0:  STRB.W          R8, [R5,#0x1C]
6F0D4:  ADDS            R2, R0, #1
6F0D6:  STR             R2, [R5,#0xC]
6F0D8:  LDRB            R0, [R1]
6F0DA:  CMP             R0, #0x75 ; 'u'
6F0DC:  BNE.W           loc_6F1EC
6F0E0:  CMP             R1, R2
6F0E2:  BCS             loc_6F0EA
6F0E4:  ADDS            R1, #1
6F0E6:  STR             R1, [R5,#0x10]
6F0E8:  B               loc_6F12C
6F0EA:  LDRB            R0, [R5,#0x1C]
6F0EC:  CBNZ            R0, loc_6F12C
6F0EE:  LDRD.W          R1, R6, [R5,#0x14]
6F0F2:  MOV.W           R8, #1
6F0F6:  LDRD.W          R3, R0, [R5]; stream
6F0FA:  LDR             R2, [R5,#8]; n
6F0FC:  ADD             R1, R6
6F0FE:  STR             R1, [R5,#0x18]
6F100:  MOVS            R1, #1; size
6F102:  BLX             fread
6F106:  LDRD.W          R1, R6, [R5,#4]
6F10A:  CMP             R0, R6
6F10C:  STR             R0, [R5,#0x14]
6F10E:  ADD.W           R3, R1, R0
6F112:  SUB.W           R2, R3, #1
6F116:  STRD.W          R2, R1, [R5,#0xC]
6F11A:  BCS             loc_6F12C
6F11C:  MOVS            R0, #0
6F11E:  STRB            R0, [R3]
6F120:  LDRD.W          R0, R1, [R5,#0xC]
6F124:  STRB.W          R8, [R5,#0x1C]
6F128:  ADDS            R2, R0, #1
6F12A:  STR             R2, [R5,#0xC]
6F12C:  LDRB            R0, [R1]
6F12E:  CMP             R0, #0x6C ; 'l'
6F130:  BNE             loc_6F1EC
6F132:  CMP             R1, R2
6F134:  BCS             loc_6F13C
6F136:  ADDS            R1, #1
6F138:  STR             R1, [R5,#0x10]
6F13A:  B               loc_6F17E
6F13C:  LDRB            R0, [R5,#0x1C]
6F13E:  CBNZ            R0, loc_6F17E
6F140:  LDRD.W          R1, R6, [R5,#0x14]
6F144:  MOV.W           R8, #1
6F148:  LDRD.W          R3, R0, [R5]; stream
6F14C:  LDR             R2, [R5,#8]; n
6F14E:  ADD             R1, R6
6F150:  STR             R1, [R5,#0x18]
6F152:  MOVS            R1, #1; size
6F154:  BLX             fread
6F158:  LDRD.W          R1, R6, [R5,#4]
6F15C:  CMP             R0, R6
6F15E:  STR             R0, [R5,#0x14]
6F160:  ADD.W           R3, R1, R0
6F164:  SUB.W           R2, R3, #1
6F168:  STRD.W          R2, R1, [R5,#0xC]
6F16C:  BCS             loc_6F17E
6F16E:  MOVS            R0, #0
6F170:  STRB            R0, [R3]
6F172:  LDRD.W          R0, R1, [R5,#0xC]
6F176:  STRB.W          R8, [R5,#0x1C]
6F17A:  ADDS            R2, R0, #1
6F17C:  STR             R2, [R5,#0xC]
6F17E:  LDRB            R0, [R1]
6F180:  CMP             R0, #0x6C ; 'l'
6F182:  BNE             loc_6F1EC
6F184:  CMP             R1, R2
6F186:  BCS             loc_6F18E
6F188:  ADDS            R0, R1, #1
6F18A:  STR             R0, [R5,#0x10]
6F18C:  B               loc_6F1CE
6F18E:  LDRB            R0, [R5,#0x1C]
6F190:  CBNZ            R0, loc_6F1CE
6F192:  LDRD.W          R1, R6, [R5,#0x14]
6F196:  MOV.W           R8, #1
6F19A:  LDRD.W          R3, R0, [R5]; stream
6F19E:  LDR             R2, [R5,#8]; n
6F1A0:  ADD             R1, R6
6F1A2:  STR             R1, [R5,#0x18]
6F1A4:  MOVS            R1, #1; size
6F1A6:  BLX             fread
6F1AA:  LDRD.W          R2, R3, [R5,#4]
6F1AE:  CMP             R0, R3
6F1B0:  STR             R0, [R5,#0x14]
6F1B2:  ADD.W           R1, R2, R0
6F1B6:  SUB.W           R6, R1, #1
6F1BA:  STRD.W          R6, R2, [R5,#0xC]
6F1BE:  BCS             loc_6F1CE
6F1C0:  MOVS            R0, #0
6F1C2:  STRB            R0, [R1]
6F1C4:  LDR             R0, [R5,#0xC]
6F1C6:  STRB.W          R8, [R5,#0x1C]
6F1CA:  ADDS            R0, #1
6F1CC:  STR             R0, [R5,#0xC]
6F1CE:  LDRD.W          R0, R1, [R4,#0x24]
6F1D2:  SUBS            R1, R1, R0
6F1D4:  CMP             R1, #0xF
6F1D6:  BLE             loc_6F200
6F1D8:  VMOV.I32        Q8, #0
6F1DC:  ADD.W           R1, R0, #0x10
6F1E0:  STR             R1, [R4,#0x24]
6F1E2:  VST1.64         {D16-D17}, [R0]
6F1E6:  POP.W           {R8,R9,R11}
6F1EA:  POP             {R4-R7,PC}
6F1EC:  LDR             R3, [R5,#0x18]
6F1EE:  MOVS            R0, #3
6F1F0:  LDR             R2, [R5,#4]
6F1F2:  ADD             R1, R3
6F1F4:  SUBS            R1, R1, R2
6F1F6:  STRD.W          R0, R1, [R9,#0x18]
6F1FA:  POP.W           {R8,R9,R11}
6F1FE:  POP             {R4-R7,PC}
6F200:  ADD.W           R0, R4, #0x18
6F204:  MOVS            R1, #1
6F206:  BL              sub_70EA2
6F20A:  LDR             R0, [R4,#0x24]
6F20C:  B               loc_6F1D8
