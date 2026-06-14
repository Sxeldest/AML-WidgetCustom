; =========================================================
; Game Engine Function: _Z6InvertRK7CMatrix
; Address            : 0x44F8E8 - 0x44F9BC
; =========================================================

44F8E8:  PUSH            {R4-R7,LR}
44F8EA:  ADD             R7, SP, #0xC
44F8EC:  PUSH.W          {R8,R9,R11}
44F8F0:  LDRD.W          R6, LR, [R1]
44F8F4:  MOVS            R3, #0
44F8F6:  LDR.W           R12, [R1,#8]
44F8FA:  VMOV            S10, LR
44F8FE:  VLDR            S2, [R1,#0x34]
44F902:  VLDR            S0, [R1,#0x30]
44F906:  VMOV            S12, R6
44F90A:  VLDR            S4, [R1,#0x38]
44F90E:  VMUL.F32        S10, S2, S10
44F912:  LDRD.W          R5, R9, [R1,#0x20]
44F916:  VMUL.F32        S12, S0, S12
44F91A:  LDR.W           R8, [R1,#0x28]
44F91E:  VMOV            S3, R9
44F922:  LDRD.W          R2, R4, [R1,#0x10]
44F926:  VMOV            S8, R12
44F92A:  VMOV            S14, R5
44F92E:  LDR             R1, [R1,#0x18]
44F930:  VMOV            S1, R4
44F934:  STRD.W          R3, R3, [R0,#0x40]
44F938:  VMOV            S6, R2
44F93C:  STR             R2, [R0,#4]
44F93E:  VMUL.F32        S1, S2, S1
44F942:  STR             R6, [R0]
44F944:  VMUL.F32        S6, S0, S6
44F948:  STR             R5, [R0,#8]
44F94A:  VMUL.F32        S0, S0, S14
44F94E:  VLDR            S14, =0.0
44F952:  VMUL.F32        S2, S2, S3
44F956:  STRD.W          LR, R4, [R0,#0x10]
44F95A:  VADD.F32        S12, S12, S14
44F95E:  STR.W           R9, [R0,#0x18]
44F962:  VMOV            S3, R8
44F966:  STRD.W          R12, R1, [R0,#0x20]
44F96A:  VMUL.F32        S8, S4, S8
44F96E:  STR.W           R8, [R0,#0x28]
44F972:  VADD.F32        S6, S6, S14
44F976:  VADD.F32        S0, S0, S14
44F97A:  VMOV            S14, R1
44F97E:  VADD.F32        S10, S12, S10
44F982:  VMUL.F32        S12, S4, S14
44F986:  VMUL.F32        S4, S4, S3
44F98A:  VADD.F32        S6, S6, S1
44F98E:  VADD.F32        S0, S0, S2
44F992:  VADD.F32        S2, S10, S8
44F996:  VADD.F32        S6, S6, S12
44F99A:  VADD.F32        S0, S0, S4
44F99E:  VNEG.F32        S2, S2
44F9A2:  VNEG.F32        S4, S6
44F9A6:  VNEG.F32        S0, S0
44F9AA:  VSTR            S2, [R0,#0x30]
44F9AE:  VSTR            S4, [R0,#0x34]
44F9B2:  VSTR            S0, [R0,#0x38]
44F9B6:  POP.W           {R8,R9,R11}
44F9BA:  POP             {R4-R7,PC}
