; =========================================================
; Game Engine Function: sub_120EB8
; Address            : 0x120EB8 - 0x120EDA
; =========================================================

120EB8:  PUSH            {R4,R6,R7,LR}
120EBA:  ADD             R7, SP, #8
120EBC:  LDR             R4, =(unk_263910 - 0x120EC4)
120EBE:  MOVS            R1, #0
120EC0:  ADD             R4, PC; unk_263910
120EC2:  MOV             R0, R4
120EC4:  BL              sub_120820
120EC8:  LDR             R0, =(sub_120848+1 - 0x120ED2)
120ECA:  MOV             R1, R4
120ECC:  LDR             R2, =(off_22A540 - 0x120ED4)
120ECE:  ADD             R0, PC; sub_120848
120ED0:  ADD             R2, PC; off_22A540
120ED2:  POP.W           {R4,R6,R7,LR}
120ED6:  B.W             sub_224250
