; =========================================================
; Game Engine Function: _ZN7CWanted13RegisterCrimeE10eCrimeTypeRK7CVectorjb
; Address            : 0x421CB0 - 0x421CCE
; =========================================================

421CB0:  PUSH            {R7,LR}
421CB2:  MOV             R7, SP
421CB4:  SUB             SP, SP, #8
421CB6:  LDR.W           LR, [R7,#8]
421CBA:  MOV             R12, R2
421CBC:  MOVS            R2, #0
421CBE:  STRD.W          R2, LR, [SP,#0x10+var_10]
421CC2:  MOV             R2, R3
421CC4:  MOV             R3, R12
421CC6:  BLX             j__ZN7CWanted11AddCrimeToQE10eCrimeTypejRK7CVectorbb; CWanted::AddCrimeToQ(eCrimeType,uint,CVector const&,bool,bool)
421CCA:  ADD             SP, SP, #8
421CCC:  POP             {R7,PC}
