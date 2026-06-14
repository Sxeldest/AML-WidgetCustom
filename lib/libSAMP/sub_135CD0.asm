; =========================================================
; Game Engine Function: sub_135CD0
; Address            : 0x135CD0 - 0x135D48
; =========================================================

135CD0:  PUSH            {R7,LR}
135CD2:  MOV             R7, SP
135CD4:  SUB             SP, SP, #8
135CD6:  LDR             R0, [R0,#4]
135CD8:  ADR             R3, dword_135D48
135CDA:  VLD1.64         {D16-D17}, [R3]
135CDE:  MOVS            R3, #1
135CE0:  LDR             R1, [R0,#0x6C]
135CE2:  LDR             R2, [R1,#0x54]
135CE4:  STRB.W          R3, [R1,#0x70]
135CE8:  MOVS            R3, #0
135CEA:  ADD.W           R1, R2, #0x60 ; '`'
135CEE:  VST1.32         {D16-D17}, [R1]
135CF2:  VMOV.F32        Q8, #1.0
135CF6:  LDR             R1, [R0,#0x70]
135CF8:  LDR             R2, [R1,#0x54]
135CFA:  STRB.W          R3, [R1,#0x70]
135CFE:  ADD.W           R1, R2, #0x60 ; '`'
135D02:  VST1.32         {D16-D17}, [R1]
135D06:  LDR             R1, [R0,#0x74]
135D08:  LDR             R2, [R1,#0x54]
135D0A:  STRB.W          R3, [R1,#0x70]
135D0E:  ADD.W           R1, R2, #0x60 ; '`'
135D12:  VST1.32         {D16-D17}, [R1]
135D16:  LDR             R0, [R0,#8]; lpsrc
135D18:  CBZ             R0, loc_135D44
135D1A:  LDR             R1, =(off_234BA8 - 0x135D24)
135D1C:  MOVS            R3, #0; s2d
135D1E:  LDR             R2, =(_ZTI17ObjectEditorPanel - 0x135D26); `typeinfo for'ObjectEditorPanel ...
135D20:  ADD             R1, PC; off_234BA8
135D22:  ADD             R2, PC; lpdtype
135D24:  LDR             R1, [R1]; lpstype
135D26:  BLX             j___dynamic_cast
135D2A:  CBZ             R0, loc_135D44
135D2C:  LDR             R1, [R0,#0x54]
135D2E:  MOVW            R2, #0xCCCD
135D32:  LDR             R0, [R0,#0x64]
135D34:  MOVT            R2, #0x3DCC
135D38:  STR             R2, [SP,#0x10+var_10]
135D3A:  ADDS            R2, R1, #4
135D3C:  ADD.W           R3, R1, #8
135D40:  BL              sub_1357D0
135D44:  ADD             SP, SP, #8
135D46:  POP             {R7,PC}
