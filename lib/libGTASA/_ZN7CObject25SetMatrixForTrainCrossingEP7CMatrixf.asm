; =========================================================
; Game Engine Function: _ZN7CObject25SetMatrixForTrainCrossingEP7CMatrixf
; Address            : 0x455674 - 0x45570C
; =========================================================

455674:  PUSH            {R4-R7,LR}
455676:  ADD             R7, SP, #0xC
455678:  PUSH.W          {R11}
45567C:  SUB             SP, SP, #0x28
45567E:  MOV             R4, R0
455680:  MOVS            R0, #0
455682:  STRD.W          R0, R0, [SP,#0x38+var_28]
455686:  MOV.W           R0, #0x3F800000
45568A:  MOV             R5, R1
45568C:  STR             R0, [SP,#0x38+var_20]
45568E:  ADD             R0, SP, #0x38+var_1C; CVector *
455690:  ADD             R1, SP, #0x38+var_28; CVector *
455692:  MOV             R2, R4
455694:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
455698:  MOV             R0, R5; x
45569A:  BLX             sinf
45569E:  MOV             R6, R0
4556A0:  MOV             R0, R5; x
4556A2:  BLX             cosf
4556A6:  VMOV            S0, R0
4556AA:  VLDR            S6, [SP,#0x38+var_1C]
4556AE:  VLDR            S8, [SP,#0x38+var_18]
4556B2:  VMOV            S4, R6
4556B6:  VLDR            S2, =0.0
4556BA:  VMUL.F32        S6, S0, S6
4556BE:  VLDR            S10, [SP,#0x38+var_14]
4556C2:  VMUL.F32        S8, S0, S8
4556C6:  VMUL.F32        S2, S4, S2
4556CA:  ADD             R0, SP, #0x38+var_34; CVector *
4556CC:  VMUL.F32        S0, S0, S10
4556D0:  ADD             R2, SP, #0x38+var_28
4556D2:  MOV             R1, R4; CVector *
4556D4:  VADD.F32        S6, S2, S6
4556D8:  VADD.F32        S2, S2, S8
4556DC:  VADD.F32        S0, S4, S0
4556E0:  VSTR            S6, [SP,#0x38+var_28]
4556E4:  VSTR            S2, [SP,#0x38+var_24]
4556E8:  VSTR            S0, [SP,#0x38+var_20]
4556EC:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
4556F0:  ADD             R2, SP, #0x38+var_34
4556F2:  ADD.W           R3, R4, #0x20 ; ' '
4556F6:  LDM             R2, {R0-R2}
4556F8:  STM             R3!, {R0-R2}
4556FA:  ADD             R2, SP, #0x38+var_28
4556FC:  ADD.W           R3, R4, #0x10
455700:  LDM             R2, {R0-R2}
455702:  STM             R3!, {R0-R2}
455704:  ADD             SP, SP, #0x28 ; '('
455706:  POP.W           {R11}
45570A:  POP             {R4-R7,PC}
