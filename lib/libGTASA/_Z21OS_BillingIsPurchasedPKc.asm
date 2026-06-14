; =========================================================
; Game Engine Function: _Z21OS_BillingIsPurchasedPKc
; Address            : 0x26CFF8 - 0x26D04C
; =========================================================

26CFF8:  PUSH            {R4-R7,LR}
26CFFA:  ADD             R7, SP, #0xC
26CFFC:  PUSH.W          {R8}
26D000:  MOV             R8, R0
26D002:  LDR             R0, =(numItems_ptr - 0x26D008)
26D004:  ADD             R0, PC; numItems_ptr
26D006:  LDR             R0, [R0]; numItems
26D008:  LDR             R5, [R0]
26D00A:  CMP             R5, #1
26D00C:  BLT             loc_26D044
26D00E:  LDR             R0, =(items_ptr - 0x26D016)
26D010:  MOVS            R4, #0
26D012:  ADD             R0, PC; items_ptr
26D014:  LDR             R0, [R0]; items
26D016:  LDR             R0, [R0]
26D018:  ADDS            R6, R0, #4
26D01A:  LDR.W           R0, [R6,#-4]
26D01E:  MOV             R1, R8; char *
26D020:  LDR             R0, [R0]; char *
26D022:  BLX             strcmp
26D026:  CBZ             R0, loc_26D032
26D028:  ADDS            R4, #1
26D02A:  ADDS            R6, #0xC
26D02C:  CMP             R4, R5
26D02E:  BLT             loc_26D01A
26D030:  B               loc_26D044
26D032:  CMP             R6, #4
26D034:  BEQ             loc_26D044
26D036:  LDRB            R0, [R6]
26D038:  CMP             R0, #0
26D03A:  IT NE
26D03C:  MOVNE           R0, #1
26D03E:  POP.W           {R8}
26D042:  POP             {R4-R7,PC}
26D044:  MOVS            R0, #0
26D046:  POP.W           {R8}
26D04A:  POP             {R4-R7,PC}
