; =========================================================
; Game Engine Function: _ZN15CAESoundManager35GetVirtualChannelForPhysicalChannelEs
; Address            : 0x3A8FC8 - 0x3A8FF6
; =========================================================

3A8FC8:  LDRH            R2, [R0,#2]
3A8FCA:  UXTH            R1, R1
3A8FCC:  MOVW            R12, #0xFFFF
3A8FD0:  SUBS            R2, R1, R2
3A8FD2:  MOVS            R1, #0xFFFF0001
3A8FD8:  LSLS            R3, R2, #0x10
3A8FDA:  CMP             R3, R1
3A8FDC:  BLT             loc_3A8FF0
3A8FDE:  SXTH            R2, R2
3A8FE0:  LDRH            R1, [R0]
3A8FE2:  CMP             R2, R1
3A8FE4:  ITTT LT
3A8FE6:  MOVWLT          R1, #0x87F4
3A8FEA:  LDRLT           R0, [R0,R1]
3A8FEC:  LDRHLT.W        R12, [R0,R2,LSL#1]
3A8FF0:  SXTH.W          R0, R12
3A8FF4:  BX              LR
