; =========================================================
; Game Engine Function: sub_164F00
; Address            : 0x164F00 - 0x164FBA
; =========================================================

164F00:  PUSH            {R4,R6,R7,LR}
164F02:  ADD             R7, SP, #8
164F04:  MOV             R4, R0
164F06:  ADDS            R0, #0xAC; int
164F08:  MOV.W           R1, #0x300; n
164F0C:  BLX             sub_22178C
164F10:  ADR             R0, dword_164FC0
164F12:  MOVS            R2, #0
164F14:  VLD1.64         {D16-D17}, [R0]
164F18:  ADR             R0, dword_164FD0
164F1A:  MOVT            R2, #0x40E0
164F1E:  MOV.W           R3, #0x41000000
164F22:  VLD1.64         {D18-D19}, [R0]
164F26:  ADR             R0, dword_164FE0
164F28:  MOVS            R1, #0
164F2A:  MOV.W           R12, #0x3F800000
164F2E:  VLD1.64         {D20-D21}, [R0]
164F32:  ADR             R0, dword_164FF0
164F34:  VLD1.64         {D22-D23}, [R0]
164F38:  ADR             R0, dword_165000
164F3A:  VLD1.64         {D24-D25}, [R0]
164F3E:  ADR             R0, dword_165010
164F40:  VLD1.64         {D26-D27}, [R0]
164F44:  ADR             R0, dword_165020
164F46:  VLD1.64         {D28-D29}, [R0]
164F4A:  MOVS            R0, #0x3FA00000
164F50:  STRD.W          R3, R2, [R4,#8]
164F54:  ADD.W           R2, R4, #0x48 ; 'H'
164F58:  VST1.32         {D28-D29}, [R2]!
164F5C:  STRD.W          R1, R1, [R2]
164F60:  ADD.W           R2, R4, #0x28 ; '('
164F64:  STR.W           R0, [R4,#0xA8]
164F68:  MOVW            R0, #0x101
164F6C:  STRD.W          R12, R3, [R4]
164F70:  MOVS            R3, #0
164F72:  VST1.32         {D16-D17}, [R2]!
164F76:  MOVT            R3, #0x4040
164F7A:  STRH.W          R0, [R4,#0xA4]
164F7E:  MOV.W           R0, #0x40800000
164F82:  STRD.W          R0, R3, [R2]
164F86:  ADD.W           R0, R4, #0x14
164F8A:  VST1.32         {D18-D19}, [R0]!
164F8E:  STR             R1, [R0]
164F90:  ADD.W           R0, R4, #0x60 ; '`'
164F94:  VST1.32         {D20-D21}, [R0]!
164F98:  VST1.32         {D22-D23}, [R0]!
164F9C:  VST1.32         {D24-D25}, [R0]!
164FA0:  VST1.32         {D26-D27}, [R0]!
164FA4:  STR.W           R12, [R0]
164FA8:  MOV             R0, R4
164FAA:  STRD.W          R1, R1, [R4,#0x40]
164FAE:  STR.W           R12, [R4,#0x10]
164FB2:  BL              sub_172280
164FB6:  MOV             R0, R4
164FB8:  POP             {R4,R6,R7,PC}
