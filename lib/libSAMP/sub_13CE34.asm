; =========================================================
; Game Engine Function: sub_13CE34
; Address            : 0x13CE34 - 0x13CE8A
; =========================================================

13CE34:  PUSH            {R4-R7,LR}
13CE36:  ADD             R7, SP, #0xC
13CE38:  PUSH.W          {R8}
13CE3C:  SUB             SP, SP, #0x18; float
13CE3E:  MOV             R5, R2
13CE40:  MOV             R8, R1
13CE42:  MOV             R4, R0
13CE44:  BL              sub_12BC78
13CE48:  LDR             R0, =(_ZTV6Button - 0x13CE52); `vtable for'Button ...
13CE4A:  MOVS            R1, #0
13CE4C:  STR             R1, [R4,#0x68]
13CE4E:  ADD             R0, PC; `vtable for'Button
13CE50:  ADDS            R0, #8
13CE52:  STR             R0, [R4]
13CE54:  MOVS            R0, #0x78 ; 'x'; unsigned int
13CE56:  BLX             j__Znwj; operator new(uint)
13CE5A:  VMOV.F32        Q8, #1.0
13CE5E:  ADD             R2, SP, #0x28+var_20; int
13CE60:  MOV             R6, R0
13CE62:  VMOV            S0, R5
13CE66:  VST1.64         {D16-D17}, [R2]
13CE6A:  MOV             R1, R8; int
13CE6C:  MOVS            R3, #0; int
13CE6E:  VSTR            S0, [SP,#0x28+var_28]
13CE72:  BL              sub_13D3DC
13CE76:  STR             R6, [R4,#0x54]
13CE78:  MOV             R0, R4
13CE7A:  MOV             R1, R6
13CE7C:  BL              sub_12BDF6
13CE80:  MOV             R0, R4
13CE82:  ADD             SP, SP, #0x18
13CE84:  POP.W           {R8}
13CE88:  POP             {R4-R7,PC}
