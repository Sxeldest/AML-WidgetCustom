; =========================================================
; Game Engine Function: sub_17DF64
; Address            : 0x17DF64 - 0x17DFD4
; =========================================================

17DF64:  PUSH            {R4-R7,LR}
17DF66:  ADD             R7, SP, #0xC
17DF68:  PUSH.W          {R11}
17DF6C:  LDR             R6, [R0]
17DF6E:  MOV             R4, R0
17DF70:  MOV             R5, R1
17DF72:  MOVS            R0, #0xC; unsigned int
17DF74:  CMP             R6, #1
17DF76:  BEQ             loc_17DF90
17DF78:  CBNZ            R6, loc_17DFAC
17DF7A:  BLX             j__Znwj; operator new(uint)
17DF7E:  STR             R0, [R4,#4]
17DF80:  MOVS            R2, #1
17DF82:  LDR             R1, [R5]
17DF84:  STR             R2, [R4]
17DF86:  STR             R0, [R4,#8]
17DF88:  STRD.W          R1, R0, [R0]
17DF8C:  STR             R0, [R0,#8]
17DF8E:  B               loc_17DFCE
17DF90:  BLX             j__Znwj; operator new(uint)
17DF94:  LDR             R1, [R4,#4]
17DF96:  MOVS            R3, #2
17DF98:  STR             R0, [R4,#8]
17DF9A:  STRD.W          R0, R0, [R1,#4]
17DF9E:  LDR             R2, [R5]
17DFA0:  STRD.W          R3, R0, [R4]
17DFA4:  STRD.W          R2, R1, [R0]
17DFA8:  STR             R1, [R0,#8]
17DFAA:  B               loc_17DFCE
17DFAC:  BLX             j__Znwj; operator new(uint)
17DFB0:  LDRD.W          R1, R2, [R4,#4]
17DFB4:  LDR             R3, [R2,#4]
17DFB6:  LDR             R5, [R5]
17DFB8:  CMP             R2, R1
17DFBA:  STR             R3, [R0,#4]
17DFBC:  STR             R0, [R3,#8]
17DFBE:  STR             R5, [R0]
17DFC0:  STR             R0, [R2,#4]
17DFC2:  STR             R2, [R0,#8]
17DFC4:  IT EQ
17DFC6:  STRDEQ.W        R0, R0, [R4,#4]
17DFCA:  ADDS            R0, R6, #1
17DFCC:  STR             R0, [R4]
17DFCE:  POP.W           {R11}
17DFD2:  POP             {R4-R7,PC}
