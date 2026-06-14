; =========================================================
; Game Engine Function: alcMakeContextCurrent
; Address            : 0x24BE4C - 0x24BEBE
; =========================================================

24BE4C:  PUSH            {R4,R6,R7,LR}
24BE4E:  ADD             R7, SP, #8
24BE50:  CBZ             R0, loc_24BE76
24BE52:  BL              loc_24BED4
24BE56:  CBNZ            R0, loc_24BE78
24BE58:  LDR             R0, =(byte_6D684C - 0x24BE5E)
24BE5A:  ADD             R0, PC; byte_6D684C
24BE5C:  LDRB            R0, [R0]
24BE5E:  CMP             R0, #0
24BE60:  ITT NE
24BE62:  MOVNE           R0, #5; sig
24BE64:  BLXNE           raise
24BE68:  LDR             R0, =(dword_6D633C - 0x24BE72)
24BE6A:  MOVW            R1, #0xA002
24BE6E:  ADD             R0, PC; dword_6D633C
24BE70:  STR             R1, [R0]
24BE72:  MOVS            R0, #0
24BE74:  POP             {R4,R6,R7,PC}
24BE76:  MOVS            R0, #0
24BE78:  LDR             R2, =(dword_6D6338 - 0x24BE82)
24BE7A:  DMB.W           ISH
24BE7E:  ADD             R2, PC; dword_6D6338
24BE80:  LDREX.W         R1, [R2]
24BE84:  STREX.W         R3, R0, [R2]
24BE88:  CMP             R3, #0
24BE8A:  BNE             loc_24BE80
24BE8C:  CMP             R1, #0
24BE8E:  DMB.W           ISH
24BE92:  ITT NE
24BE94:  MOVNE           R0, R1
24BE96:  BLXNE           j_ALCcontext_DecRef
24BE9A:  LDR             R0, =(dword_6D6290 - 0x24BEA0)
24BE9C:  ADD             R0, PC; dword_6D6290
24BE9E:  LDR             R0, [R0]; key
24BEA0:  BLX             pthread_getspecific
24BEA4:  MOV             R4, R0
24BEA6:  CBZ             R4, loc_24BEBA
24BEA8:  LDR             R0, =(dword_6D6290 - 0x24BEB0)
24BEAA:  MOVS            R1, #0; pointer
24BEAC:  ADD             R0, PC; dword_6D6290
24BEAE:  LDR             R0, [R0]; key
24BEB0:  BLX             pthread_setspecific
24BEB4:  MOV             R0, R4
24BEB6:  BLX             j_ALCcontext_DecRef
24BEBA:  MOVS            R0, #1
24BEBC:  POP             {R4,R6,R7,PC}
