; =========================================================
; Game Engine Function: sub_10DF10
; Address            : 0x10DF10 - 0x10DFB6
; =========================================================

10DF10:  PUSH            {R4,R5,R7,LR}
10DF12:  ADD             R7, SP, #8
10DF14:  MOV             R4, R0
10DF16:  LDR             R0, =(byte_263280 - 0x10DF1C)
10DF18:  ADD             R0, PC; byte_263280
10DF1A:  LDRB            R0, [R0]
10DF1C:  DMB.W           ISH
10DF20:  LDR             R5, =(dword_26327C - 0x10DF26)
10DF22:  ADD             R5, PC; dword_26327C
10DF24:  LSLS            R0, R0, #0x1F
10DF26:  BEQ             loc_10DF8C
10DF28:  LDR             R0, [R5]
10DF2A:  LDR             R1, [R4,#0xC]
10DF2C:  LDR             R2, [R0]
10DF2E:  CMP             R2, R1
10DF30:  IT EQ
10DF32:  POPEQ           {R4,R5,R7,PC}
10DF34:  LDR.W           R1, [R4,#4]!
10DF38:  STR             R2, [R4,#8]
10DF3A:  CBZ             R1, locret_10DF60
10DF3C:  LDR             R3, [R0]
10DF3E:  MOV             R0, R4
10DF40:  LDR             R2, [R1,#0x10]
10DF42:  CMP             R2, R3
10DF44:  MOV             R2, R1
10DF46:  IT LT
10DF48:  ADDLT           R2, #4
10DF4A:  LDR             R2, [R2]
10DF4C:  IT GE
10DF4E:  MOVGE           R0, R1
10DF50:  CMP             R2, #0
10DF52:  MOV             R1, R2
10DF54:  BNE             loc_10DF40
10DF56:  CMP             R0, R4
10DF58:  BEQ             locret_10DF60
10DF5A:  LDR             R0, [R0,#0x10]
10DF5C:  CMP             R3, R0
10DF5E:  BGE             loc_10DF62
10DF60:  POP             {R4,R5,R7,PC}
10DF62:  LDR             R1, =(aAxl - 0x10DF6C); "AXL" ...
10DF64:  MOVS            R0, #3; prio
10DF66:  LDR             R2, =(aSwitchWaterFor - 0x10DF6E); "Switch water for interior %d" ...
10DF68:  ADD             R1, PC; "AXL"
10DF6A:  ADD             R2, PC; "Switch water for interior %d"
10DF6C:  BLX             __android_log_print
10DF70:  BL              sub_10D85C
10DF74:  LDR             R0, =(off_23494C - 0x10DF82)
10DF76:  MOV             R1, #0x5932B9
10DF7E:  ADD             R0, PC; off_23494C
10DF80:  LDR             R0, [R0]; dword_23DF24
10DF82:  LDR             R0, [R0]
10DF84:  ADD             R0, R1
10DF86:  POP.W           {R4,R5,R7,LR}
10DF8A:  BX              R0
10DF8C:  LDR             R0, =(byte_263280 - 0x10DF92)
10DF8E:  ADD             R0, PC; byte_263280 ; __guard *
10DF90:  BLX             j___cxa_guard_acquire
10DF94:  CMP             R0, #0
10DF96:  BEQ             loc_10DF28
10DF98:  LDR             R0, =(off_23494C - 0x10DFA6)
10DF9A:  MOV             R2, #0x95957C
10DFA2:  ADD             R0, PC; off_23494C
10DFA4:  LDR             R1, [R0]; dword_23DF24
10DFA6:  LDR             R0, =(byte_263280 - 0x10DFAE)
10DFA8:  LDR             R1, [R1]
10DFAA:  ADD             R0, PC; byte_263280 ; __guard *
10DFAC:  ADD             R1, R2
10DFAE:  STR             R1, [R5]
10DFB0:  BLX             j___cxa_guard_release
10DFB4:  B               loc_10DF28
