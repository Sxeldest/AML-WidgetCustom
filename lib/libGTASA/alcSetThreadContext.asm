; =========================================================
; Game Engine Function: alcSetThreadContext
; Address            : 0x24BF58 - 0x24BFB4
; =========================================================

24BF58:  PUSH            {R4-R7,LR}
24BF5A:  ADD             R7, SP, #0xC
24BF5C:  PUSH.W          {R11}
24BF60:  CBZ             R0, loc_24BF8C
24BF62:  BL              loc_24BED4
24BF66:  MOV             R4, R0
24BF68:  CBNZ            R4, loc_24BF8E
24BF6A:  LDR             R0, =(byte_6D684C - 0x24BF70)
24BF6C:  ADD             R0, PC; byte_6D684C
24BF6E:  LDRB            R0, [R0]
24BF70:  CMP             R0, #0
24BF72:  ITT NE
24BF74:  MOVNE           R0, #5; sig
24BF76:  BLXNE           raise
24BF7A:  LDR             R0, =(dword_6D633C - 0x24BF84)
24BF7C:  MOVW            R1, #0xA002
24BF80:  ADD             R0, PC; dword_6D633C
24BF82:  STR             R1, [R0]
24BF84:  MOVS            R0, #0
24BF86:  POP.W           {R11}
24BF8A:  POP             {R4-R7,PC}
24BF8C:  MOVS            R4, #0
24BF8E:  LDR             R6, =(dword_6D6290 - 0x24BF94)
24BF90:  ADD             R6, PC; dword_6D6290
24BF92:  LDR             R0, [R6]; key
24BF94:  BLX             pthread_getspecific
24BF98:  MOV             R5, R0
24BF9A:  LDR             R0, [R6]; key
24BF9C:  MOV             R1, R4; pointer
24BF9E:  BLX             pthread_setspecific
24BFA2:  CMP             R5, #0
24BFA4:  ITT NE
24BFA6:  MOVNE           R0, R5
24BFA8:  BLXNE           j_ALCcontext_DecRef
24BFAC:  MOVS            R0, #1
24BFAE:  POP.W           {R11}
24BFB2:  POP             {R4-R7,PC}
