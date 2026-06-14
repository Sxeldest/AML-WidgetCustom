; =========================================================
; Game Engine Function: sub_135EC8
; Address            : 0x135EC8 - 0x135F44
; =========================================================

135EC8:  PUSH            {R7,LR}
135ECA:  MOV             R7, SP
135ECC:  SUB             SP, SP, #8
135ECE:  LDR             R0, [R0,#4]
135ED0:  VMOV.F32        Q8, #1.0
135ED4:  MOVS            R3, #0
135ED6:  LDR             R1, [R0,#0x6C]
135ED8:  LDR             R2, [R1,#0x54]
135EDA:  STRB.W          R3, [R1,#0x70]
135EDE:  ADD.W           R1, R2, #0x60 ; '`'
135EE2:  VST1.32         {D16-D17}, [R1]
135EE6:  LDR             R1, [R0,#0x70]
135EE8:  LDR             R2, [R1,#0x54]
135EEA:  STRB.W          R3, [R1,#0x70]
135EEE:  ADR             R3, dword_135F48
135EF0:  ADD.W           R1, R2, #0x60 ; '`'
135EF4:  VST1.32         {D16-D17}, [R1]
135EF8:  LDR             R1, [R0,#0x74]
135EFA:  VLD1.64         {D16-D17}, [R3]
135EFE:  MOVS            R3, #1
135F00:  LDR             R2, [R1,#0x54]
135F02:  STRB.W          R3, [R1,#0x70]
135F06:  ADD.W           R1, R2, #0x60 ; '`'
135F0A:  VST1.32         {D16-D17}, [R1]
135F0E:  LDR             R0, [R0,#8]; lpsrc
135F10:  CBZ             R0, loc_135F40
135F12:  LDR             R1, =(off_234BA8 - 0x135F1C)
135F14:  MOVS            R3, #0; s2d
135F16:  LDR             R2, =(_ZTI17ObjectEditorPanel - 0x135F1E); `typeinfo for'ObjectEditorPanel ...
135F18:  ADD             R1, PC; off_234BA8
135F1A:  ADD             R2, PC; lpdtype
135F1C:  LDR             R1, [R1]; lpstype
135F1E:  BLX             j___dynamic_cast
135F22:  CBZ             R0, loc_135F40
135F24:  LDR             R3, [R0,#0x54]
135F26:  MOVW            R1, #0xCCCD
135F2A:  LDR             R0, [R0,#0x64]
135F2C:  MOVT            R1, #0x3DCC
135F30:  STR             R1, [SP,#0x10+var_10]
135F32:  ADD.W           R1, R3, #0x18
135F36:  ADD.W           R2, R3, #0x1C
135F3A:  ADDS            R3, #0x20 ; ' '
135F3C:  BL              sub_1357D0
135F40:  ADD             SP, SP, #8
135F42:  POP             {R7,PC}
