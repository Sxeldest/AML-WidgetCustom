; =========================================================
; Game Engine Function: sub_13A8E8
; Address            : 0x13A8E8 - 0x13A944
; =========================================================

13A8E8:  PUSH            {R4,R5,R7,LR}
13A8EA:  ADD             R7, SP, #8
13A8EC:  SUB             SP, SP, #0x20
13A8EE:  MOV             R5, R0
13A8F0:  VLDR            S0, [R0,#0x14]
13A8F4:  VLDR            S4, [R0,#0x2C]
13A8F8:  MOV             R4, R1
13A8FA:  VLDR            S2, [R0,#0x18]
13A8FE:  MOVS            R1, #1
13A900:  VLDR            S6, [R0,#0x30]
13A904:  VADD.F32        S0, S4, S0
13A908:  LDR             R0, =(off_234BF8 - 0x13A916)
13A90A:  ADD             R3, SP, #0x28+var_20; int
13A90C:  VADD.F32        S2, S6, S2
13A910:  ADD             R2, SP, #0x28+var_10; int
13A912:  ADD             R0, PC; off_234BF8
13A914:  LDR             R0, [R0]; unk_239018
13A916:  VLD1.32         {D16-D17}, [R0]
13A91A:  MOV.W           R0, #0x3F800000
13A91E:  STRD.W          R1, R0, [SP,#0x28+var_28]; int
13A922:  ADD.W           R1, R5, #0x2C ; ','; int
13A926:  MOV             R0, R4; int
13A928:  VSTR            S2, [SP,#0x28+var_C]
13A92C:  VSTR            S0, [SP,#0x28+var_10]
13A930:  VST1.64         {D16-D17}, [R3]
13A934:  BL              sub_12AB98
13A938:  MOV             R0, R5
13A93A:  MOV             R1, R4
13A93C:  BL              sub_12C0B6
13A940:  ADD             SP, SP, #0x20 ; ' '
13A942:  POP             {R4,R5,R7,PC}
