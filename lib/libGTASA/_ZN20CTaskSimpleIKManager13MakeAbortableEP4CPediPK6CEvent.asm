; =========================================================
; Game Engine Function: _ZN20CTaskSimpleIKManager13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4EFC3C - 0x4EFC8E
; =========================================================

4EFC3C:  PUSH            {R4,R6,R7,LR}
4EFC3E:  ADD             R7, SP, #8
4EFC40:  MOV             R4, R0
4EFC42:  CMP             R2, #2
4EFC44:  BNE             loc_4EFC82
4EFC46:  LDR             R0, [R4,#8]
4EFC48:  CBZ             R0, loc_4EFC54
4EFC4A:  LDR             R1, [R0]
4EFC4C:  LDR             R1, [R1,#4]
4EFC4E:  BLX             R1
4EFC50:  MOVS            R0, #0
4EFC52:  STR             R0, [R4,#8]
4EFC54:  LDR             R0, [R4,#0xC]
4EFC56:  CBZ             R0, loc_4EFC62
4EFC58:  LDR             R1, [R0]
4EFC5A:  LDR             R1, [R1,#4]
4EFC5C:  BLX             R1
4EFC5E:  MOVS            R0, #0
4EFC60:  STR             R0, [R4,#0xC]
4EFC62:  LDR             R0, [R4,#0x10]
4EFC64:  CBZ             R0, loc_4EFC70
4EFC66:  LDR             R1, [R0]
4EFC68:  LDR             R1, [R1,#4]
4EFC6A:  BLX             R1
4EFC6C:  MOVS            R0, #0
4EFC6E:  STR             R0, [R4,#0x10]
4EFC70:  LDR             R0, [R4,#0x14]
4EFC72:  CBZ             R0, loc_4EFC8A
4EFC74:  LDR             R1, [R0]
4EFC76:  LDR             R1, [R1,#4]
4EFC78:  BLX             R1
4EFC7A:  MOVS            R0, #0
4EFC7C:  STR             R0, [R4,#0x14]
4EFC7E:  MOVS            R0, #1
4EFC80:  POP             {R4,R6,R7,PC}
4EFC82:  MOVS            R0, #1
4EFC84:  STRB            R0, [R4,#0x18]
4EFC86:  MOVS            R0, #0
4EFC88:  POP             {R4,R6,R7,PC}
4EFC8A:  MOVS            R0, #1
4EFC8C:  POP             {R4,R6,R7,PC}
