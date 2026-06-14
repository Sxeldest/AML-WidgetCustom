; =========================================================
; Game Engine Function: sub_8AA58
; Address            : 0x8AA58 - 0x8AA9A
; =========================================================

8AA58:  PUSH            {R4,R5,R7,LR}
8AA5A:  ADD             R7, SP, #8
8AA5C:  VMOV.I32        Q8, #0
8AA60:  MOV             R4, R0
8AA62:  MOVS            R0, #0
8AA64:  ADD.W           R5, R4, #0x40 ; '@'
8AA68:  STRD.W          R1, R0, [R4,#0x28]
8AA6C:  MOV             R1, R4
8AA6E:  VST1.32         {D16-D17}, [R1]!
8AA72:  MOVS            R2, #1
8AA74:  VST1.32         {D16-D17}, [R1]!
8AA78:  STR             R0, [R1]
8AA7A:  MOV             R1, R5
8AA7C:  VST1.32         {D16-D17}, [R1]!
8AA80:  VST1.32         {D16-D17}, [R1]!
8AA84:  STRD.W          R0, R2, [R4,#0x64]
8AA88:  STRD.W          R0, R0, [R4,#0x6C]
8AA8C:  STR             R0, [R4,#0x74]
8AA8E:  STR             R0, [R1]
8AA90:  MOV             R0, R4
8AA92:  BL              sub_9BAD4
8AA96:  MOV             R0, R4
8AA98:  POP             {R4,R5,R7,PC}
