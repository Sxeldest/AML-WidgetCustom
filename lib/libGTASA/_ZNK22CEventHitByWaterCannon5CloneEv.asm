; =========================================================
; Game Engine Function: _ZNK22CEventHitByWaterCannon5CloneEv
; Address            : 0x37A8E0 - 0x37A968
; =========================================================

37A8E0:  PUSH            {R4,R6,R7,LR}
37A8E2:  ADD             R7, SP, #8
37A8E4:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37A8EE)
37A8E6:  MOV.W           LR, #0
37A8EA:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37A8EC:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37A8EE:  LDR             R2, [R1]; CPools::ms_pEventPool
37A8F0:  LDRD.W          R12, R1, [R2,#8]
37A8F4:  ADDS            R1, #1
37A8F6:  STR             R1, [R2,#0xC]
37A8F8:  CMP             R1, R12
37A8FA:  BNE             loc_37A90A
37A8FC:  MOVS            R1, #0
37A8FE:  MOVS.W          R3, LR,LSL#31
37A902:  STR             R1, [R2,#0xC]
37A904:  BNE             loc_37A93C
37A906:  MOV.W           LR, #1
37A90A:  LDR             R3, [R2,#4]
37A90C:  LDRSB           R4, [R3,R1]
37A90E:  CMP.W           R4, #0xFFFFFFFF
37A912:  BGT             loc_37A8F4
37A914:  AND.W           R4, R4, #0x7F
37A918:  STRB            R4, [R3,R1]
37A91A:  LDR             R1, [R2,#4]
37A91C:  LDR             R3, [R2,#0xC]
37A91E:  LDRB            R4, [R1,R3]
37A920:  AND.W           R12, R4, #0x80
37A924:  ADDS            R4, #1
37A926:  AND.W           R4, R4, #0x7F
37A92A:  ORR.W           R4, R4, R12
37A92E:  STRB            R4, [R1,R3]
37A930:  LDR             R1, [R2]
37A932:  LDR             R2, [R2,#0xC]
37A934:  ADD.W           R2, R2, R2,LSL#4
37A938:  ADD.W           R1, R1, R2,LSL#2
37A93C:  LDR             R2, =(_ZTV22CEventHitByWaterCannon_ptr - 0x37A946)
37A93E:  MOVS            R3, #0
37A940:  STRB            R3, [R1,#8]
37A942:  ADD             R2, PC; _ZTV22CEventHitByWaterCannon_ptr
37A944:  LDR             R2, [R2]; `vtable for'CEventHitByWaterCannon ...
37A946:  ADDS            R2, #8
37A948:  STRD.W          R2, R3, [R1]
37A94C:  VLDR            D16, [R0,#0xC]
37A950:  LDR             R2, [R0,#0x14]
37A952:  STR             R2, [R1,#0x14]
37A954:  VSTR            D16, [R1,#0xC]
37A958:  VLDR            D16, [R0,#0x18]
37A95C:  LDR             R0, [R0,#0x20]
37A95E:  STR             R0, [R1,#0x20]
37A960:  MOV             R0, R1
37A962:  VSTR            D16, [R1,#0x18]
37A966:  POP             {R4,R6,R7,PC}
