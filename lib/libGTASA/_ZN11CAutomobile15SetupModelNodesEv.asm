; =========================================================
; Game Engine Function: _ZN11CAutomobile15SetupModelNodesEv
; Address            : 0x54EB86 - 0x54EBC8
; =========================================================

54EB86:  MOVS            R1, #0
54EB88:  VMOV.I32        Q8, #0
54EB8C:  STR.W           R1, [R0,#0x6BC]
54EB90:  ADDW            R1, R0, #0x6AC
54EB94:  LDR             R2, [R0,#0x18]
54EB96:  VST1.32         {D16-D17}, [R1]
54EB9A:  ADDW            R1, R0, #0x69C
54EB9E:  VST1.32         {D16-D17}, [R1]
54EBA2:  ADDW            R1, R0, #0x68C
54EBA6:  VST1.32         {D16-D17}, [R1]
54EBAA:  ADDW            R1, R0, #0x67C
54EBAE:  VST1.32         {D16-D17}, [R1]
54EBB2:  ADDW            R1, R0, #0x66C
54EBB6:  VST1.32         {D16-D17}, [R1]
54EBBA:  ADDW            R1, R0, #0x65C
54EBBE:  MOV             R0, R2
54EBC0:  VST1.32         {D16-D17}, [R1]
54EBC4:  B.W             sub_18AB14
