; =========================================================
; Game Engine Function: _ZN20CEventHandlerHistory5FlushEv
; Address            : 0x37B1F6 - 0x37B22E
; =========================================================

37B1F6:  PUSH            {R4,R5,R7,LR}
37B1F8:  ADD             R7, SP, #8
37B1FA:  MOV             R4, R0
37B1FC:  LDR             R0, [R4,#8]
37B1FE:  CMP             R0, #0
37B200:  ITTT NE
37B202:  LDRNE           R1, [R0]
37B204:  LDRNE           R1, [R1,#4]
37B206:  BLXNE           R1
37B208:  LDR             R0, [R4,#4]
37B20A:  MOVS            R5, #0
37B20C:  STR             R5, [R4,#8]
37B20E:  CMP             R0, #0
37B210:  ITTT NE
37B212:  LDRNE           R1, [R0]
37B214:  LDRNE           R1, [R1,#4]
37B216:  BLXNE           R1
37B218:  LDR             R0, [R4,#0xC]
37B21A:  STR             R5, [R4,#4]
37B21C:  CMP             R0, #0
37B21E:  IT EQ
37B220:  POPEQ           {R4,R5,R7,PC}
37B222:  LDR             R1, [R0]
37B224:  LDR             R1, [R1,#4]
37B226:  BLX             R1
37B228:  MOVS            R0, #0
37B22A:  STR             R0, [R4,#0xC]
37B22C:  POP             {R4,R5,R7,PC}
