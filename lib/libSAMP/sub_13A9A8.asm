; =========================================================
; Game Engine Function: sub_13A9A8
; Address            : 0x13A9A8 - 0x13A9F6
; =========================================================

13A9A8:  PUSH            {R4,R5,R7,LR}
13A9AA:  ADD             R7, SP, #8
13A9AC:  SUB             SP, SP, #0x10
13A9AE:  LDR             R1, =(byte_8F794 - 0x13A9B8)
13A9B0:  ADD             R5, SP, #0x18+var_14
13A9B2:  MOV             R4, R0
13A9B4:  ADD             R1, PC; byte_8F794 ; s
13A9B6:  MOV             R0, R5; int
13A9B8:  BL              sub_DC6DC
13A9BC:  LDR             R0, =(off_234980 - 0x13A9C6)
13A9BE:  VMOV.F32        S0, #0.5
13A9C2:  ADD             R0, PC; off_234980
13A9C4:  LDR             R0, [R0]; dword_238EC0
13A9C6:  VLDR            S2, [R0]
13A9CA:  VMUL.F32        S0, S2, S0
13A9CE:  VMOV            R2, S0
13A9D2:  MOV             R0, R4
13A9D4:  MOV             R1, R5
13A9D6:  BL              sub_13CE34
13A9DA:  LDRB.W          R0, [SP,#0x18+var_14]
13A9DE:  LSLS            R0, R0, #0x1F
13A9E0:  ITT NE
13A9E2:  LDRNE           R0, [SP,#0x18+var_C]; void *
13A9E4:  BLXNE           j__ZdlPv; operator delete(void *)
13A9E8:  LDR             R0, =(_ZTVN17DialogButtonPanel13DialogButton1E - 0x13A9EE); `vtable for'DialogButtonPanel::DialogButton1 ...
13A9EA:  ADD             R0, PC; `vtable for'DialogButtonPanel::DialogButton1
13A9EC:  ADDS            R0, #8
13A9EE:  STR             R0, [R4]
13A9F0:  MOV             R0, R4
13A9F2:  ADD             SP, SP, #0x10
13A9F4:  POP             {R4,R5,R7,PC}
