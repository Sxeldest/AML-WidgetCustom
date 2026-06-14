; =========================================================
; Game Engine Function: sub_108CB0
; Address            : 0x108CB0 - 0x108CDC
; =========================================================

108CB0:  MOVW            R2, #0
108CB4:  VLDR            D16, =-1.93428131e25
108CB8:  MOVT            R2, #0x4530
108CBC:  VMOV            D17, R1, R2
108CC0:  MOV             R1, #0x43300000
108CC8:  VADD.F64        D16, D17, D16
108CCC:  VMOV            D17, R0, R1
108CD0:  VADD.F64        D16, D16, D17
108CD4:  VMOV            R0, R1, D16
108CD8:  BX              LR
