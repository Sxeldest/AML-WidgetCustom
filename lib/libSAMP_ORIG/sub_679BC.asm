; =========================================================
; Game Engine Function: sub_679BC
; Address            : 0x679BC - 0x67AA4
; =========================================================

679BC:  PUSH            {R4,R6,R7,LR}
679BE:  ADD             R7, SP, #8
679C0:  LDR             R4, =(unk_1176A0 - 0x679D0)
679C2:  VMOV.I32        Q8, #0
679C6:  MOVW            R12, #:lower16:dword_8C350
679CA:  MOVS            R0, #0
679CC:  ADD             R4, PC; unk_1176A0
679CE:  MOVT            R12, #:upper16:dword_8C350
679D2:  MOVS            R3, #0
679D4:  ADDS            R2, R4, R3
679D6:  ADD.W           R3, R3, #0x23C
679DA:  ADD.W           R1, R2, #8
679DE:  CMP             R3, R12
679E0:  VST1.32         {D16-D17}, [R1]!
679E4:  VST1.32         {D16-D17}, [R1]!
679E8:  STR             R0, [R1]
679EA:  ADD.W           R1, R2, #0x3C ; '<'
679EE:  VST1.32         {D16-D17}, [R1]!
679F2:  VST1.32         {D16-D17}, [R1]!
679F6:  STR             R0, [R1]
679F8:  ADD.W           R1, R2, #0x70 ; 'p'
679FC:  VST1.32         {D16-D17}, [R1]!
67A00:  VST1.32         {D16-D17}, [R1]!
67A04:  STR             R0, [R1]
67A06:  ADD.W           R1, R2, #0xA4
67A0A:  VST1.32         {D16-D17}, [R1]!
67A0E:  VST1.32         {D16-D17}, [R1]!
67A12:  STR             R0, [R1]
67A14:  ADD.W           R1, R2, #0xD8
67A18:  VST1.32         {D16-D17}, [R1]!
67A1C:  VST1.32         {D16-D17}, [R1]!
67A20:  STR             R0, [R1]
67A22:  ADD.W           R1, R2, #0x10C
67A26:  VST1.32         {D16-D17}, [R1]!
67A2A:  VST1.32         {D16-D17}, [R1]!
67A2E:  STR             R0, [R1]
67A30:  ADD.W           R1, R2, #0x140
67A34:  VST1.32         {D16-D17}, [R1]!
67A38:  VST1.32         {D16-D17}, [R1]!
67A3C:  STR             R0, [R1]
67A3E:  ADD.W           R1, R2, #0x174
67A42:  VST1.32         {D16-D17}, [R1]!
67A46:  VST1.32         {D16-D17}, [R1]!
67A4A:  STR             R0, [R1]
67A4C:  ADD.W           R1, R2, #0x1A8
67A50:  VST1.32         {D16-D17}, [R1]!
67A54:  VST1.32         {D16-D17}, [R1]!
67A58:  STR             R0, [R1]
67A5A:  ADD.W           R1, R2, #0x1DC
67A5E:  VST1.32         {D16-D17}, [R1]!
67A62:  VST1.32         {D16-D17}, [R1]!
67A66:  STR             R0, [R1]
67A68:  BNE             loc_679D4
67A6A:  LDR             R1, =(unk_1A3A88 - 0x67A7A)
67A6C:  VMOV.I32        Q8, #0
67A70:  LDR             R2, =(dword_1A3A04 - 0x67A7E)
67A72:  MOVS            R4, #0
67A74:  LDR             R3, =(dword_1A3A14 - 0x67A80)
67A76:  ADD             R1, PC; unk_1A3A88
67A78:  LDR             R0, =(dword_1A3A24 - 0x67A86)
67A7A:  ADD             R2, PC; dword_1A3A04
67A7C:  ADD             R3, PC; dword_1A3A14
67A7E:  MOVT            R4, #0x4220
67A82:  ADD             R0, PC; dword_1A3A24
67A84:  VST1.64         {D16-D17}, [R1]
67A88:  MOVS            R1, #0
67A8A:  STRB            R1, [R2,#(byte_1A3A10 - 0x1A3A04)]
67A8C:  STRD.W          R1, R1, [R2]
67A90:  STR             R4, [R2,#(dword_1A3A0C - 0x1A3A04)]
67A92:  STRB            R1, [R3,#(byte_1A3A20 - 0x1A3A14)]
67A94:  STRD.W          R1, R1, [R3]
67A98:  STR             R4, [R3,#(dword_1A3A1C - 0x1A3A14)]
67A9A:  STRB            R1, [R0,#(byte_1A3A30 - 0x1A3A24)]
67A9C:  STRD.W          R1, R1, [R0]
67AA0:  STR             R4, [R0,#(dword_1A3A2C - 0x1A3A24)]
67AA2:  POP             {R4,R6,R7,PC}
