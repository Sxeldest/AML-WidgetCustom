; =========================================================
; Game Engine Function: _ZN11CTheScripts25ReadObjectNamesFromScriptEv
; Address            : 0x34DFA0 - 0x34E056
; =========================================================

34DFA0:  PUSH            {R4,R6,R7,LR}
34DFA2:  ADD             R7, SP, #8
34DFA4:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x34DFAC)
34DFA6:  LDR             R1, =(_ZN11CTheScripts19NumberOfUsedObjectsE_ptr - 0x34DFAE)
34DFA8:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
34DFAA:  ADD             R1, PC; _ZN11CTheScripts19NumberOfUsedObjectsE_ptr
34DFAC:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
34DFAE:  LDR             R1, [R1]; CTheScripts::NumberOfUsedObjects ...
34DFB0:  LDR.W           R2, [R0,#(dword_7BD797 - 0x7BD794)]
34DFB4:  ADD             R0, R2
34DFB6:  LDRH            R2, [R0,#8]
34DFB8:  STRH            R2, [R1]; CTheScripts::NumberOfUsedObjects
34DFBA:  CMP             R2, #0
34DFBC:  IT EQ
34DFBE:  POPEQ           {R4,R6,R7,PC}
34DFC0:  LDR             R1, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x34DFCE)
34DFC2:  ADDS            R0, #0xC
34DFC4:  MOV.W           R12, #0
34DFC8:  MOVS            R3, #0
34DFCA:  ADD             R1, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
34DFCC:  LDR             R2, [R1]; CTheScripts::UsedObjectArray ...
34DFCE:  LDR             R1, =(_ZN11CTheScripts19NumberOfUsedObjectsE_ptr - 0x34DFD4)
34DFD0:  ADD             R1, PC; _ZN11CTheScripts19NumberOfUsedObjectsE_ptr
34DFD2:  LDR.W           LR, [R1]; CTheScripts::NumberOfUsedObjects ...
34DFD6:  MOVS            R1, #0
34DFD8:  RSB.W           R3, R3, R3,LSL#3
34DFDC:  LDRB            R4, [R0]
34DFDE:  ADDS            R1, #1
34DFE0:  STRB.W          R4, [R2,R3,LSL#2]
34DFE4:  ADD.W           R3, R2, R3,LSL#2
34DFE8:  LDRB            R4, [R0,#1]
34DFEA:  STRB            R4, [R3,#1]
34DFEC:  LDRB            R4, [R0,#2]
34DFEE:  STRB            R4, [R3,#2]
34DFF0:  LDRB            R4, [R0,#3]
34DFF2:  STRB            R4, [R3,#3]
34DFF4:  LDRB            R4, [R0,#4]
34DFF6:  STRB            R4, [R3,#4]
34DFF8:  LDRB            R4, [R0,#5]
34DFFA:  STRB            R4, [R3,#5]
34DFFC:  LDRB            R4, [R0,#6]
34DFFE:  STRB            R4, [R3,#6]
34E000:  LDRB            R4, [R0,#7]
34E002:  STRB            R4, [R3,#7]
34E004:  LDRB            R4, [R0,#8]
34E006:  STRB            R4, [R3,#8]
34E008:  LDRB            R4, [R0,#9]
34E00A:  STRB            R4, [R3,#9]
34E00C:  LDRB            R4, [R0,#0xA]
34E00E:  STRB            R4, [R3,#0xA]
34E010:  LDRB            R4, [R0,#0xB]
34E012:  STRB            R4, [R3,#0xB]
34E014:  LDRB            R4, [R0,#0xC]
34E016:  STRB            R4, [R3,#0xC]
34E018:  LDRB            R4, [R0,#0xD]
34E01A:  STRB            R4, [R3,#0xD]
34E01C:  LDRB            R4, [R0,#0xE]
34E01E:  STRB            R4, [R3,#0xE]
34E020:  LDRB            R4, [R0,#0xF]
34E022:  STRB            R4, [R3,#0xF]
34E024:  LDRB            R4, [R0,#0x10]
34E026:  STRB            R4, [R3,#0x10]
34E028:  LDRB            R4, [R0,#0x11]
34E02A:  STRB            R4, [R3,#0x11]
34E02C:  LDRB            R4, [R0,#0x12]
34E02E:  STRB            R4, [R3,#0x12]
34E030:  LDRB            R4, [R0,#0x13]
34E032:  STRB            R4, [R3,#0x13]
34E034:  LDRB            R4, [R0,#0x14]
34E036:  STRB            R4, [R3,#0x14]
34E038:  LDRB            R4, [R0,#0x15]
34E03A:  STRB            R4, [R3,#0x15]
34E03C:  LDRB            R4, [R0,#0x16]
34E03E:  STRB            R4, [R3,#0x16]
34E040:  LDRB            R4, [R0,#0x17]
34E042:  ADDS            R0, #0x18
34E044:  STR.W           R12, [R3,#0x18]
34E048:  STRB            R4, [R3,#0x17]
34E04A:  UXTH            R3, R1
34E04C:  LDRH.W          R4, [LR]; CTheScripts::NumberOfUsedObjects
34E050:  CMP             R3, R4
34E052:  BCC             loc_34DFD8
34E054:  POP             {R4,R6,R7,PC}
