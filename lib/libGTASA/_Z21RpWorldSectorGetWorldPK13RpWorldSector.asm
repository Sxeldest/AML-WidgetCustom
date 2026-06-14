; =========================================================
; Game Engine Function: _Z21RpWorldSectorGetWorldPK13RpWorldSector
; Address            : 0x21CC30 - 0x21CCB2
; =========================================================

21CC30:  PUSH            {R4,R5,R7,LR}
21CC32:  ADD             R7, SP, #8
21CC34:  SUB             SP, SP, #0x100
21CC36:  LDR             R1, =(RwEngineInstance_ptr - 0x21CC3E)
21CC38:  LDR             R2, =(dword_6BD630 - 0x21CC40)
21CC3A:  ADD             R1, PC; RwEngineInstance_ptr
21CC3C:  ADD             R2, PC; dword_6BD630
21CC3E:  LDR             R1, [R1]; RwEngineInstance
21CC40:  LDR             R2, [R2]
21CC42:  LDR             R1, [R1]
21CC44:  ADD.W           R12, R1, R2
21CC48:  LDR.W           R3, [R12,#4]!
21CC4C:  CMP             R3, R12
21CC4E:  BEQ             loc_21CCA8
21CC50:  MOV             R2, SP
21CC52:  LDR.W           LR, [R3,#-8]
21CC56:  LDRB.W          R1, [LR,#3]
21CC5A:  LSLS            R1, R1, #0x1F
21CC5C:  BNE             loc_21CC94
21CC5E:  LDR.W           R4, [LR,#0x1C]
21CC62:  MOVS            R1, #0
21CC64:  LDR             R5, [R4]
21CC66:  CMP.W           R5, #0xFFFFFFFF
21CC6A:  BLE             loc_21CC80
21CC6C:  LDRD.W          R5, R4, [R4,#8]
21CC70:  ADDS            R1, #1
21CC72:  STR.W           R4, [R2,R1,LSL#2]
21CC76:  MOV             R4, R5
21CC78:  CMP.W           R1, #0xFFFFFFFF
21CC7C:  BGT             loc_21CC64
21CC7E:  B               loc_21CCA2
21CC80:  CMP             R4, R0
21CC82:  BEQ             loc_21CCAC
21CC84:  CBZ             R4, loc_21CCA2
21CC86:  LDR.W           R4, [R2,R1,LSL#2]
21CC8A:  SUBS            R1, #1
21CC8C:  CMP.W           R1, #0xFFFFFFFF
21CC90:  BGT             loc_21CC64
21CC92:  B               loc_21CCA2
21CC94:  CMP             LR, R0
21CC96:  BHI             loc_21CCA2
21CC98:  LDR.W           R1, [R3,#-4]
21CC9C:  ADD             R1, LR
21CC9E:  CMP             R1, R0
21CCA0:  BHI             loc_21CCAC
21CCA2:  LDR             R3, [R3]
21CCA4:  CMP             R3, R12
21CCA6:  BNE             loc_21CC52
21CCA8:  MOV.W           LR, #0
21CCAC:  MOV             R0, LR
21CCAE:  ADD             SP, SP, #0x100
21CCB0:  POP             {R4,R5,R7,PC}
