; =========================================================
; Game Engine Function: sub_88010
; Address            : 0x88010 - 0x880CA
; =========================================================

88010:  PUSH            {R4,R6,R7,LR}
88012:  ADD             R7, SP, #8
88014:  MOV             R4, R0
88016:  ADDS            R0, #0xAC; int
88018:  MOV.W           R1, #0x300; n
8801C:  BLX             sub_10967C
88020:  ADR             R0, dword_880D0
88022:  MOVS            R2, #0
88024:  VLD1.64         {D16-D17}, [R0@128]
88028:  ADR             R0, dword_880E0
8802A:  MOVT            R2, #0x40E0
8802E:  MOV.W           R3, #0x41000000
88032:  VLD1.64         {D18-D19}, [R0@128]
88036:  ADR             R0, dword_880F0
88038:  MOVS            R1, #0
8803A:  MOV.W           R12, #0x3F800000
8803E:  VLD1.64         {D20-D21}, [R0@128]
88042:  ADR             R0, dword_88100
88044:  VLD1.64         {D22-D23}, [R0@128]
88048:  ADR             R0, dword_88110
8804A:  VLD1.64         {D24-D25}, [R0@128]
8804E:  ADR             R0, dword_88120
88050:  VLD1.64         {D26-D27}, [R0@128]
88054:  ADR             R0, dword_88130
88056:  VLD1.64         {D28-D29}, [R0@128]
8805A:  MOVS            R0, #0x3FA00000
88060:  STRD.W          R3, R2, [R4,#8]
88064:  ADD.W           R2, R4, #0x48 ; 'H'
88068:  VST1.32         {D28-D29}, [R2]!
8806C:  STRD.W          R1, R1, [R2]
88070:  ADD.W           R2, R4, #0x28 ; '('
88074:  STR.W           R0, [R4,#0xA8]
88078:  MOVW            R0, #0x101
8807C:  STRD.W          R12, R3, [R4]
88080:  MOVS            R3, #0
88082:  VST1.32         {D16-D17}, [R2]!
88086:  MOVT            R3, #0x4040
8808A:  STRH.W          R0, [R4,#0xA4]
8808E:  MOV.W           R0, #0x40800000
88092:  STRD.W          R0, R3, [R2]
88096:  ADD.W           R0, R4, #0x14
8809A:  VST1.32         {D18-D19}, [R0]!
8809E:  STR             R1, [R0]
880A0:  ADD.W           R0, R4, #0x60 ; '`'
880A4:  VST1.32         {D20-D21}, [R0]!
880A8:  VST1.32         {D22-D23}, [R0]!
880AC:  VST1.32         {D24-D25}, [R0]!
880B0:  VST1.32         {D26-D27}, [R0]!
880B4:  STR.W           R12, [R0]
880B8:  MOV             R0, R4
880BA:  STRD.W          R1, R1, [R4,#0x40]
880BE:  STR.W           R12, [R4,#0x10]
880C2:  BL              sub_9B5A0
880C6:  MOV             R0, R4
880C8:  POP             {R4,R6,R7,PC}
