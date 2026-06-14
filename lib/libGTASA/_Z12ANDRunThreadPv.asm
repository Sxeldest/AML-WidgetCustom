; =========================================================
; Game Engine Function: _Z12ANDRunThreadPv
; Address            : 0x26BF20 - 0x26BFB0
; =========================================================

26BF20:  PUSH            {R4-R7,LR}
26BF22:  ADD             R7, SP, #0xC
26BF24:  PUSH.W          {R11}
26BF28:  SUB             SP, SP, #8
26BF2A:  MOV             R4, R0
26BF2C:  LDR             R6, [R4,#0x44]
26BF2E:  CBZ             R6, loc_26BF78
26BF30:  BLX             gettid
26BF34:  MOV             R5, R0
26BF36:  MOVS            R0, #3
26BF38:  ADD             R3, SP, #0x18+var_14
26BF3A:  STR             R0, [SP,#0x18+var_14]
26BF3C:  MOVS            R0, #0xF2; sysno
26BF3E:  MOV             R1, R5
26BF40:  MOVS            R2, #4
26BF42:  BLX             syscall
26BF46:  LDR             R0, [SP,#0x18+var_14]
26BF48:  CMP             R0, #1
26BF4A:  BEQ             loc_26BF78
26BF4C:  MOV.W           R1, #0xFFFFFFFF
26BF50:  MOVS            R2, #1
26BF52:  ADDS            R3, R1, #1
26BF54:  LSL.W           R1, R2, R3
26BF58:  ANDS            R1, R0
26BF5A:  IT NE
26BF5C:  MOVNE           R1, R3
26BF5E:  SUBS            R6, #1
26BF60:  BNE             loc_26BF52
26BF62:  CMP             R1, #0xF
26BF64:  BGT             loc_26BF78
26BF66:  MOVS            R0, #1
26BF68:  MOV             R3, SP
26BF6A:  LSLS            R0, R1
26BF6C:  MOV             R1, R5
26BF6E:  STR             R0, [SP,#0x18+var_18]
26BF70:  MOVS            R0, #0xF1; sysno
26BF72:  MOVS            R2, #4
26BF74:  BLX             syscall
26BF78:  LDRB            R0, [R4]
26BF7A:  CMP             R0, #0
26BF7C:  ITTT NE
26BF7E:  LDRNE           R0, [R4,#0x24]
26BF80:  MOVNE           R1, R4
26BF82:  BLXNE           pthread_setname_np
26BF86:  LDR             R0, =(ANDThreadStorageKey_ptr - 0x26BF8E)
26BF88:  LDR             R5, [R4,#0x20]
26BF8A:  ADD             R0, PC; ANDThreadStorageKey_ptr
26BF8C:  LDR             R0, [R0]; ANDThreadStorageKey
26BF8E:  MOV             R1, R5; pointer
26BF90:  LDR             R0, [R0]; key
26BF92:  BLX             pthread_setspecific
26BF96:  MOVS            R6, #1
26BF98:  STRB.W          R6, [R4,#0x41]
26BF9C:  LDRD.W          R1, R0, [R5]
26BFA0:  BLX             R1
26BFA2:  STRH.W          R6, [R4,#0x40]
26BFA6:  MOVS            R0, #0
26BFA8:  ADD             SP, SP, #8
26BFAA:  POP.W           {R11}
26BFAE:  POP             {R4-R7,PC}
