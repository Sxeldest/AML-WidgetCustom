; =========================================================
; Game Engine Function: sub_141C0C
; Address            : 0x141C0C - 0x141CDC
; =========================================================

141C0C:  PUSH            {R4-R7,LR}
141C0E:  ADD             R7, SP, #0xC
141C10:  PUSH.W          {R11}
141C14:  MOV             R4, R0
141C16:  MOVS            R0, #0x24 ; '$'; unsigned int
141C18:  BLX             j__Znwj; operator new(uint)
141C1C:  STR.W           R0, [R4,#0x3B0]
141C20:  MOV.W           R0, #0x17C0; unsigned int
141C24:  BLX             j__Znwj; operator new(uint)
141C28:  MOV             R6, R0
141C2A:  BL              sub_148C3C
141C2E:  LDR.W           R0, [R4,#0x3B0]
141C32:  STR             R6, [R0]
141C34:  MOVW            R0, #0xEA6C; unsigned int
141C38:  BLX             j__Znwj; operator new(uint)
141C3C:  MOV             R6, R0
141C3E:  BL              sub_14FE50
141C42:  LDR.W           R0, [R4,#0x3B0]
141C46:  STR             R6, [R0,#4]
141C48:  MOV.W           R0, #0x1400; unsigned int
141C4C:  BLX             j__Znwj; operator new(uint)
141C50:  MOV             R6, R0
141C52:  BL              sub_13E728
141C56:  LDR.W           R0, [R4,#0x3B0]
141C5A:  STR             R6, [R0,#8]
141C5C:  MOV             R0, #0x23008; unsigned int
141C64:  BLX             j__Znwj; operator new(uint)
141C68:  MOV             R6, R0
141C6A:  BL              sub_1487C6
141C6E:  LDR.W           R0, [R4,#0x3B0]
141C72:  STR             R6, [R0,#0xC]
141C74:  MOVW            R0, #0x138C; unsigned int
141C78:  BLX             j__Znwj; operator new(uint)
141C7C:  MOV             R6, R0
141C7E:  BL              sub_1484C8
141C82:  LDR.W           R0, [R4,#0x3B0]
141C86:  STR             R6, [R0,#0x10]
141C88:  MOV.W           R0, #0x14800; unsigned int
141C8C:  BLX             j__Znwj; operator new(uint)
141C90:  MOV             R6, R0
141C92:  BL              sub_14F738
141C96:  LDR.W           R0, [R4,#0x3B0]
141C9A:  STR             R6, [R0,#0x14]
141C9C:  MOVW            R0, #0x2410; unsigned int
141CA0:  BLX             j__Znwj; operator new(uint)
141CA4:  MOV             R6, R0
141CA6:  BL              sub_14F138
141CAA:  LDR.W           R0, [R4,#0x3B0]
141CAE:  STR             R6, [R0,#0x18]
141CB0:  MOVW            R0, #0x2328; unsigned int
141CB4:  BLX             j__Znwj; operator new(uint)
141CB8:  MOV             R6, R0
141CBA:  BL              sub_13E590
141CBE:  LDR.W           R0, [R4,#0x3B0]
141CC2:  STR             R6, [R0,#0x1C]
141CC4:  MOVS            R0, #1; unsigned int
141CC6:  BLX             j__Znwj; operator new(uint)
141CCA:  MOV             R6, R0
141CCC:  BL              nullsub_11
141CD0:  LDR.W           R0, [R4,#0x3B0]
141CD4:  STR             R6, [R0,#0x20]
141CD6:  POP.W           {R11}
141CDA:  POP             {R4-R7,PC}
