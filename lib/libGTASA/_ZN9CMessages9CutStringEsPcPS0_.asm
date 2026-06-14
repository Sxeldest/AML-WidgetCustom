; =========================================================
; Game Engine Function: _ZN9CMessages9CutStringEsPcPS0_
; Address            : 0x54C170 - 0x54C1DA
; =========================================================

54C170:  PUSH            {R4-R7,LR}
54C172:  ADD             R7, SP, #0xC
54C174:  PUSH.W          {R8-R10}
54C178:  MOV             R5, R1
54C17A:  MOV             R9, R0
54C17C:  MOV             R0, R5; char *
54C17E:  MOV             R8, R2
54C180:  BLX             strlen
54C184:  LSLS            R1, R0, #0x10
54C186:  MOV.W           R12, #0
54C18A:  CMP             R1, #1
54C18C:  BLT             loc_54C1CC
54C18E:  SXTH.W          LR, R0
54C192:  MOVS            R3, #0
54C194:  MOVS            R4, #0
54C196:  ADD.W           R6, R4, R9
54C19A:  ADD.W           R10, R3, #1
54C19E:  CMP             R6, LR
54C1A0:  MOV             R2, R0
54C1A2:  ADD.W           R1, R5, R4
54C1A6:  STR.W           R1, [R8,R3,LSL#2]
54C1AA:  BGE             loc_54C1BE
54C1AC:  MOV             R4, R6
54C1AE:  SUBS            R6, R4, #1
54C1B0:  SXTH            R2, R4
54C1B2:  LDRB            R1, [R5,R2]
54C1B4:  CMP             R1, #0x20 ; ' '
54C1B6:  BNE             loc_54C1AC
54C1B8:  STRB.W          R12, [R5,R2]
54C1BC:  ADDS            R2, R4, #1
54C1BE:  SXTH            R4, R2
54C1C0:  CMP             LR, R4
54C1C2:  BLE             loc_54C1D0
54C1C4:  CMP             R3, #7
54C1C6:  MOV             R3, R10
54C1C8:  BLT             loc_54C196
54C1CA:  B               loc_54C1D0
54C1CC:  MOV.W           R10, #0
54C1D0:  SXTH.W          R0, R10
54C1D4:  POP.W           {R8-R10}
54C1D8:  POP             {R4-R7,PC}
