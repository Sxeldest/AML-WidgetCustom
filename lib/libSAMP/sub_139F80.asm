; =========================================================
; Game Engine Function: sub_139F80
; Address            : 0x139F80 - 0x139FBE
; =========================================================

139F80:  PUSH            {R7,LR}
139F82:  MOV             R7, SP
139F84:  MOV             R1, R0
139F86:  MOV.W           R0, #0xFFFFFFFF
139F8A:  LDR             R2, [R1,#0x58]
139F8C:  CMP             R2, #5
139F8E:  BHI             locret_139FB6
139F90:  MOVS            R3, #1
139F92:  LSL.W           R2, R3, R2
139F96:  TST.W           R2, #0x34
139F9A:  BEQ             locret_139FB6
139F9C:  LDR             R0, [R1,#0x54]; lpsrc
139F9E:  CBZ             R0, loc_139FB8
139FA0:  LDR             R1, =(off_234BA8 - 0x139FAA)
139FA2:  MOVS            R3, #0; s2d
139FA4:  LDR             R2, =(_ZTI7ListBox - 0x139FAC); `typeinfo for'ListBox ...
139FA6:  ADD             R1, PC; off_234BA8
139FA8:  ADD             R2, PC; lpdtype
139FAA:  LDR             R1, [R1]; lpstype
139FAC:  BLX             j___dynamic_cast
139FB0:  CBZ             R0, loc_139FB8
139FB2:  LDR             R0, [R0,#0x60]
139FB4:  LDR             R0, [R0,#0x5C]
139FB6:  POP             {R7,PC}
139FB8:  MOV.W           R0, #0xFFFFFFFF
139FBC:  POP             {R7,PC}
