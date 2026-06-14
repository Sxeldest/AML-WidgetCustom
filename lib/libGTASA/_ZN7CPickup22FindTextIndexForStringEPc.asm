; =========================================================
; Game Engine Function: _ZN7CPickup22FindTextIndexForStringEPc
; Address            : 0x31F118 - 0x31F156
; =========================================================

31F118:  PUSH            {R4,R6,R7,LR}
31F11A:  ADD             R7, SP, #8
31F11C:  MOV             R4, R0
31F11E:  CBZ             R4, loc_31F14E
31F120:  LDR             R0, =(aProp3 - 0x31F128); "PROP_3"
31F122:  MOV             R1, R4; char *
31F124:  ADD             R0, PC; "PROP_3"
31F126:  BLX             strcasecmp
31F12A:  CBZ             R0, loc_31F152
31F12C:  LDR             R0, =(aProp3x - 0x31F134); "PROP_3X"
31F12E:  MOV             R1, R4; char *
31F130:  ADD             R0, PC; "PROP_3X"
31F132:  BLX             strcasecmp
31F136:  CBZ             R0, loc_31F152
31F138:  LDR             R0, =(aProp4 - 0x31F140); "PROP_4"
31F13A:  MOV             R1, R4; char *
31F13C:  ADD             R0, PC; "PROP_4"
31F13E:  BLX             strcasecmp
31F142:  MOV             R1, R0
31F144:  MOVS            R0, #0
31F146:  CMP             R1, #0
31F148:  IT EQ
31F14A:  MOVEQ           R0, #2
31F14C:  POP             {R4,R6,R7,PC}
31F14E:  MOVS            R0, #0
31F150:  POP             {R4,R6,R7,PC}
31F152:  MOVS            R0, #1
31F154:  POP             {R4,R6,R7,PC}
