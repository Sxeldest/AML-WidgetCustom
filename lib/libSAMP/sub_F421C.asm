; =========================================================
; Game Engine Function: sub_F421C
; Address            : 0xF421C - 0xF4258
; =========================================================

F421C:  PUSH            {R7,LR}
F421E:  MOV             R7, SP
F4220:  LDR             R0, =(off_23494C - 0xF422E)
F4222:  MOV             R3, #0x671258
F422A:  ADD             R0, PC; off_23494C
F422C:  LDR             R0, [R0]; dword_23DF24
F422E:  LDR             R0, [R0]
F4230:  LDR             R1, =(sub_F41F8+1 - 0xF423A)
F4232:  LDR             R2, =(off_240034 - 0xF423C)
F4234:  ADD             R0, R3
F4236:  ADD             R1, PC; sub_F41F8
F4238:  ADD             R2, PC; off_240034
F423A:  BL              sub_164196
F423E:  LDR             R0, =(byte_240038 - 0xF424A)
F4240:  MOVS            R3, #1
F4242:  LDR             R1, =(aAxl - 0xF424C); "AXL" ...
F4244:  LDR             R2, =(aCustomhandling - 0xF4250); "[CustomHandling]: call install" ...
F4246:  ADD             R0, PC; byte_240038
F4248:  ADD             R1, PC; "AXL"
F424A:  STRB            R3, [R0]
F424C:  ADD             R2, PC; "[CustomHandling]: call install"
F424E:  MOVS            R0, #4
F4250:  POP.W           {R7,LR}
F4254:  B.W             sub_2242C8
