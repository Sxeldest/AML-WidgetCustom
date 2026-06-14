; =========================================================
; Game Engine Function: _Z20RpClumpForAllCamerasP7RpClumpPFP8RwCameraS2_PvES3_
; Address            : 0x213EA4 - 0x213EDE
; =========================================================

213EA4:  PUSH            {R4-R7,LR}
213EA6:  ADD             R7, SP, #0xC
213EA8:  PUSH.W          {R8-R10}
213EAC:  MOV             R8, R0
213EAE:  LDR.W           R9, =(dword_6BD590 - 0x213EBE)
213EB2:  MOV             R5, R8
213EB4:  MOV             R10, R2
213EB6:  LDR.W           R0, [R5,#0x18]!
213EBA:  ADD             R9, PC; dword_6BD590
213EBC:  MOV             R6, R1
213EBE:  CMP             R0, R5
213EC0:  BEQ             loc_213ED6
213EC2:  LDR.W           R1, [R9]
213EC6:  LDR             R4, [R0]
213EC8:  SUBS            R0, R0, R1
213ECA:  MOV             R1, R10
213ECC:  SUBS            R0, #4
213ECE:  BLX             R6
213ED0:  CMP             R0, #0
213ED2:  MOV             R0, R4
213ED4:  BNE             loc_213EBE
213ED6:  MOV             R0, R8
213ED8:  POP.W           {R8-R10}
213EDC:  POP             {R4-R7,PC}
