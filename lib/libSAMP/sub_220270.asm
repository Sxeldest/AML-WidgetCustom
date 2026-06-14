; =========================================================
; Game Engine Function: sub_220270
; Address            : 0x220270 - 0x220304
; =========================================================

220270:  PUSH            {R4-R7,LR}
220272:  ADD             R7, SP, #0xC
220274:  PUSH.W          {R11}
220278:  LDR             R4, =(unk_384178 - 0x220280)
22027A:  CMP             R2, #0
22027C:  ADD             R4, PC; unk_384178
22027E:  IT NE
220280:  MOVNE           R4, R2
220282:  CBZ             R0, loc_22029C
220284:  CBZ             R1, loc_2202A4
220286:  LDR             R2, [R4]
220288:  CBZ             R2, loc_2202AE
22028A:  BLX             __errno
22028E:  MOVS            R1, #0x54 ; 'T'
220290:  STR             R1, [R0]
220292:  MOVS            R0, #0
220294:  STR             R0, [R4]
220296:  MOV.W           R2, #0xFFFFFFFF
22029A:  B               loc_2202F2
22029C:  MOVS            R0, #0
22029E:  MOVS            R2, #1
2202A0:  STR             R0, [R4]
2202A2:  B               loc_2202F2
2202A4:  MOVS            R1, #0
2202A6:  MOVS            R2, #1
2202A8:  STRB            R1, [R0]
2202AA:  STR             R1, [R4]
2202AC:  B               loc_2202F2
2202AE:  CMP             R1, #0x7F
2202B0:  BHI             loc_2202B8
2202B2:  STRB            R1, [R0]
2202B4:  MOVS            R2, #1
2202B6:  B               loc_2202F2
2202B8:  MOVS            R3, #2
2202BA:  CMP.W           R1, #0x800
2202BE:  BCS             loc_2202C6
2202C0:  MOVS            R4, #0xC0
2202C2:  MOVS            R2, #2
2202C4:  B               loc_2202DC
2202C6:  CMP.W           R1, #0x10000
2202CA:  BCS             loc_2202D2
2202CC:  MOVS            R2, #3
2202CE:  MOVS            R4, #0xE0
2202D0:  B               loc_2202DC
2202D2:  CMP.W           R1, #0x200000
2202D6:  BCS             loc_2202FA
2202D8:  MOVS            R2, #4
2202DA:  MOVS            R4, #0xF0
2202DC:  SUBS            R5, R2, #1
2202DE:  CBZ             R5, loc_2202EE
2202E0:  LSRS            R6, R1, #6
2202E2:  BFI.W           R1, R3, #6, #0x1A
2202E6:  STRB            R1, [R0,R5]
2202E8:  SUBS            R5, #1
2202EA:  MOV             R1, R6
2202EC:  B               loc_2202DE
2202EE:  ORRS            R1, R4
2202F0:  STRB            R1, [R0]
2202F2:  MOV             R0, R2
2202F4:  POP.W           {R11}
2202F8:  POP             {R4-R7,PC}
2202FA:  BLX             __errno
2202FE:  MOVS            R1, #0x54 ; 'T'
220300:  STR             R1, [R0]
220302:  B               loc_220296
