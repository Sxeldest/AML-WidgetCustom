; =========================================================
; Game Engine Function: _Z6InvertRK7CMatrixRS_
; Address            : 0x44F9C0 - 0x44FAD4
; =========================================================

44F9C0:  PUSH            {R4-R7,LR}
44F9C2:  ADD             R7, SP, #0xC
44F9C4:  PUSH.W          {R8}
44F9C8:  MOVS            R2, #0
44F9CA:  STRD.W          R2, R2, [R1,#0x30]
44F9CE:  STR             R2, [R1,#0x38]
44F9D0:  LDR             R2, [R0]
44F9D2:  STR             R2, [R1]
44F9D4:  LDR             R3, [R0,#0x10]
44F9D6:  STR             R3, [R1,#4]
44F9D8:  VMOV            S0, R2
44F9DC:  LDR             R4, [R0,#0x20]
44F9DE:  STR             R4, [R1,#8]
44F9E0:  VMOV            S2, R3
44F9E4:  LDR             R6, [R0,#4]
44F9E6:  STR             R6, [R1,#0x10]
44F9E8:  VMOV            S4, R4
44F9EC:  LDR             R5, [R0,#0x14]
44F9EE:  STR             R5, [R1,#0x14]
44F9F0:  LDR.W           R8, [R0,#0x24]
44F9F4:  STR.W           R8, [R1,#0x18]
44F9F8:  LDR             R2, [R0,#8]
44F9FA:  STR             R2, [R1,#0x20]
44F9FC:  LDR.W           LR, [R0,#0x18]
44FA00:  STR.W           LR, [R1,#0x24]
44FA04:  LDR.W           R12, [R0,#0x28]
44FA08:  STR.W           R12, [R1,#0x28]
44FA0C:  VLDR            S6, [R0,#0x30]
44FA10:  VMUL.F32        S0, S6, S0
44FA14:  VLDR            S6, =0.0
44FA18:  VADD.F32        S0, S0, S6
44FA1C:  VSTR            S0, [R1,#0x30]
44FA20:  VLDR            S8, [R0,#0x30]
44FA24:  VMUL.F32        S2, S8, S2
44FA28:  VADD.F32        S2, S2, S6
44FA2C:  VSTR            S2, [R1,#0x34]
44FA30:  VLDR            S8, [R0,#0x30]
44FA34:  VMUL.F32        S4, S8, S4
44FA38:  VADD.F32        S4, S4, S6
44FA3C:  VMOV            S6, R6
44FA40:  VSTR            S4, [R1,#0x38]
44FA44:  VLDR            S8, [R0,#0x34]
44FA48:  VMUL.F32        S6, S8, S6
44FA4C:  VADD.F32        S0, S0, S6
44FA50:  VMOV            S6, R5
44FA54:  VSTR            S0, [R1,#0x30]
44FA58:  VLDR            S8, [R0,#0x34]
44FA5C:  VMUL.F32        S6, S8, S6
44FA60:  VADD.F32        S2, S2, S6
44FA64:  VMOV            S6, R8
44FA68:  VSTR            S2, [R1,#0x34]
44FA6C:  VLDR            S8, [R0,#0x34]
44FA70:  VMUL.F32        S6, S8, S6
44FA74:  VADD.F32        S4, S4, S6
44FA78:  VMOV            S6, R2
44FA7C:  VSTR            S4, [R1,#0x38]
44FA80:  VLDR            S8, [R0,#0x38]
44FA84:  VMUL.F32        S6, S8, S6
44FA88:  VADD.F32        S0, S0, S6
44FA8C:  VMOV            S6, LR
44FA90:  VSTR            S0, [R1,#0x30]
44FA94:  VNEG.F32        S0, S0
44FA98:  VLDR            S8, [R0,#0x38]
44FA9C:  VMUL.F32        S6, S8, S6
44FAA0:  VADD.F32        S2, S2, S6
44FAA4:  VMOV            S6, R12
44FAA8:  VSTR            S2, [R1,#0x34]
44FAAC:  VNEG.F32        S2, S2
44FAB0:  VLDR            S8, [R0,#0x38]
44FAB4:  MOV             R0, R1
44FAB6:  VSTR            S0, [R1,#0x30]
44FABA:  VMUL.F32        S6, S8, S6
44FABE:  VSTR            S2, [R1,#0x34]
44FAC2:  VADD.F32        S4, S4, S6
44FAC6:  VNEG.F32        S4, S4
44FACA:  VSTR            S4, [R1,#0x38]
44FACE:  POP.W           {R8}
44FAD2:  POP             {R4-R7,PC}
