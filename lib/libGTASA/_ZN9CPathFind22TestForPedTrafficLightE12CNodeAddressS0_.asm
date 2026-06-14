; =========================================================
; Game Engine Function: _ZN9CPathFind22TestForPedTrafficLightE12CNodeAddressS0_
; Address            : 0x3189DA - 0x318A62
; =========================================================

3189DA:  PUSH            {R4-R7,LR}
3189DC:  ADD             R7, SP, #0xC
3189DE:  PUSH.W          {R11}
3189E2:  UXTH            R3, R1
3189E4:  ADD.W           R12, R0, R3,LSL#2
3189E8:  LDR.W           R4, [R12,#0x804]
3189EC:  CBZ             R4, loc_318A4A
3189EE:  UXTH            R3, R2
3189F0:  ADD.W           R0, R0, R3,LSL#2
3189F4:  LDR.W           R0, [R0,#0x804]
3189F8:  CMP             R0, #0
3189FA:  ITTTT NE
3189FC:  LSRNE           R0, R1, #0x10
3189FE:  LSLNE           R5, R0, #3
318A00:  SUBNE.W         R1, R5, R1,LSR#16
318A04:  ADDNE.W         R1, R4, R1,LSL#2
318A08:  ITT NE
318A0A:  LDRHNE          R1, [R1,#0x18]
318A0C:  ANDSNE.W        R1, R1, #0xF
318A10:  BEQ             loc_318A4A
318A12:  RSB.W           R0, R0, R0,LSL#3
318A16:  MOV.W           LR, R2,LSR#16
318A1A:  LDR.W           R2, [R12,#0xA44]
318A1E:  BIC.W           R1, R1, #0xFF000000
318A22:  ADD.W           R0, R4, R0,LSL#2
318A26:  MOVS            R5, #0
318A28:  MOVS            R4, #0
318A2A:  LDRSH.W         R0, [R0,#0x10]
318A2E:  ADD             R5, R0
318A30:  LDRH.W          R6, [R2,R5,LSL#2]
318A34:  CMP             R6, R3
318A36:  BNE             loc_318A42
318A38:  ADD.W           R6, R2, R5,LSL#2
318A3C:  LDRH            R6, [R6,#2]
318A3E:  CMP             R6, LR
318A40:  BEQ             loc_318A52
318A42:  ADDS            R4, #1
318A44:  SXTH            R5, R4
318A46:  CMP             R5, R1
318A48:  BLT             loc_318A2E
318A4A:  MOVS            R0, #0
318A4C:  POP.W           {R11}
318A50:  POP             {R4-R7,PC}
318A52:  LDR.W           R0, [R12,#0xC84]
318A56:  LDRB            R0, [R0,R5]
318A58:  UBFX.W          R0, R0, #1, #1
318A5C:  POP.W           {R11}
318A60:  POP             {R4-R7,PC}
