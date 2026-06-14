; =========================================================
; Game Engine Function: _ZN7CMatrix9SetRotateEfff
; Address            : 0x44F196 - 0x44F268
; =========================================================

44F196:  PUSH            {R4-R7,LR}
44F198:  ADD             R7, SP, #0xC
44F19A:  PUSH.W          {R8,R9,R11}
44F19E:  VPUSH           {D8-D12}
44F1A2:  MOV             R6, R1
44F1A4:  MOV             R4, R0
44F1A6:  MOV             R0, R6; x
44F1A8:  MOV             R5, R3
44F1AA:  MOV             R9, R2
44F1AC:  BLX             sinf
44F1B0:  MOV             R8, R0
44F1B2:  MOV             R0, R5; x
44F1B4:  BLX             cosf
44F1B8:  VMOV            S16, R0
44F1BC:  MOV             R0, R5; x
44F1BE:  VMOV            S18, R8
44F1C2:  BLX             sinf
44F1C6:  VMOV            S20, R0
44F1CA:  MOV             R0, R6; x
44F1CC:  VMUL.F32        S22, S18, S16
44F1D0:  VMUL.F32        S18, S18, S20
44F1D4:  BLX             cosf
44F1D8:  MOV             R5, R0
44F1DA:  MOV             R0, R9; x
44F1DC:  BLX             cosf
44F1E0:  VMOV            S24, R0
44F1E4:  MOV             R0, R9; x
44F1E6:  BLX             sinf
44F1EA:  VMOV            S0, R0
44F1EE:  MOVS            R0, #0
44F1F0:  VMUL.F32        S4, S24, S20
44F1F4:  STRD.W          R0, R0, [R4,#0x30]
44F1F8:  VMUL.F32        S6, S0, S22
44F1FC:  STR             R0, [R4,#0x38]
44F1FE:  VMUL.F32        S8, S24, S16
44F202:  STR.W           R8, [R4,#0x18]
44F206:  VMUL.F32        S10, S0, S18
44F20A:  VMUL.F32        S12, S0, S16
44F20E:  VMUL.F32        S14, S24, S18
44F212:  VMUL.F32        S1, S0, S20
44F216:  VMUL.F32        S3, S24, S22
44F21A:  VMOV            S2, R5
44F21E:  VADD.F32        S4, S4, S6
44F222:  VSUB.F32        S6, S8, S10
44F226:  VNMUL.F32       S5, S2, S20
44F22A:  VNMUL.F32       S0, S2, S0
44F22E:  VMUL.F32        S7, S2, S16
44F232:  VMUL.F32        S2, S2, S24
44F236:  VADD.F32        S8, S12, S14
44F23A:  VSUB.F32        S10, S1, S3
44F23E:  VSTR            S5, [R4,#0x10]
44F242:  VSTR            S7, [R4,#0x14]
44F246:  VSTR            S6, [R4]
44F24A:  VSTR            S4, [R4,#4]
44F24E:  VSTR            S0, [R4,#8]
44F252:  VSTR            S8, [R4,#0x20]
44F256:  VSTR            S10, [R4,#0x24]
44F25A:  VSTR            S2, [R4,#0x28]
44F25E:  VPOP            {D8-D12}
44F262:  POP.W           {R8,R9,R11}
44F266:  POP             {R4-R7,PC}
