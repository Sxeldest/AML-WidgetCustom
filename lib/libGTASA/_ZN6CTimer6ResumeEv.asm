; =========================================================
; Game Engine Function: _ZN6CTimer6ResumeEv
; Address            : 0x420F5C - 0x420FA8
; =========================================================

420F5C:  LDR             R0, =(byte_96B524 - 0x420F62)
420F5E:  ADD             R0, PC; byte_96B524
420F60:  LDRB            R0, [R0]
420F62:  CMP             R0, #1
420F64:  BNE             locret_420FA6
420F66:  LDR             R0, =(dword_96B520 - 0x420F6C)
420F68:  ADD             R0, PC; dword_96B520
420F6A:  LDR             R1, [R0]
420F6C:  SUBS            R1, #1
420F6E:  STR             R1, [R0]
420F70:  IT NE
420F72:  BXNE            LR
420F74:  PUSH            {R4,R6,R7,LR}
420F76:  ADD             R7, SP, #0x10+var_8
420F78:  LDR             R0, =(timerDef_ptr - 0x420F7E)
420F7A:  ADD             R0, PC; timerDef_ptr
420F7C:  LDR             R0, [R0]; timerDef
420F7E:  LDR             R0, [R0]
420F80:  BLX             R0
420F82:  LDR             R2, =(dword_96B530 - 0x420F8C)
420F84:  LDR.W           R12, =(dword_96B528 - 0x420F8E)
420F88:  ADD             R2, PC; dword_96B530
420F8A:  ADD             R12, PC; dword_96B528
420F8C:  LDRD.W          R2, R3, [R2]
420F90:  LDRD.W          LR, R4, [R12]
420F94:  SUBS            R0, R0, R2
420F96:  SBCS            R1, R3
420F98:  ADDS.W          R0, R0, LR
420F9C:  ADCS            R1, R4
420F9E:  STRD.W          R0, R1, [R12]
420FA2:  POP.W           {R4,R6,R7,LR}
420FA6:  BX              LR
