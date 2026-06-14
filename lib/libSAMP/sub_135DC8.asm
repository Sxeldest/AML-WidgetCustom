; =========================================================
; Game Engine Function: sub_135DC8
; Address            : 0x135DC8 - 0x135E44
; =========================================================

135DC8:  PUSH            {R7,LR}
135DCA:  MOV             R7, SP
135DCC:  SUB             SP, SP, #8
135DCE:  LDR             R0, [R0,#4]
135DD0:  VMOV.F32        Q8, #1.0
135DD4:  MOV.W           R12, #0
135DD8:  ADR             R3, dword_135E48
135DDA:  VLD1.64         {D18-D19}, [R3]
135DDE:  MOVS            R3, #1
135DE0:  LDR             R1, [R0,#0x6C]
135DE2:  LDR             R2, [R1,#0x54]
135DE4:  STRB.W          R12, [R1,#0x70]
135DE8:  ADD.W           R1, R2, #0x60 ; '`'
135DEC:  VST1.32         {D16-D17}, [R1]
135DF0:  LDR             R1, [R0,#0x70]
135DF2:  LDR             R2, [R1,#0x54]
135DF4:  STRB.W          R3, [R1,#0x70]
135DF8:  ADD.W           R1, R2, #0x60 ; '`'
135DFC:  VST1.32         {D18-D19}, [R1]
135E00:  LDR             R1, [R0,#0x74]
135E02:  LDR             R2, [R1,#0x54]
135E04:  STRB.W          R12, [R1,#0x70]
135E08:  ADD.W           R1, R2, #0x60 ; '`'
135E0C:  VST1.32         {D16-D17}, [R1]
135E10:  LDR             R0, [R0,#8]; lpsrc
135E12:  CBZ             R0, loc_135E40
135E14:  LDR             R1, =(off_234BA8 - 0x135E1E)
135E16:  MOVS            R3, #0; s2d
135E18:  LDR             R2, =(_ZTI17ObjectEditorPanel - 0x135E20); `typeinfo for'ObjectEditorPanel ...
135E1A:  ADD             R1, PC; off_234BA8
135E1C:  ADD             R2, PC; lpdtype
135E1E:  LDR             R1, [R1]; lpstype
135E20:  BLX             j___dynamic_cast
135E24:  CBZ             R0, loc_135E40
135E26:  LDR             R3, [R0,#0x54]
135E28:  MOVS            R1, #0
135E2A:  LDR             R0, [R0,#0x64]
135E2C:  MOVT            R1, #0x4120
135E30:  STR             R1, [SP,#0x10+var_10]
135E32:  ADD.W           R1, R3, #0xC
135E36:  ADD.W           R2, R3, #0x10
135E3A:  ADDS            R3, #0x14
135E3C:  BL              sub_1357D0
135E40:  ADD             SP, SP, #8
135E42:  POP             {R7,PC}
