; =========================================================
; Game Engine Function: _ZN6CCarAI19GetCarToParkAtCoorsEP8CVehicleP7CVector
; Address            : 0x2E6948 - 0x2E6994
; =========================================================

2E6948:  PUSH            {R4,R5,R7,LR}; bool
2E694A:  ADD             R7, SP, #8
2E694C:  MOVS            R2, #0; CVector *
2E694E:  MOVS            R3, #1; int
2E6950:  MOV             R4, R1
2E6952:  MOV             R5, R0
2E6954:  BLX             j__ZN6CCarAI17GetCarToGoToCoorsEP8CVehicleP7CVectorib; CCarAI::GetCarToGoToCoors(CVehicle *,CVector *,int,bool)
2E6958:  LDR.W           R0, [R5,#0x430]
2E695C:  MOVS            R1, #0xA
2E695E:  LDR             R2, [R5,#0x14]
2E6960:  ORR.W           R0, R0, #4
2E6964:  STRB.W          R1, [R5,#0x3D4]
2E6968:  STR.W           R0, [R5,#0x430]
2E696C:  ADD.W           R0, R2, #0x30 ; '0'
2E6970:  CMP             R2, #0
2E6972:  VLDR            D16, [R4]
2E6976:  IT EQ
2E6978:  ADDEQ           R0, R5, #4
2E697A:  VLDR            D17, [R0]
2E697E:  VSUB.F32        D16, D17, D16
2E6982:  VMUL.F32        D0, D16, D16
2E6986:  VADD.F32        S0, S0, S1
2E698A:  VSQRT.F32       S0, S0
2E698E:  VMOV            R0, S0
2E6992:  POP             {R4,R5,R7,PC}
