; =========================================================
; Game Engine Function: _ZN13CCarEnterExit21ComputeQuickJackedPedERK8CVehiclei
; Address            : 0x508880 - 0x50889A
; =========================================================

508880:  CMP             R1, #0xB
508882:  BEQ             loc_508892
508884:  CMP             R1, #0xA
508886:  ITEE NE
508888:  MOVNE           R0, #0
50888A:  ADDWEQ          R0, R0, #0x464
50888E:  LDREQ           R0, [R0]
508890:  BX              LR
508892:  ADDW            R0, R0, #0x46C
508896:  LDR             R0, [R0]
508898:  BX              LR
