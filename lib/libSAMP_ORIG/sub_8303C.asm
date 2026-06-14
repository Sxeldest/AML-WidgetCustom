; =========================================================
; Game Engine Function: sub_8303C
; Address            : 0x8303C - 0x830C4
; =========================================================

8303C:  PUSH            {R4,R5,R7,LR}
8303E:  ADD             R7, SP, #8
83040:  BL              sub_8265C
83044:  LDR             R4, =(byte_1A49FC - 0x8304A)
83046:  ADD             R4, PC; byte_1A49FC
83048:  LDRB            R1, [R4]
8304A:  CBZ             R1, loc_83082
8304C:  BL              sub_826B0
83050:  BL              sub_8265C
83054:  CBNZ            R0, loc_83082
83056:  BL              sub_83224
8305A:  LDRB            R0, [R4]
8305C:  CBZ             R0, loc_83082
8305E:  LDR             R5, =(byte_1A4A24 - 0x83064)
83060:  ADD             R5, PC; byte_1A4A24
83062:  LDRB            R0, [R5]
83064:  CBZ             R0, loc_83082
83066:  LDR             R0, =(aSvDbgRecordSto - 0x8306C); "[sv:dbg:record:stopchecking] : checking"... ...
83068:  ADD             R0, PC; "[sv:dbg:record:stopchecking] : checking"...
8306A:  BL              sub_80664
8306E:  LDR             R0, =(off_114A88 - 0x83076)
83070:  LDR             R1, =(dword_1A4A20 - 0x83078)
83072:  ADD             R0, PC; off_114A88
83074:  ADD             R1, PC; dword_1A4A20
83076:  LDR             R2, [R0]; off_1ABEE8
83078:  LDR             R0, [R1]
8307A:  LDR             R1, [R2]
8307C:  BLX             R1
8307E:  MOVS            R0, #0
83080:  STRB            R0, [R5]
83082:  BL              sub_82668
83086:  LDRB            R1, [R4]
83088:  CBZ             R1, locret_830C2
8308A:  MOVS            R1, #0x64 ; 'd'
8308C:  CMP             R0, #0
8308E:  IT MI
83090:  MOVMI           R1, #0
83092:  MOV             R0, R1
83094:  BL              sub_826BC
83098:  LDR             R0, =(off_114D38 - 0x8309E)
8309A:  ADD             R0, PC; off_114D38
8309C:  LDR             R0, [R0]; off_1ABF48
8309E:  LDR             R4, [R0]
830A0:  BL              sub_82668
830A4:  VMOV            S0, R0
830A8:  VLDR            S2, =100.0
830AC:  VCVT.F32.S32    S0, S0
830B0:  VDIV.F32        S0, S0, S2
830B4:  VMOV            R2, S0
830B8:  MOV.W           R0, #0xFFFFFFFF
830BC:  MOV.W           R1, #0x20000
830C0:  BLX             R4
830C2:  POP             {R4,R5,R7,PC}
