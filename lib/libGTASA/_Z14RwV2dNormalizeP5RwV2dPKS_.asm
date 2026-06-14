; =========================================================
; Game Engine Function: _Z14RwV2dNormalizeP5RwV2dPKS_
; Address            : 0x1E689C - 0x1E6978
; =========================================================

1E689C:  PUSH            {R7,LR}
1E689E:  MOV             R7, SP
1E68A0:  VPUSH           {D8}
1E68A4:  SUB             SP, SP, #8
1E68A6:  VLDR            S2, [R1,#4]
1E68AA:  VLDR            S0, [R1]
1E68AE:  VMUL.F32        S2, S2, S2
1E68B2:  VMUL.F32        S4, S0, S0
1E68B6:  VADD.F32        S4, S4, S2
1E68BA:  VLDR            S2, =0.0
1E68BE:  VMOV.F32        S16, S2
1E68C2:  VSTR            S4, [SP,#0x18+var_18]
1E68C6:  LDR             R2, [SP,#0x18+var_18]
1E68C8:  CBZ             R2, loc_1E68FE
1E68CA:  LDR             R2, =(RwEngineInstance_ptr - 0x1E68D2)
1E68CC:  LDR             R3, =(dword_6BD0E4 - 0x1E68D4)
1E68CE:  ADD             R2, PC; RwEngineInstance_ptr
1E68D0:  ADD             R3, PC; dword_6BD0E4
1E68D2:  LDR             R2, [R2]; RwEngineInstance
1E68D4:  LDR             R3, [R3]
1E68D6:  LDR             R2, [R2]
1E68D8:  LDR             R2, [R2,R3]
1E68DA:  LDR             R3, [SP,#0x18+var_18]
1E68DC:  ADD.W           R3, R3, #0x800
1E68E0:  STR             R3, [SP,#0x18+var_18]
1E68E2:  LDR             R3, [SP,#0x18+var_18]
1E68E4:  UBFX.W          R3, R3, #0xC, #0xC
1E68E8:  LDR.W           R12, [R2,R3,LSL#2]
1E68EC:  MOV.W           R2, #0x3FC00000
1E68F0:  LDR             R3, [SP,#0x18+var_18]
1E68F2:  AND.W           R2, R2, R3,LSR#1
1E68F6:  ADD             R2, R12
1E68F8:  STR             R2, [SP,#0x18+var_18]
1E68FA:  VMOV            S16, R2
1E68FE:  VSTR            S4, [SP,#0x18+var_18]
1E6902:  LDR             R2, [SP,#0x18+var_18]
1E6904:  CBZ             R2, loc_1E693C
1E6906:  LDR             R2, =(RwEngineInstance_ptr - 0x1E690E)
1E6908:  LDR             R3, =(dword_6BD0E4 - 0x1E6910)
1E690A:  ADD             R2, PC; RwEngineInstance_ptr
1E690C:  ADD             R3, PC; dword_6BD0E4
1E690E:  LDR             R2, [R2]; RwEngineInstance
1E6910:  LDR             R3, [R3]
1E6912:  LDR             R2, [R2]
1E6914:  ADD             R2, R3
1E6916:  LDR             R2, [R2,#4]
1E6918:  LDR             R3, [SP,#0x18+var_18]
1E691A:  ADD.W           R3, R3, #0x800
1E691E:  STR             R3, [SP,#0x18+var_18]
1E6920:  LDR             R3, [SP,#0x18+var_18]
1E6922:  UBFX.W          R3, R3, #0xC, #0xC
1E6926:  LDR.W           R12, [R2,R3,LSL#2]
1E692A:  MOV.W           R2, #0x3FC00000
1E692E:  LDR             R3, [SP,#0x18+var_18]
1E6930:  BIC.W           R2, R2, R3,LSR#1
1E6934:  ADD             R2, R12
1E6936:  STR             R2, [SP,#0x18+var_18]
1E6938:  VMOV            S2, R2
1E693C:  VMUL.F32        S0, S2, S0
1E6940:  VCMPE.F32       S16, #0.0
1E6944:  VMRS            APSR_nzcv, FPSCR
1E6948:  VSTR            S0, [R0]
1E694C:  VLDR            S0, [R1,#4]
1E6950:  VMUL.F32        S0, S2, S0
1E6954:  VSTR            S0, [R0,#4]
1E6958:  BGT             loc_1E696C
1E695A:  MOVS            R0, #0
1E695C:  STR             R0, [SP,#0x18+var_18]
1E695E:  MOVS            R0, #0x19; int
1E6960:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E6964:  STR             R0, [SP,#0x18+var_14]
1E6966:  MOV             R0, SP
1E6968:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E696C:  VMOV            R0, S16
1E6970:  ADD             SP, SP, #8
1E6972:  VPOP            {D8}
1E6976:  POP             {R7,PC}
