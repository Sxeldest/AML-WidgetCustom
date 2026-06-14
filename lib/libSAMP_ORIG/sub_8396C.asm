; =========================================================
; Game Engine Function: sub_8396C
; Address            : 0x8396C - 0x839C0
; =========================================================

8396C:  PUSH            {R4-R7,LR}
8396E:  ADD             R7, SP, #0xC
83970:  PUSH.W          {R8}
83974:  MOV             R4, R3
83976:  MOV             R6, R2
83978:  MOV             R5, R0
8397A:  BL              sub_8004C
8397E:  LDR.W           R8, [R7,#arg_0]
83982:  VMOV            S0, R6
83986:  VMOV            S2, R4
8398A:  LDR             R0, =(_ZTV15SlideController - 0x83994); `vtable for'SlideController ...
8398C:  VMOV            S4, R8
83990:  ADD             R0, PC; `vtable for'SlideController
83992:  VSUB.F32        S0, S2, S0
83996:  ADDS            R0, #8
83998:  VCVT.F32.U32    S4, S4
8399C:  STR             R0, [R5]
8399E:  VDIV.F32        S0, S0, S4
839A2:  VSTR            S0, [R5,#8]
839A6:  BL              sub_86B00
839AA:  ADDS.W          R0, R0, R8
839AE:  ADD.W           R2, R5, #0x10
839B2:  ADC.W           R1, R1, #0
839B6:  STM             R2!, {R0,R1,R4}
839B8:  MOV             R0, R5
839BA:  POP.W           {R8}
839BE:  POP             {R4-R7,PC}
