; =========================================================
; Game Engine Function: sub_E2A7C
; Address            : 0xE2A7C - 0xE2B62
; =========================================================

E2A7C:  PUSH            {R4-R7,LR}
E2A7E:  ADD             R7, SP, #0xC
E2A80:  PUSH.W          {R8-R10}
E2A84:  MOV             R8, R0
E2A86:  LDR             R0, =(unk_91EB0 - 0xE2A90)
E2A88:  LDRB            R3, [R1]
E2A8A:  MOVS            R5, #0
E2A8C:  ADD             R0, PC; unk_91EB0
E2A8E:  MOVT            R5, #0x80FF
E2A92:  MOV             R9, R2
E2A94:  MOV             R10, R1
E2A96:  LSRS            R4, R3, #3
E2A98:  LDRB            R6, [R1,#1]
E2A9A:  LDRB            R0, [R0,R4]
E2A9C:  LSRS            R5, R4
E2A9E:  LDRB            R2, [R1,#2]
E2AA0:  LDRB.W          R12, [R1,#3]
E2AA4:  AND.W           R5, R5, #1
E2AA8:  LDR             R1, =(unk_91F0C - 0xE2AB0)
E2AAA:  ADDS            R4, R5, R0
E2AAC:  ADD             R1, PC; unk_91F0C
E2AAE:  LDR.W           LR, [R1,R4,LSL#2]
E2AB2:  LDR             R1, =(unk_91EF8 - 0xE2ABC)
E2AB4:  LDR             R5, =(unk_91EE4 - 0xE2ABE)
E2AB6:  LDR             R0, =(unk_91ED0 - 0xE2AC0)
E2AB8:  ADD             R1, PC; unk_91EF8
E2ABA:  ADD             R5, PC; unk_91EE4
E2ABC:  ADD             R0, PC; unk_91ED0
E2ABE:  LDR.W           R1, [R1,R4,LSL#2]; unsigned int
E2AC2:  LDR.W           R5, [R5,R4,LSL#2]
E2AC6:  LDR.W           R0, [R0,R4,LSL#2]
E2ACA:  ANDS            R0, R3
E2ACC:  AND.W           R3, R6, #0x3F ; '?'
E2AD0:  LSLS            R3, R3, #0xC
E2AD2:  ORR.W           R0, R3, R0,LSL#18
E2AD6:  AND.W           R3, R2, #0x3F ; '?'
E2ADA:  ORR.W           R0, R0, R3,LSL#6
E2ADE:  AND.W           R3, R12, #0x3F ; '?'
E2AE2:  ADD             R0, R3
E2AE4:  MOVS            R3, #0x30 ; '0'
E2AE6:  AND.W           R3, R3, R6,LSR#2
E2AEA:  MOVS            R6, #0xC
E2AEC:  AND.W           R2, R6, R2,LSR#4
E2AF0:  LSR.W           R6, R0, R1
E2AF4:  ADD             R2, R3
E2AF6:  CMP             R5, R6
E2AF8:  ORR.W           R2, R2, R12,LSR#6
E2AFC:  MOV.W           R0, R6,LSR#16
E2B00:  IT HI
E2B02:  ADDHI           R2, #0x40 ; '@'
E2B04:  CMP             R0, #0x10
E2B06:  MOVW            R0, #0x7FF
E2B0A:  IT HI
E2B0C:  ADDHI.W         R2, R2, #0x100
E2B10:  BIC.W           R0, R6, R0
E2B14:  CMP.W           R0, #0xD800
E2B18:  IT EQ
E2B1A:  ORREQ.W         R2, R2, #0x80
E2B1E:  EOR.W           R0, R2, #0x2A ; '*'
E2B22:  LSRS.W          R0, R0, LR
E2B26:  IT NE
E2B28:  MOVNE.W         R6, #0xFFFFFFFF
E2B2C:  CMP             R6, #0x20 ; ' '
E2B2E:  BCC             loc_E2B3C
E2B30:  CMP             R6, #0x22 ; '"'
E2B32:  BEQ             loc_E2B3C
E2B34:  CMP             R6, #0x5C ; '\'
E2B36:  IT NE
E2B38:  CMPNE           R6, #0x7F
E2B3A:  BNE             loc_E2B52
E2B3C:  LDR.W           R0, [R8]
E2B40:  ADD.W           R1, R9, R4
E2B44:  STRD.W          R9, R1, [R0]
E2B48:  STR             R6, [R0,#8]
E2B4A:  MOVS            R0, #0
E2B4C:  POP.W           {R8-R10}
E2B50:  POP             {R4-R7,PC}
E2B52:  MOV             R0, R6; this
E2B54:  BLX             j__ZN3fmt2v86detail12is_printableEj; fmt::v8::detail::is_printable(uint)
E2B58:  CMP             R0, #0
E2B5A:  BEQ             loc_E2B3C
E2B5C:  ADD.W           R0, R10, R4
E2B60:  B               loc_E2B4C
