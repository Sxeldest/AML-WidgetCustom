; =========================================================
; Game Engine Function: sub_220100
; Address            : 0x220100 - 0x220268
; =========================================================

220100:  PUSH            {R4-R7,LR}
220102:  ADD             R7, SP, #0xC
220104:  PUSH.W          {R8-R10}
220108:  LDR             R4, =(unk_384174 - 0x220110)
22010A:  CMP             R3, #0
22010C:  ADD             R4, PC; unk_384174
22010E:  IT NE
220110:  MOVNE           R4, R3
220112:  LDRB            R3, [R4,#3]
220114:  CBZ             R3, loc_22012E
220116:  BLX             __errno
22011A:  MOVS            R1, #0x16
22011C:  STR             R1, [R0]
22011E:  MOVS            R0, #0
220120:  STR             R0, [R4]
220122:  MOV.W           R9, #0xFFFFFFFF
220126:  MOV             R0, R9
220128:  POP.W           {R8-R10}
22012C:  POP             {R4-R7,PC}
22012E:  MOV             R10, R0
220130:  CMP             R1, #0
220132:  IT EQ
220134:  MOVEQ           R10, R1
220136:  LDR             R0, =(byte_8F794 - 0x22013C)
220138:  ADD             R0, PC; byte_8F794
22013A:  ITE NE
22013C:  MOVNE           R0, R1
22013E:  MOVEQ           R2, #1
220140:  CBZ             R2, loc_220150
220142:  LDR             R1, [R4]
220144:  CBZ             R1, loc_220156
220146:  TST.W           R1, #0xFF0000
22014A:  BEQ             loc_220176
22014C:  MOVS            R1, #3
22014E:  B               loc_220186
220150:  MOV.W           R9, #0
220154:  B               loc_220126
220156:  LDRB.W          R9, [R0]
22015A:  MOVS.W          R1, R9,LSL#24
22015E:  BMI             loc_22018A
220160:  CMP.W           R10, #0
220164:  IT NE
220166:  STRNE.W         R9, [R10]
22016A:  CMP.W           R9, #0
22016E:  IT NE
220170:  MOVNE.W         R9, #1
220174:  B               loc_220126
220176:  TST.W           R1, #0xFF00
22017A:  BEQ             loc_220180
22017C:  MOVS            R1, #2
22017E:  B               loc_220186
220180:  LSLS            R1, R1, #0x18
220182:  BEQ             loc_22018A
220184:  MOVS            R1, #1
220186:  MOV             R5, R4
220188:  B               loc_22018E
22018A:  MOVS            R1, #0
22018C:  MOV             R5, R0
22018E:  LDRB            R5, [R5]
220190:  AND.W           R6, R5, #0xE0
220194:  CMP             R6, #0xC0
220196:  BNE             loc_2201A6
220198:  MOV.W           R12, #0x80
22019C:  MOV.W           LR, #0x1F
2201A0:  MOV.W           R8, #2
2201A4:  B               loc_2201D0
2201A6:  AND.W           R6, R5, #0xF0
2201AA:  CMP             R6, #0xE0
2201AC:  BNE             loc_2201BC
2201AE:  MOV.W           R12, #0x800
2201B2:  MOV.W           LR, #0xF
2201B6:  MOV.W           R8, #3
2201BA:  B               loc_2201D0
2201BC:  AND.W           R5, R5, #0xF8
2201C0:  CMP             R5, #0xF0
2201C2:  BNE             loc_220250
2201C4:  MOV.W           R12, #0x10000
2201C8:  MOV.W           LR, #7
2201CC:  MOV.W           R8, #4
2201D0:  ADDS            R3, R4, R1
2201D2:  SUB.W           R9, R8, R1
2201D6:  MOV             R5, R2
2201D8:  CMP             R9, R2
2201DA:  IT CC
2201DC:  MOVCC           R5, R9
2201DE:  CBZ             R5, loc_2201FC
2201E0:  MOV             R6, R4
2201E2:  LDR             R4, [R4]
2201E4:  LDRB            R1, [R0]
2201E6:  CBZ             R4, loc_2201F0
2201E8:  AND.W           R4, R1, #0xC0
2201EC:  CMP             R4, #0x80
2201EE:  BNE             loc_220206
2201F0:  STRB.W          R1, [R3],#1
2201F4:  SUBS            R5, #1
2201F6:  ADDS            R0, #1
2201F8:  MOV             R4, R6
2201FA:  B               loc_2201DE
2201FC:  CMP             R9, R2
2201FE:  BLS             loc_220218
220200:  MOV             R9, #0xFFFFFFFE
220204:  B               loc_220126
220206:  BLX             __errno
22020A:  MOVS            R1, #0x54 ; 'T'
22020C:  MOV.W           R9, #0xFFFFFFFF
220210:  STR             R1, [R0]
220212:  MOVS            R0, #0
220214:  STR             R0, [R6]
220216:  B               loc_220126
220218:  MOV             R3, R4
22021A:  SUB.W           R5, R8, #1
22021E:  LDRB.W          R1, [R3],#1
220222:  AND.W           R2, LR, R1
220226:  CBZ             R5, loc_220238
220228:  LDRB.W          R1, [R3],#1
22022C:  SUBS            R5, #1
22022E:  AND.W           R1, R1, #0x3F ; '?'
220232:  ORR.W           R2, R1, R2,LSL#6
220236:  B               loc_220226
220238:  CMP             R2, R12
22023A:  BCC             loc_220250
22023C:  MOVW            R1, #0x7FF
220240:  BIC.W           R1, R2, R1
220244:  CMP.W           R1, #0xD800
220248:  BEQ             loc_220250
22024A:  CMP.W           R2, #0x110000
22024E:  BCC             loc_220258
220250:  BLX             __errno
220254:  MOVS            R1, #0x54 ; 'T'
220256:  B               loc_22011C
220258:  CMP.W           R10, #0
22025C:  IT NE
22025E:  STRNE.W         R2, [R10]
220262:  MOVS            R0, #0
220264:  STR             R0, [R4]
220266:  B               loc_220126
