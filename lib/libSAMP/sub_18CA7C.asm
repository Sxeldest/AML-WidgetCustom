; =========================================================
; Game Engine Function: sub_18CA7C
; Address            : 0x18CA7C - 0x18CB46
; =========================================================

18CA7C:  PUSH            {R4,R5,R7,LR}
18CA7E:  ADD             R7, SP, #8
18CA80:  SUB             SP, SP, #8
18CA82:  MOV             R4, R0
18CA84:  MOVS            R0, #0
18CA86:  MOV.W           R12, #0x18
18CA8A:  MOV             R2, SP
18CA8C:  MOVS            R3, #0
18CA8E:  STRD.W          R0, R0, [SP,#0x10+var_10]
18CA92:  MOVS            R5, #0
18CA94:  CMP             R3, #4
18CA96:  IT CC
18CA98:  MOVCC           R5, #1
18CA9A:  BIC.W           R1, R12, R0
18CA9E:  ADD.W           R5, R4, R5,LSL#2
18CAA2:  ADDS            R0, #8
18CAA4:  LDR             R5, [R5,#0x18]
18CAA6:  LSR.W           R1, R5, R1
18CAAA:  STRB            R1, [R2,R3]
18CAAC:  ADDS            R3, #1
18CAAE:  CMP             R3, #8
18CAB0:  BNE             loc_18CA92
18CAB2:  LDR             R1, =(unk_8F5EB - 0x18CABC)
18CAB4:  MOV             R0, R4; int
18CAB6:  MOVS            R2, #1
18CAB8:  ADD             R1, PC; unk_8F5EB ; src
18CABA:  BL              sub_18C9EC
18CABE:  LDR             R0, [R4,#0x18]
18CAC0:  AND.W           R0, R0, #0x1F8
18CAC4:  CMP.W           R0, #0x1C0
18CAC8:  BEQ             loc_18CAE4
18CACA:  LDR             R5, =(unk_BEB4C - 0x18CAD0)
18CACC:  ADD             R5, PC; unk_BEB4C
18CACE:  MOV             R0, R4; int
18CAD0:  MOV             R1, R5; src
18CAD2:  MOVS            R2, #1
18CAD4:  BL              sub_18C9EC
18CAD8:  LDR             R0, [R4,#0x18]
18CADA:  AND.W           R0, R0, #0x1F8
18CADE:  CMP.W           R0, #0x1C0
18CAE2:  BNE             loc_18CACE
18CAE4:  MOV             R1, SP; src
18CAE6:  MOV             R0, R4; int
18CAE8:  MOVS            R2, #8
18CAEA:  BL              sub_18C9EC
18CAEE:  MOVS            R0, #0
18CAF0:  MOVS            R1, #0x18
18CAF2:  MOVS            R2, #0
18CAF4:  BIC.W           R3, R2, #3
18CAF8:  BIC.W           R5, R1, R0
18CAFC:  ADD             R3, R4
18CAFE:  ADDS            R0, #8
18CB00:  LDR             R3, [R3,#4]
18CB02:  LSRS            R3, R5
18CB04:  ADDS            R5, R4, R2
18CB06:  ADDS            R2, #1
18CB08:  CMP             R2, #0x14
18CB0A:  STRB.W          R3, [R5,#0x60]
18CB0E:  BNE             loc_18CAF4
18CB10:  ADDS            R1, R4, #4; int
18CB12:  VMOV.I32        Q8, #0
18CB16:  MOVS            R0, #0
18CB18:  MOV             R2, R1
18CB1A:  STRD.W          R0, R0, [R4,#0x18]
18CB1E:  VST1.32         {D16-D17}, [R2]!
18CB22:  STR             R0, [R2]
18CB24:  ADD.W           R2, R4, #0x20 ; ' '; src
18CB28:  MOV             R0, R2
18CB2A:  VST1.32         {D16-D17}, [R0]!
18CB2E:  VST1.32         {D16-D17}, [R0]!
18CB32:  VST1.32         {D16-D17}, [R0]!
18CB36:  VST1.32         {D16-D17}, [R0]
18CB3A:  MOV             R0, R4; int
18CB3C:  ADD             SP, SP, #8
18CB3E:  POP.W           {R4,R5,R7,LR}
18CB42:  B.W             sub_18BAC8
