; =========================================================
; Game Engine Function: sub_166A58
; Address            : 0x166A58 - 0x166A9A
; =========================================================

166A58:  PUSH            {R4,R5,R7,LR}
166A5A:  ADD             R7, SP, #8
166A5C:  VMOV.I32        Q8, #0
166A60:  MOV             R4, R0
166A62:  MOVS            R0, #0
166A64:  ADD.W           R5, R4, #0x40 ; '@'
166A68:  STRD.W          R1, R0, [R4,#0x28]
166A6C:  MOV             R1, R4
166A6E:  VST1.32         {D16-D17}, [R1]!
166A72:  MOVS            R2, #1
166A74:  VST1.32         {D16-D17}, [R1]!
166A78:  STR             R0, [R1]
166A7A:  MOV             R1, R5
166A7C:  VST1.32         {D16-D17}, [R1]!
166A80:  VST1.32         {D16-D17}, [R1]!
166A84:  STRD.W          R0, R2, [R4,#0x64]
166A88:  STRD.W          R0, R0, [R4,#0x6C]
166A8C:  STR             R0, [R4,#0x74]
166A8E:  STR             R0, [R1]
166A90:  MOV             R0, R4
166A92:  BL              sub_172794
166A96:  MOV             R0, R4
166A98:  POP             {R4,R5,R7,PC}
