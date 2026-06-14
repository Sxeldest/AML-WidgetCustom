; =========================================================
; Game Engine Function: sub_DCFF4
; Address            : 0xDCFF4 - 0xDD0C4
; =========================================================

DCFF4:  PUSH            {R4-R7,LR}
DCFF6:  ADD             R7, SP, #0xC
DCFF8:  PUSH.W          {R8-R10}
DCFFC:  SUB             SP, SP, #0x20
DCFFE:  ADDS.W          R2, R2, R3,ASR#31
DD002:  ADC.W           R6, R3, R3,ASR#31
DD006:  EOR.W           R9, R2, R3,ASR#31
DD00A:  MOV             R4, R0
DD00C:  ORR.W           R2, R9, #1
DD010:  LDR             R0, =(unk_91C38 - 0xDD032)
DD012:  CLZ.W           R2, R2
DD016:  LDR             R1, =(unk_91BF8 - 0xDD02C)
DD018:  EOR.W           R10, R6, R3,ASR#31
DD01C:  ADDS            R2, #0x20 ; ' '
DD01E:  CMP.W           R10, #0
DD022:  IT NE
DD024:  CLZNE.W         R2, R10
DD028:  ADD             R1, PC; unk_91BF8
DD02A:  EOR.W           R2, R2, #0x3F ; '?'
DD02E:  ADD             R0, PC; unk_91C38
DD030:  LDRB            R5, [R1,R2]
DD032:  LDR.W           R1, [R0,R5,LSL#3]
DD036:  ADD.W           R0, R0, R5,LSL#3
DD03A:  LDR             R0, [R0,#4]
DD03C:  SUBS.W          R1, R9, R1
DD040:  SBCS.W          R0, R10, R0
DD044:  IT CC
DD046:  SUBCC           R5, #1
DD048:  LDRD.W          R1, R2, [R4,#8]
DD04C:  ADD.W           R0, R1, R3,LSR#31
DD050:  ADD             R0, R5
DD052:  CMP             R2, R0
DD054:  BCS             loc_DD05A
DD056:  MOV             R0, R1
DD058:  B               loc_DD07C
DD05A:  LDR             R6, [R4,#4]
DD05C:  STR             R0, [R4,#8]
DD05E:  CBZ             R6, loc_DD07C
DD060:  ADD             R1, R6
DD062:  CMP.W           R3, #0xFFFFFFFF
DD066:  ITT LE
DD068:  MOVLE           R0, #0x2D ; '-'
DD06A:  STRBLE.W        R0, [R1],#1
DD06E:  MOV             R2, R9
DD070:  ADD             R0, SP, #0x38+var_2C
DD072:  MOV             R3, R10
DD074:  STR             R5, [SP,#0x38+var_38]
DD076:  BL              sub_DD0CC
DD07A:  B               loc_DD0BA
DD07C:  CMP.W           R3, #0xFFFFFFFF
DD080:  BGT             loc_DD09C
DD082:  ADDS            R1, R0, #1
DD084:  CMP             R2, R1
DD086:  BCS             loc_DD094
DD088:  LDR             R0, [R4]
DD08A:  LDR             R2, [R0]
DD08C:  MOV             R0, R4
DD08E:  BLX             R2
DD090:  LDR             R0, [R4,#8]
DD092:  ADDS            R1, R0, #1
DD094:  LDR             R2, [R4,#4]
DD096:  STR             R1, [R4,#8]
DD098:  MOVS            R1, #0x2D ; '-'
DD09A:  STRB            R1, [R2,R0]
DD09C:  ADD.W           R8, SP, #0x38+var_2C
DD0A0:  ADD             R0, SP, #0x38+var_34
DD0A2:  MOV             R2, R9
DD0A4:  MOV             R3, R10
DD0A6:  MOV             R1, R8
DD0A8:  STR             R5, [SP,#0x38+var_38]
DD0AA:  BL              sub_DD0CC
DD0AE:  LDR             R1, [SP,#0x38+var_30]
DD0B0:  MOV             R0, R8
DD0B2:  MOV             R2, R4
DD0B4:  BL              sub_DCF1C
DD0B8:  MOV             R4, R0
DD0BA:  MOV             R0, R4
DD0BC:  ADD             SP, SP, #0x20 ; ' '
DD0BE:  POP.W           {R8-R10}
DD0C2:  POP             {R4-R7,PC}
