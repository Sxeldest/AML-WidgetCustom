; =========================================================
; Game Engine Function: _Z21_rpWorldRegisterWorldP7RpWorldj
; Address            : 0x21CA5C - 0x21CAA6
; =========================================================

21CA5C:  PUSH            {R4,R5,R7,LR}
21CA5E:  ADD             R7, SP, #8
21CA60:  MOV             R4, R0
21CA62:  LDR             R0, =(RwEngineInstance_ptr - 0x21CA6C)
21CA64:  MOV             R5, R1
21CA66:  LDR             R1, =(dword_6BD630 - 0x21CA6E)
21CA68:  ADD             R0, PC; RwEngineInstance_ptr
21CA6A:  ADD             R1, PC; dword_6BD630
21CA6C:  LDR             R0, [R0]; RwEngineInstance
21CA6E:  LDR             R1, [R1]
21CA70:  LDR             R2, [R0]
21CA72:  LDR             R0, [R2,R1]
21CA74:  LDR.W           R1, [R2,#0x13C]
21CA78:  BLX             R1
21CA7A:  CMP             R0, #0
21CA7C:  IT EQ
21CA7E:  POPEQ           {R4,R5,R7,PC}
21CA80:  LDR             R1, =(RwEngineInstance_ptr - 0x21CA88)
21CA82:  LDR             R2, =(dword_6BD630 - 0x21CA8C)
21CA84:  ADD             R1, PC; RwEngineInstance_ptr
21CA86:  STR             R5, [R0,#4]
21CA88:  ADD             R2, PC; dword_6BD630
21CA8A:  STR             R4, [R0]
21CA8C:  LDR             R1, [R1]; RwEngineInstance
21CA8E:  LDR             R2, [R2]
21CA90:  LDR             R1, [R1]
21CA92:  ADD             R1, R2
21CA94:  LDR.W           R2, [R1,#4]!
21CA98:  STRD.W          R2, R1, [R0,#8]
21CA9C:  ADDS            R0, #8
21CA9E:  LDR             R2, [R1]
21CAA0:  STR             R0, [R2,#4]
21CAA2:  STR             R0, [R1]
21CAA4:  POP             {R4,R5,R7,PC}
