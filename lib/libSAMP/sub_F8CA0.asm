; =========================================================
; Game Engine Function: sub_F8CA0
; Address            : 0xF8CA0 - 0xF8D02
; =========================================================

F8CA0:  PUSH            {R4,R6,R7,LR}
F8CA2:  ADD             R7, SP, #8
F8CA4:  SUB             SP, SP, #0x40
F8CA6:  MOV             R4, R0
F8CA8:  LDR             R0, [R0,#4]
F8CAA:  CBZ             R0, loc_F8CFE
F8CAC:  LDR             R1, =(off_23494C - 0xF8CBC)
F8CAE:  MOVW            R3, #0x7D24
F8CB2:  LDR             R2, [R0]
F8CB4:  MOVT            R3, #0x66 ; 'f'
F8CB8:  ADD             R1, PC; off_23494C
F8CBA:  LDR             R1, [R1]; dword_23DF24
F8CBC:  LDR             R1, [R1]
F8CBE:  ADD             R3, R1
F8CC0:  CMP             R2, R3
F8CC2:  BEQ             loc_F8CFE
F8CC4:  LDR.W           R2, [R0,#0xB8]
F8CC8:  CBNZ            R2, loc_F8CFE
F8CCA:  VMOV.I32        Q8, #0
F8CCE:  ADD.W           R3, R0, #0x48 ; 'H'
F8CD2:  MOVS            R2, #0
F8CD4:  STR             R2, [R0,#0x5C]
F8CD6:  VST1.8          {D16-D17}, [R3]!
F8CDA:  STR             R2, [R3]
F8CDC:  MOV             R2, #0x4233C9
F8CE4:  ADD             R1, R2
F8CE6:  BLX             R1
F8CE8:  MOV             R1, SP
F8CEA:  MOV             R0, R4
F8CEC:  BL              sub_F8910
F8CF0:  LDR             R0, [R4]
F8CF2:  ADD             R3, SP, #0x48+var_18
F8CF4:  LDM             R3, {R1-R3}
F8CF6:  LDR.W           R12, [R0,#0x10]
F8CFA:  MOV             R0, R4
F8CFC:  BLX             R12
F8CFE:  ADD             SP, SP, #0x40 ; '@'
F8D00:  POP             {R4,R6,R7,PC}
