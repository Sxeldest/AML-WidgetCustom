; =========================================================
; Game Engine Function: EchoCreate
; Address            : 0x23ECA0 - 0x23ECE4
; =========================================================

23ECA0:  PUSH            {R7,LR}
23ECA2:  MOV             R7, SP
23ECA4:  MOVS            R0, #0x7C ; '|'; byte_count
23ECA6:  BLX             malloc
23ECAA:  MOVS            R1, #0
23ECAC:  CBZ             R0, loc_23ECE0
23ECAE:  LDR.W           R12, =(sub_250EE0+1 - 0x23ECC0)
23ECB2:  VMOV.I32        Q8, #0
23ECB6:  LDR.W           LR, =(sub_2510CC+1 - 0x23ECC4)
23ECBA:  LDR             R3, =(sub_250EC4+1 - 0x23ECCA)
23ECBC:  ADD             R12, PC; sub_250EE0
23ECBE:  LDR             R2, =(sub_250F6C+1 - 0x23ECCE)
23ECC0:  ADD             LR, PC; sub_2510CC
23ECC2:  STRD.W          R1, R1, [R0,#0x70]
23ECC6:  ADD             R3, PC; sub_250EC4
23ECC8:  STR             R1, [R0,#0x78]
23ECCA:  ADD             R2, PC; sub_250F6C
23ECCC:  STR             R1, [R0,#0x20]
23ECCE:  ADD.W           R1, R0, #0x10
23ECD2:  STRD.W          R3, R12, [R0]
23ECD6:  STRD.W          R2, LR, [R0,#8]
23ECDA:  VST1.32         {D16-D17}, [R1]
23ECDE:  MOV             R1, R0
23ECE0:  MOV             R0, R1
23ECE2:  POP             {R7,PC}
