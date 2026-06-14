; =========================================================
; Game Engine Function: _ZN9CPathFind15TestCrossesRoadE12CNodeAddressS0_
; Address            : 0x318C40 - 0x318CC8
; =========================================================

318C40:  PUSH            {R4-R7,LR}
318C42:  ADD             R7, SP, #0xC
318C44:  PUSH.W          {R11}
318C48:  UXTH            R3, R1
318C4A:  ADD.W           R12, R0, R3,LSL#2
318C4E:  LDR.W           R4, [R12,#0x804]
318C52:  CBZ             R4, loc_318CB0
318C54:  UXTH            R3, R2
318C56:  ADD.W           R0, R0, R3,LSL#2
318C5A:  LDR.W           R0, [R0,#0x804]
318C5E:  CMP             R0, #0
318C60:  ITTTT NE
318C62:  LSRNE           R0, R1, #0x10
318C64:  LSLNE           R5, R0, #3
318C66:  SUBNE.W         R1, R5, R1,LSR#16
318C6A:  ADDNE.W         R1, R4, R1,LSL#2
318C6E:  ITT NE
318C70:  LDRHNE          R1, [R1,#0x18]
318C72:  ANDSNE.W        R1, R1, #0xF
318C76:  BEQ             loc_318CB0
318C78:  RSB.W           R0, R0, R0,LSL#3
318C7C:  MOV.W           LR, R2,LSR#16
318C80:  LDR.W           R2, [R12,#0xA44]
318C84:  BIC.W           R1, R1, #0xFF000000
318C88:  ADD.W           R0, R4, R0,LSL#2
318C8C:  MOVS            R5, #0
318C8E:  MOVS            R4, #0
318C90:  LDRSH.W         R0, [R0,#0x10]
318C94:  ADD             R5, R0
318C96:  LDRH.W          R6, [R2,R5,LSL#2]
318C9A:  CMP             R6, R3
318C9C:  BNE             loc_318CA8
318C9E:  ADD.W           R6, R2, R5,LSL#2
318CA2:  LDRH            R6, [R6,#2]
318CA4:  CMP             R6, LR
318CA6:  BEQ             loc_318CB8
318CA8:  ADDS            R4, #1
318CAA:  SXTH            R5, R4
318CAC:  CMP             R5, R1
318CAE:  BLT             loc_318C94
318CB0:  MOVS            R0, #0
318CB2:  POP.W           {R11}
318CB6:  POP             {R4-R7,PC}
318CB8:  LDR.W           R0, [R12,#0xC84]
318CBC:  LDRB            R0, [R0,R5]
318CBE:  AND.W           R0, R0, #1
318CC2:  POP.W           {R11}
318CC6:  POP             {R4-R7,PC}
