; =========================================================
; Game Engine Function: sub_18CE94
; Address            : 0x18CE94 - 0x18CEC0
; =========================================================

18CE94:  PUSH            {R4,R6,R7,LR}
18CE96:  ADD             R7, SP, #8
18CE98:  LDR             R0, =(dword_382758 - 0x18CE9E)
18CE9A:  ADD             R0, PC; dword_382758
18CE9C:  LDR             R1, [R0]
18CE9E:  CMP             R1, #1
18CEA0:  BLT             locret_18CEBE
18CEA2:  SUBS            R1, #1
18CEA4:  STR             R1, [R0]
18CEA6:  IT NE
18CEA8:  POPNE           {R4,R6,R7,PC}
18CEAA:  LDR             R4, =(dword_382754 - 0x18CEB0)
18CEAC:  ADD             R4, PC; dword_382754
18CEAE:  LDR             R0, [R4]
18CEB0:  CBZ             R0, loc_18CEBA
18CEB2:  BL              sub_18D042
18CEB6:  BLX             j__ZdlPv; operator delete(void *)
18CEBA:  MOVS            R0, #0
18CEBC:  STR             R0, [R4]
18CEBE:  POP             {R4,R6,R7,PC}
