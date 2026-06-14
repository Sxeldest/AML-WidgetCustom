; =========================================================
; Game Engine Function: ReverbCreate
; Address            : 0x23EB54 - 0x23EC8E
; =========================================================

23EB54:  PUSH            {R4,R6,R7,LR}
23EB56:  ADD             R7, SP, #8
23EB58:  MOV             R0, #0x101E0; byte_count
23EB60:  BLX             malloc
23EB64:  MOVS            R1, #0
23EB66:  CMP             R0, #0
23EB68:  BEQ.W           loc_23EC8A
23EB6C:  LDR.W           R12, =(sub_251810+1 - 0x23EB80)
23EB70:  MOVS            R4, #1
23EB72:  LDR.W           LR, =(sub_252648+1 - 0x23EB84)
23EB76:  VMOV.I32        Q8, #0
23EB7A:  LDR             R2, =(sub_251E8C+1 - 0x23EB86)
23EB7C:  ADD             R12, PC; sub_251810
23EB7E:  LDR             R3, =(sub_2517F4+1 - 0x23EB8E)
23EB80:  ADD             LR, PC; sub_252648
23EB82:  ADD             R2, PC; sub_251E8C
23EB84:  STR             R4, [R0,#0x30]
23EB86:  STRD.W          R1, R1, [R0,#0x64]
23EB8A:  ADD             R3, PC; sub_2517F4
23EB8C:  STRD.W          R1, R1, [R0,#0x54]
23EB90:  STRD.W          R1, R1, [R0,#0x6C]
23EB94:  STR             R1, [R0,#0x5C]
23EB96:  STRD.W          R3, R12, [R0]
23EB9A:  STRD.W          R2, LR, [R0,#8]
23EB9E:  ADD.W           R2, R0, #0x20 ; ' '
23EBA2:  VST1.32         {D16-D17}, [R2]
23EBA6:  ADD.W           R2, R0, #0x44 ; 'D'
23EBAA:  VST1.32         {D16-D17}, [R2]
23EBAE:  ADD.W           R2, R0, #0x10
23EBB2:  VST1.32         {D16-D17}, [R2]
23EBB6:  ADD.W           R2, R0, #0x34 ; '4'
23EBBA:  VST1.32         {D16-D17}, [R2]
23EBBE:  ADD.W           R2, R0, #0xC8
23EBC2:  STR             R1, [R0,#0x60]
23EBC4:  STRD.W          R1, R1, [R0,#0x74]
23EBC8:  STRD.W          R1, R1, [R0,#0x7C]
23EBCC:  STRD.W          R1, R1, [R0,#0x84]
23EBD0:  STRD.W          R1, R1, [R0,#0x8C]
23EBD4:  STR.W           R1, [R0,#0xEC]
23EBD8:  VST1.32         {D16-D17}, [R2]
23EBDC:  ADD.W           R2, R0, #0xB8
23EBE0:  VST1.32         {D16-D17}, [R2]
23EBE4:  ADD.W           R2, R0, #0x174
23EBE8:  STRD.W          R1, R1, [R0,#0xD8]
23EBEC:  STRD.W          R1, R1, [R0,#0xF0]
23EBF0:  STR.W           R1, [R0,#0x170]
23EBF4:  STRD.W          R1, R1, [R0,#0xE0]
23EBF8:  STRD.W          R1, R1, [R0,#0x160]
23EBFC:  STR.W           R1, [R0,#0xE8]
23EC00:  STRD.W          R1, R1, [R0,#0xF8]
23EC04:  STRD.W          R1, R1, [R0,#0x100]
23EC08:  STRD.W          R1, R1, [R0,#0x108]
23EC0C:  STRD.W          R1, R1, [R0,#0x110]
23EC10:  STRD.W          R1, R1, [R0,#0x118]
23EC14:  STRD.W          R1, R1, [R0,#0x120]
23EC18:  STRD.W          R1, R1, [R0,#0x128]
23EC1C:  STRD.W          R1, R1, [R0,#0x130]
23EC20:  STRD.W          R1, R1, [R0,#0x138]
23EC24:  STRD.W          R1, R1, [R0,#0x140]
23EC28:  STRD.W          R1, R1, [R0,#0x148]
23EC2C:  STRD.W          R1, R1, [R0,#0x150]
23EC30:  STRD.W          R1, R1, [R0,#0x158]
23EC34:  STRD.W          R1, R1, [R0,#0x168]
23EC38:  VST1.32         {D16-D17}, [R2]
23EC3C:  ADD.W           R2, R0, #0x184
23EC40:  STRD.W          R1, R1, [R0,#0x94]
23EC44:  STR.W           R1, [R0,#0x9C]
23EC48:  VST1.32         {D16-D17}, [R2]
23EC4C:  ADD.W           R2, R0, #0xA0
23EC50:  VST1.32         {D16-D17}, [R2]
23EC54:  STRD.W          R1, R1, [R0,#0xB0]
23EC58:  STRD.W          R1, R1, [R0,#0x194]
23EC5C:  STR.W           R1, [R0,#0x19C]
23EC60:  ADD.W           R1, R0, #0x1CC
23EC64:  VST1.32         {D16-D17}, [R1]
23EC68:  ADD.W           R1, R0, #0x1C0
23EC6C:  VST1.32         {D16-D17}, [R1]
23EC70:  ADD.W           R1, R0, #0x1B0
23EC74:  VST1.32         {D16-D17}, [R1]
23EC78:  ADD.W           R1, R0, #0x1A0
23EC7C:  VST1.32         {D16-D17}, [R1]
23EC80:  ADD.W           R1, R0, #0x17C
23EC84:  STR.W           R1, [R0,#0x1DC]
23EC88:  MOV             R1, R0
23EC8A:  MOV             R0, R1
23EC8C:  POP             {R4,R6,R7,PC}
