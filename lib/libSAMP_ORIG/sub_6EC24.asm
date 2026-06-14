; =========================================================
; Game Engine Function: sub_6EC24
; Address            : 0x6EC24 - 0x6EC98
; =========================================================

6EC24:  PUSH            {R4-R7,LR}
6EC26:  ADD             R7, SP, #0xC
6EC28:  PUSH.W          {R8,R9,R11}
6EC2C:  VMOV.I32        Q8, #0
6EC30:  MOV             R4, R0
6EC32:  MOVS            R0, #0
6EC34:  MOV             R5, R4
6EC36:  STRD.W          R0, R0, [R4,#0x30]
6EC3A:  STR             R0, [R4,#0x14]
6EC3C:  ADD.W           R0, R4, #0x1C
6EC40:  VST1.32         {D16-D17}, [R0]!
6EC44:  STR             R2, [R0]
6EC46:  MOV             R0, R4
6EC48:  VST1.64         {D16-D17}, [R0]!
6EC4C:  STR.W           R3, [R5,#0x18]!
6EC50:  STR             R1, [R0]
6EC52:  CBNZ            R1, loc_6EC90
6EC54:  MOVS            R0, #0xC; unsigned int
6EC56:  BLX             j__Znwj; operator new(uint)
6EC5A:  MOV             R6, R0
6EC5C:  MOV.W           R0, #0x10000
6EC60:  STR             R0, [R6]
6EC62:  MOVS            R0, #1; unsigned int
6EC64:  MOV.W           R9, #1
6EC68:  BLX             j__Znwj; operator new(uint)
6EC6C:  MOV             R8, R0
6EC6E:  STR             R0, [R6,#4]
6EC70:  MOVS            R0, #0x20 ; ' '; size
6EC72:  BLX             malloc
6EC76:  MOVS            R1, #0
6EC78:  MOV             R2, R0
6EC7A:  STR.W           R1, [R2,#0x10]!
6EC7E:  STR             R0, [R6,#8]
6EC80:  STRD.W          R1, R1, [R0,#0x14]
6EC84:  STRB.W          R9, [R0,#0xC]
6EC88:  STM.W           R0, {R2,R8,R9}
6EC8C:  STRD.W          R6, R6, [R4,#0x10]
6EC90:  MOV             R0, R4
6EC92:  POP.W           {R8,R9,R11}
6EC96:  POP             {R4-R7,PC}
