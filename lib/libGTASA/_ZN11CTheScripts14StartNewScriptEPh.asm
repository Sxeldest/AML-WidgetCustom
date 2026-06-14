; =========================================================
; Game Engine Function: _ZN11CTheScripts14StartNewScriptEPh
; Address            : 0x32ACCC - 0x32AD82
; =========================================================

32ACCC:  PUSH            {R4-R7,LR}
32ACCE:  ADD             R7, SP, #0xC
32ACD0:  PUSH.W          {R11}
32ACD4:  MOV             R5, R0
32ACD6:  LDR             R0, =(_ZN11CTheScripts12pIdleScriptsE_ptr - 0x32ACE2)
32ACD8:  MOVS            R6, #0
32ACDA:  VMOV.I32        Q8, #0
32ACDE:  ADD             R0, PC; _ZN11CTheScripts12pIdleScriptsE_ptr
32ACE0:  LDR             R0, [R0]; CTheScripts::pIdleScripts ...
32ACE2:  LDR             R4, [R0]; CTheScripts::pIdleScripts
32ACE4:  LDRD.W          R1, R2, [R4]
32ACE8:  CMP             R2, #0
32ACEA:  IT EQ
32ACEC:  MOVEQ           R2, R0
32ACEE:  STR             R1, [R2]; CTheScripts::pIdleScripts
32ACF0:  LDR             R0, [R4]
32ACF2:  CMP             R0, #0
32ACF4:  ITT NE
32ACF6:  LDRNE           R1, [R4,#4]
32ACF8:  STRNE           R1, [R0,#4]
32ACFA:  MOVW            R0, #0x656D
32ACFE:  STRB            R6, [R4,#0xE]
32AD00:  MOVS            R1, #0xA8
32AD02:  STRH            R0, [R4,#0xC]
32AD04:  MOV             R0, #0x616E6F6E
32AD0C:  STR             R6, [R4]
32AD0E:  STR.W           R6, [R4,#0xEC]
32AD12:  STR             R0, [R4,#8]
32AD14:  MOVS            R0, #0xFF
32AD16:  STR.W           R6, [R4,#0xE4]
32AD1A:  STRB.W          R6, [R4,#0xE8]
32AD1E:  STRB.W          R0, [R4,#0xE9]
32AD22:  ADD.W           R0, R4, #0x2A ; '*'
32AD26:  VST1.16         {D16-D17}, [R0]
32AD2A:  ADD.W           R0, R4, #0x20 ; ' '
32AD2E:  VST1.32         {D16-D17}, [R0]
32AD32:  ADD.W           R0, R4, #0x10
32AD36:  VST1.32         {D16-D17}, [R0]
32AD3A:  ADD.W           R0, R4, #0x3C ; '<'
32AD3E:  BLX             j___aeabi_memclr8_0
32AD42:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x32AD50)
32AD44:  MOV.W           R1, #0x1000000
32AD48:  STRB.W          R6, [R4,#0xF4]
32AD4C:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
32AD4E:  STR.W           R1, [R4,#0xF0]
32AD52:  STR.W           R6, [R4,#0xF8]
32AD56:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
32AD58:  STRB.W          R6, [R4,#0xFC]
32AD5C:  STR             R5, [R4,#0x14]
32AD5E:  LDR             R1, [R0]; CTheScripts::pActiveScripts
32AD60:  STRD.W          R1, R6, [R4]
32AD64:  LDR             R0, [R0]; CTheScripts::pActiveScripts
32AD66:  CMP             R0, #0
32AD68:  IT NE
32AD6A:  STRNE           R4, [R0,#4]
32AD6C:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x32AD72)
32AD6E:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
32AD70:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
32AD72:  STR             R4, [R0]; CTheScripts::pActiveScripts
32AD74:  MOVS            R0, #1
32AD76:  STRB.W          R0, [R4,#0xE4]
32AD7A:  MOV             R0, R4
32AD7C:  POP.W           {R11}
32AD80:  POP             {R4-R7,PC}
