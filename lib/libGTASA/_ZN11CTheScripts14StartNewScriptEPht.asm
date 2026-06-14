; =========================================================
; Game Engine Function: _ZN11CTheScripts14StartNewScriptEPht
; Address            : 0x32AD90 - 0x32AE60
; =========================================================

32AD90:  PUSH            {R4-R7,LR}
32AD92:  ADD             R7, SP, #0xC
32AD94:  PUSH.W          {R11}
32AD98:  MOV             R5, R0
32AD9A:  LDR             R0, =(_ZN11CTheScripts12ScriptsArrayE_ptr - 0x32ADA2)
32AD9C:  LDR             R2, =(_ZN11CTheScripts12pIdleScriptsE_ptr - 0x32ADA4)
32AD9E:  ADD             R0, PC; _ZN11CTheScripts12ScriptsArrayE_ptr
32ADA0:  ADD             R2, PC; _ZN11CTheScripts12pIdleScriptsE_ptr
32ADA2:  LDR             R0, [R0]; CTheScripts::ScriptsArray ...
32ADA4:  LDR             R4, [R2]; CTheScripts::pIdleScripts ...
32ADA6:  ADD.W           R0, R0, R1,LSL#8
32ADAA:  LDR             R4, [R4]; CTheScripts::pIdleScripts
32ADAC:  CMP             R4, #0
32ADAE:  IT NE
32ADB0:  CMPNE           R4, R0
32ADB2:  BNE             loc_32ADAA
32ADB4:  CMP             R4, #0
32ADB6:  BEQ             loc_32AE58
32ADB8:  LDR             R0, =(_ZN11CTheScripts12pIdleScriptsE_ptr - 0x32ADC6)
32ADBA:  MOVS            R6, #0
32ADBC:  LDRD.W          R1, R2, [R4]
32ADC0:  CMP             R2, #0
32ADC2:  ADD             R0, PC; _ZN11CTheScripts12pIdleScriptsE_ptr
32ADC4:  VMOV.I32        Q8, #0
32ADC8:  IT EQ
32ADCA:  LDREQ           R2, [R0]; CTheScripts::pIdleScripts ...
32ADCC:  STR             R1, [R2]; CTheScripts::pIdleScripts
32ADCE:  LDR             R0, [R4]
32ADD0:  CMP             R0, #0
32ADD2:  ITT NE
32ADD4:  LDRNE           R1, [R4,#4]
32ADD6:  STRNE           R1, [R0,#4]
32ADD8:  MOVW            R0, #0x656D
32ADDC:  STRB            R6, [R4,#0xE]
32ADDE:  MOVS            R1, #0xA8
32ADE0:  STRH            R0, [R4,#0xC]
32ADE2:  MOV             R0, #0x616E6F6E
32ADEA:  STR             R6, [R4]
32ADEC:  STR.W           R6, [R4,#0xEC]
32ADF0:  STR             R0, [R4,#8]
32ADF2:  MOVS            R0, #0xFF
32ADF4:  STR.W           R6, [R4,#0xE4]
32ADF8:  STRB.W          R6, [R4,#0xE8]
32ADFC:  STRB.W          R0, [R4,#0xE9]
32AE00:  ADD.W           R0, R4, #0x2A ; '*'
32AE04:  VST1.16         {D16-D17}, [R0]
32AE08:  ADD.W           R0, R4, #0x20 ; ' '
32AE0C:  VST1.32         {D16-D17}, [R0]
32AE10:  ADD.W           R0, R4, #0x10
32AE14:  VST1.32         {D16-D17}, [R0]
32AE18:  ADD.W           R0, R4, #0x3C ; '<'
32AE1C:  BLX             j___aeabi_memclr8_0
32AE20:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x32AE2E)
32AE22:  MOV.W           R1, #0x1000000
32AE26:  STRB.W          R6, [R4,#0xF4]
32AE2A:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
32AE2C:  STR.W           R1, [R4,#0xF0]
32AE30:  STR.W           R6, [R4,#0xF8]
32AE34:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
32AE36:  STRB.W          R6, [R4,#0xFC]
32AE3A:  STR             R5, [R4,#0x14]
32AE3C:  LDR             R1, [R0]; CTheScripts::pActiveScripts
32AE3E:  STRD.W          R1, R6, [R4]
32AE42:  LDR             R0, [R0]; CTheScripts::pActiveScripts
32AE44:  CMP             R0, #0
32AE46:  IT NE
32AE48:  STRNE           R4, [R0,#4]
32AE4A:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x32AE50)
32AE4C:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
32AE4E:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
32AE50:  STR             R4, [R0]; CTheScripts::pActiveScripts
32AE52:  MOVS            R0, #1
32AE54:  STRB.W          R0, [R4,#0xE4]
32AE58:  MOV             R0, R4
32AE5A:  POP.W           {R11}
32AE5E:  POP             {R4-R7,PC}
