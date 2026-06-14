; =========================================================
; Game Engine Function: sub_16DDF0
; Address            : 0x16DDF0 - 0x16DE40
; =========================================================

16DDF0:  PUSH            {R4,R5,R7,LR}
16DDF2:  ADD             R7, SP, #8
16DDF4:  SUB             SP, SP, #8
16DDF6:  LDR             R3, =(dword_381B58 - 0x16DE00)
16DDF8:  MOVW            R4, #0x19AC
16DDFC:  ADD             R3, PC; dword_381B58
16DDFE:  LDR             R3, [R3]
16DE00:  LDR             R5, [R3,R4]
16DE02:  MOVS            R3, #1
16DE04:  STRB.W          R3, [R5,#0x7C]
16DE08:  LDRD.W          R12, LR, [R0]
16DE0C:  LDR.W           R4, [R5,#0x27C]
16DE10:  LDRD.W          R3, R0, [R1]; int
16DE14:  MOV             R1, R12; int
16DE16:  STRD.W          R0, R2, [SP,#0x10+var_10]; float
16DE1A:  MOV             R0, R4; int
16DE1C:  MOV             R2, LR; int
16DE1E:  BL              sub_172C12
16DE22:  LDR.W           R0, [R5,#0x27C]
16DE26:  LDR             R1, [R0,#0x40]
16DE28:  LDR             R0, [R0,#0x48]
16DE2A:  ADD.W           R0, R0, R1,LSL#4
16DE2E:  SUBS            R0, #0x10
16DE30:  VLD1.32         {D16-D17}, [R0]
16DE34:  ADD.W           R0, R5, #0x1D0
16DE38:  VST1.32         {D16-D17}, [R0]
16DE3C:  ADD             SP, SP, #8
16DE3E:  POP             {R4,R5,R7,PC}
