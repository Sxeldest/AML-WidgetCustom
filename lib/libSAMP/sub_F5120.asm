; =========================================================
; Game Engine Function: sub_F5120
; Address            : 0xF5120 - 0xF5160
; =========================================================

F5120:  PUSH            {R7,LR}
F5122:  MOV             R7, SP
F5124:  LDR             R0, =(byte_240080 - 0xF512A)
F5126:  ADD             R0, PC; byte_240080
F5128:  LDRB            R0, [R0]
F512A:  DMB.W           ISH
F512E:  LSLS            R0, R0, #0x1F
F5130:  IT NE
F5132:  POPNE           {R7,PC}
F5134:  LDR             R0, =(byte_240080 - 0xF513A)
F5136:  ADD             R0, PC; byte_240080 ; __guard *
F5138:  BLX             j___cxa_guard_acquire
F513C:  CBZ             R0, locret_F515E
F513E:  LDR             R1, =(unk_240068 - 0xF514A)
F5140:  MOVS            R3, #0
F5142:  LDR             R0, =(sub_F4B9C+1 - 0xF514C)
F5144:  LDR             R2, =(off_22A540 - 0xF514E)
F5146:  ADD             R1, PC; unk_240068 ; obj
F5148:  ADD             R0, PC; sub_F4B9C ; lpfunc
F514A:  ADD             R2, PC; off_22A540 ; lpdso_handle
F514C:  STR             R3, [R1,#(dword_240078 - 0x240068)]
F514E:  BLX             __cxa_atexit
F5152:  LDR             R0, =(byte_240080 - 0xF5158)
F5154:  ADD             R0, PC; byte_240080
F5156:  POP.W           {R7,LR}
F515A:  B.W             sub_2242B0
F515E:  POP             {R7,PC}
