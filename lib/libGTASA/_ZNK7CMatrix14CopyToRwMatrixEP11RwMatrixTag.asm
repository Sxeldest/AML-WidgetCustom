; =========================================================
; Game Engine Function: _ZNK7CMatrix14CopyToRwMatrixEP11RwMatrixTag
; Address            : 0x44FAD8 - 0x44FB18
; =========================================================

44FAD8:  PUSH            {R4,R6,R7,LR}
44FADA:  ADD             R7, SP, #8
44FADC:  VLDR            D16, [R0]
44FAE0:  MOV             R4, R1
44FAE2:  LDR             R1, [R0,#8]
44FAE4:  STR             R1, [R4,#8]
44FAE6:  VSTR            D16, [R4]
44FAEA:  VLDR            D16, [R0,#0x10]
44FAEE:  LDR             R1, [R0,#0x18]
44FAF0:  STR             R1, [R4,#0x18]
44FAF2:  VSTR            D16, [R4,#0x10]
44FAF6:  VLDR            D16, [R0,#0x20]
44FAFA:  LDR             R1, [R0,#0x28]
44FAFC:  STR             R1, [R4,#0x28]
44FAFE:  VSTR            D16, [R4,#0x20]
44FB02:  VLDR            D16, [R0,#0x30]
44FB06:  LDR             R0, [R0,#0x38]
44FB08:  STR             R0, [R4,#0x38]
44FB0A:  MOV             R0, R4
44FB0C:  VSTR            D16, [R4,#0x30]
44FB10:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
44FB14:  MOV             R0, R4
44FB16:  POP             {R4,R6,R7,PC}
