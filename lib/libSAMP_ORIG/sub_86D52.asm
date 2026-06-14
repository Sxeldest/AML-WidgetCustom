; =========================================================
; Game Engine Function: sub_86D52
; Address            : 0x86D52 - 0x86DEE
; =========================================================

86D52:  PUSH            {R4-R7,LR}
86D54:  ADD             R7, SP, #0xC
86D56:  PUSH.W          {R8-R10}
86D5A:  CMP             R2, #1
86D5C:  BLT             loc_86DE8
86D5E:  MOV             R6, R1
86D60:  MOV             R1, R2
86D62:  MOV             R8, R3
86D64:  MOV             R5, R2
86D66:  MOV             R9, R0
86D68:  BL              sub_86CE4
86D6C:  LDR.W           R3, [R9]
86D70:  RSB.W           R0, R5, #8
86D74:  AND.W           LR, R3, #7
86D78:  RSB.W           R12, LR, #8
86D7C:  B               loc_86DA2
86D7E:  LDR.W           R1, [R9,#0xC]
86D82:  ASRS            R3, R3, #3
86D84:  STRB            R2, [R1,R3]
86D86:  LDR.W           R1, [R9]
86D8A:  CMP             R5, #8
86D8C:  MOV             R2, R5
86D8E:  ADD.W           R6, R6, #1
86D92:  IT CS
86D94:  MOVCS           R2, #8
86D96:  ADDS            R3, R1, R2
86D98:  ADDS            R0, #8
86D9A:  SUBS            R5, #8
86D9C:  STR.W           R3, [R9]
86DA0:  BLE             loc_86DE8
86DA2:  LDRB            R1, [R6]
86DA4:  CMP.W           R8, #0
86DA8:  MOV             R2, R1
86DAA:  IT NE
86DAC:  LSLNE           R2, R0
86DAE:  CMP             R5, #8
86DB0:  IT CS
86DB2:  MOVCS           R2, R1
86DB4:  CMP.W           LR, #0
86DB8:  BEQ             loc_86D7E
86DBA:  LDR.W           R1, [R9,#0xC]
86DBE:  ASRS            R3, R3, #3
86DC0:  UXTB.W          R10, R2
86DC4:  CMP             R12, R5
86DC6:  LSR.W           R2, R10, LR
86DCA:  LDRB            R4, [R1,R3]
86DCC:  ORR.W           R2, R2, R4
86DD0:  STRB            R2, [R1,R3]
86DD2:  BCS             loc_86D86
86DD4:  LDR.W           R1, [R9]
86DD8:  LSL.W           R3, R10, R12
86DDC:  LDR.W           R2, [R9,#0xC]
86DE0:  ADD.W           R1, R2, R1,ASR#3
86DE4:  STRB            R3, [R1,#1]
86DE6:  B               loc_86D86
86DE8:  POP.W           {R8-R10}
86DEC:  POP             {R4-R7,PC}
