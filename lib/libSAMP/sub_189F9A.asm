; =========================================================
; Game Engine Function: sub_189F9A
; Address            : 0x189F9A - 0x189FE4
; =========================================================

189F9A:  PUSH            {R4-R7,LR}
189F9C:  ADD             R7, SP, #0xC
189F9E:  PUSH.W          {R11}
189FA2:  SUB             SP, SP, #8
189FA4:  MOV             R6, R2
189FA6:  SUB.W           R2, R7, #-var_11
189FAA:  MOV             R5, R0
189FAC:  BL              sub_189F4A
189FB0:  MOV             R4, R0
189FB2:  LDRB.W          R0, [R7,#var_11]
189FB6:  CBZ             R0, loc_189FBE
189FB8:  MOV.W           R4, #0xFFFFFFFF
189FBC:  B               loc_189FDA
189FBE:  LDR             R0, [R5,#4]
189FC0:  LDR             R1, [R6]
189FC2:  CMP             R4, R0
189FC4:  BCS             loc_189FD0
189FC6:  MOV             R0, R5
189FC8:  MOV             R2, R4
189FCA:  BL              sub_18B82A
189FCE:  B               loc_189FDA
189FD0:  MOV             R0, R5
189FD2:  BL              sub_18B7BC
189FD6:  LDR             R0, [R5,#4]
189FD8:  SUBS            R4, R0, #1
189FDA:  MOV             R0, R4
189FDC:  ADD             SP, SP, #8
189FDE:  POP.W           {R11}
189FE2:  POP             {R4-R7,PC}
