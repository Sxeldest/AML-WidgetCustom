; =========================================================
; Game Engine Function: _ZN8COctTree11FillPaletteEPh
; Address            : 0x45C72C - 0x45C8D6
; =========================================================

45C72C:  PUSH            {R4-R7,LR}
45C72E:  ADD             R7, SP, #0xC
45C730:  PUSH.W          {R11}
45C734:  MOV             R5, R0
45C736:  MOV             R4, R1
45C738:  LDRB            R0, [R5,#8]
45C73A:  CMP             R0, #0
45C73C:  BEQ             loc_45C7C2
45C73E:  VLDR            S0, [R5,#4]
45C742:  VLDR            S2, [R5,#0x1C]
45C746:  VCVT.F32.S32    S0, S0
45C74A:  LDR             R0, =(_ZN8COctTree8ms_levelE_ptr - 0x45C754)
45C74C:  VCVT.F32.U32    S2, S2
45C750:  ADD             R0, PC; _ZN8COctTree8ms_levelE_ptr
45C752:  LDR             R0, [R0]; COctTree::ms_level ...
45C754:  LDR             R1, [R0]; COctTree::ms_level
45C756:  VDIV.F32        S0, S2, S0
45C75A:  VCVT.U32.F32    S0, S0
45C75E:  VMOV            R2, S0
45C762:  STRB.W          R2, [R4,R1,LSL#2]
45C766:  VLDR            S0, [R5,#4]
45C76A:  VLDR            S2, [R5,#0x20]
45C76E:  VCVT.F32.S32    S0, S0
45C772:  VCVT.F32.U32    S2, S2
45C776:  LDR             R1, [R0]; COctTree::ms_level
45C778:  ADD.W           R1, R4, R1,LSL#2
45C77C:  VDIV.F32        S0, S2, S0
45C780:  VCVT.U32.F32    S0, S0
45C784:  VMOV            R2, S0
45C788:  STRB            R2, [R1,#1]
45C78A:  VLDR            S0, [R5,#4]
45C78E:  VLDR            S2, [R5,#0x24]
45C792:  VCVT.F32.S32    S0, S0
45C796:  VCVT.F32.U32    S2, S2
45C79A:  LDR             R1, [R0]; COctTree::ms_level
45C79C:  ADD.W           R1, R4, R1,LSL#2
45C7A0:  VDIV.F32        S0, S2, S0
45C7A4:  VCVT.U32.F32    S0, S0
45C7A8:  VMOV            R2, S0
45C7AC:  STRB            R2, [R1,#2]
45C7AE:  MOVS            R2, #0x80
45C7B0:  LDR             R1, [R0]; COctTree::ms_level
45C7B2:  ADD.W           R1, R4, R1,LSL#2
45C7B6:  STRB            R2, [R1,#3]
45C7B8:  LDR             R1, [R0]; COctTree::ms_level
45C7BA:  STR             R1, [R5,#4]
45C7BC:  ADDS            R1, #1
45C7BE:  STR             R1, [R0]; COctTree::ms_level
45C7C0:  B               loc_45C8D0
45C7C2:  LDRSH.W         R0, [R5,#0xA]
45C7C6:  MOV.W           R6, #0xFFFFFFFF
45C7CA:  CMP.W           R0, #0xFFFFFFFF
45C7CE:  BLE             loc_45C7E8
45C7D0:  LDR             R1, =(dword_9ABF40 - 0x45C7DA)
45C7D2:  ADD.W           R0, R0, R0,LSL#2
45C7D6:  ADD             R1, PC; dword_9ABF40
45C7D8:  LDR             R1, [R1]
45C7DA:  LDR.W           R2, [R1,R0,LSL#3]
45C7DE:  ADD.W           R0, R1, R0,LSL#3
45C7E2:  MOV             R1, R4
45C7E4:  LDR             R2, [R2,#4]
45C7E6:  BLX             R2
45C7E8:  LDRSH.W         R0, [R5,#0xC]
45C7EC:  CMP             R0, R6
45C7EE:  BLE             loc_45C808
45C7F0:  LDR             R1, =(dword_9ABF40 - 0x45C7FA)
45C7F2:  ADD.W           R0, R0, R0,LSL#2
45C7F6:  ADD             R1, PC; dword_9ABF40
45C7F8:  LDR             R1, [R1]
45C7FA:  LDR.W           R2, [R1,R0,LSL#3]
45C7FE:  ADD.W           R0, R1, R0,LSL#3
45C802:  MOV             R1, R4
45C804:  LDR             R2, [R2,#4]
45C806:  BLX             R2
45C808:  LDRSH.W         R0, [R5,#0xE]
45C80C:  CMP             R0, R6
45C80E:  BLE             loc_45C828
45C810:  LDR             R1, =(dword_9ABF40 - 0x45C81A)
45C812:  ADD.W           R0, R0, R0,LSL#2
45C816:  ADD             R1, PC; dword_9ABF40
45C818:  LDR             R1, [R1]
45C81A:  LDR.W           R2, [R1,R0,LSL#3]
45C81E:  ADD.W           R0, R1, R0,LSL#3
45C822:  MOV             R1, R4
45C824:  LDR             R2, [R2,#4]
45C826:  BLX             R2
45C828:  LDRSH.W         R0, [R5,#0x10]
45C82C:  CMP             R0, R6
45C82E:  BLE             loc_45C848
45C830:  LDR             R1, =(dword_9ABF40 - 0x45C83A)
45C832:  ADD.W           R0, R0, R0,LSL#2
45C836:  ADD             R1, PC; dword_9ABF40
45C838:  LDR             R1, [R1]
45C83A:  LDR.W           R2, [R1,R0,LSL#3]
45C83E:  ADD.W           R0, R1, R0,LSL#3
45C842:  MOV             R1, R4
45C844:  LDR             R2, [R2,#4]
45C846:  BLX             R2
45C848:  LDRSH.W         R0, [R5,#0x12]
45C84C:  CMP             R0, R6
45C84E:  BLE             loc_45C868
45C850:  LDR             R1, =(dword_9ABF40 - 0x45C85A)
45C852:  ADD.W           R0, R0, R0,LSL#2
45C856:  ADD             R1, PC; dword_9ABF40
45C858:  LDR             R1, [R1]
45C85A:  LDR.W           R2, [R1,R0,LSL#3]
45C85E:  ADD.W           R0, R1, R0,LSL#3
45C862:  MOV             R1, R4
45C864:  LDR             R2, [R2,#4]
45C866:  BLX             R2
45C868:  LDRSH.W         R0, [R5,#0x14]
45C86C:  CMP             R0, R6
45C86E:  BLE             loc_45C888
45C870:  LDR             R1, =(dword_9ABF40 - 0x45C87A)
45C872:  ADD.W           R0, R0, R0,LSL#2
45C876:  ADD             R1, PC; dword_9ABF40
45C878:  LDR             R1, [R1]
45C87A:  LDR.W           R2, [R1,R0,LSL#3]
45C87E:  ADD.W           R0, R1, R0,LSL#3
45C882:  MOV             R1, R4
45C884:  LDR             R2, [R2,#4]
45C886:  BLX             R2
45C888:  LDRSH.W         R0, [R5,#0x16]
45C88C:  CMP             R0, R6
45C88E:  BLE             loc_45C8A8
45C890:  LDR             R1, =(dword_9ABF40 - 0x45C89A)
45C892:  ADD.W           R0, R0, R0,LSL#2
45C896:  ADD             R1, PC; dword_9ABF40
45C898:  LDR             R1, [R1]
45C89A:  LDR.W           R2, [R1,R0,LSL#3]
45C89E:  ADD.W           R0, R1, R0,LSL#3
45C8A2:  MOV             R1, R4
45C8A4:  LDR             R2, [R2,#4]
45C8A6:  BLX             R2
45C8A8:  LDRSH.W         R0, [R5,#0x18]
45C8AC:  CMP             R0, R6
45C8AE:  BLE             loc_45C8D0
45C8B0:  LDR             R1, =(dword_9ABF40 - 0x45C8BA)
45C8B2:  ADD.W           R0, R0, R0,LSL#2
45C8B6:  ADD             R1, PC; dword_9ABF40
45C8B8:  LDR             R1, [R1]
45C8BA:  LDR.W           R2, [R1,R0,LSL#3]
45C8BE:  ADD.W           R0, R1, R0,LSL#3
45C8C2:  MOV             R1, R4
45C8C4:  LDR             R2, [R2,#4]
45C8C6:  POP.W           {R11}
45C8CA:  POP.W           {R4-R7,LR}
45C8CE:  BX              R2
45C8D0:  POP.W           {R11}
45C8D4:  POP             {R4-R7,PC}
