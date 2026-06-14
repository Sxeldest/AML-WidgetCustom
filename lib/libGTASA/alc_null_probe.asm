; =========================================================
; Game Engine Function: alc_null_probe
; Address            : 0x25FB04 - 0x25FB7C
; =========================================================

25FB04:  PUSH            {R7,LR}
25FB06:  MOV             R7, SP
25FB08:  CBZ             R0, loc_25FB0C
25FB0A:  POP             {R7,PC}
25FB0C:  LDR             R1, =(dword_6D632C - 0x25FB14)
25FB0E:  LDR             R0, =(dword_6D6328 - 0x25FB16)
25FB10:  ADD             R1, PC; dword_6D632C
25FB12:  ADD             R0, PC; dword_6D6328
25FB14:  LDR             R1, [R1]
25FB16:  LDR             R0, [R0]; ptr
25FB18:  ADDS            R1, #0xB; size
25FB1A:  BLX             realloc
25FB1E:  CMP             R0, #0
25FB20:  BEQ             loc_25FB56
25FB22:  LDR.W           LR, =(dword_6D632C - 0x25FB2E)
25FB26:  MOVS            R1, #0x74 ; 't'
25FB28:  LDR             R3, =(aNoOutput - 0x25FB34); "No Output"
25FB2A:  ADD             LR, PC; dword_6D632C
25FB2C:  LDR.W           R12, =(dword_6D6328 - 0x25FB3A)
25FB30:  ADD             R3, PC; "No Output"
25FB32:  LDR.W           R2, [LR]
25FB36:  ADD             R12, PC; dword_6D6328
25FB38:  VLDR            D16, [R3]
25FB3C:  ADDS            R3, R0, R2
25FB3E:  STR.W           R0, [R12]
25FB42:  VST1.8          {D16}, [R3]
25FB46:  STRH            R1, [R3,#8]
25FB48:  ADD.W           R1, R2, #0xA
25FB4C:  MOVS            R2, #0
25FB4E:  STR.W           R1, [LR]
25FB52:  STRB            R2, [R0,R1]
25FB54:  POP             {R7,PC}
25FB56:  LDR             R0, =(LogLevel_ptr - 0x25FB5C)
25FB58:  ADD             R0, PC; LogLevel_ptr
25FB5A:  LDR             R0, [R0]; LogLevel
25FB5C:  LDR             R0, [R0]
25FB5E:  CMP             R0, #0
25FB60:  IT EQ
25FB62:  POPEQ           {R7,PC}
25FB64:  LDR             R0, =(aEe - 0x25FB6E); "(EE)"
25FB66:  LDR             R1, =(aAppendlist - 0x25FB72); "AppendList"
25FB68:  LDR             R2, =(aReallocFailedT_0 - 0x25FB74); "Realloc failed to add %s!\n"
25FB6A:  ADD             R0, PC; "(EE)"
25FB6C:  LDR             R3, =(aNoOutput - 0x25FB76); "No Output"
25FB6E:  ADD             R1, PC; "AppendList"
25FB70:  ADD             R2, PC; "Realloc failed to add %s!\n"
25FB72:  ADD             R3, PC; "No Output"
25FB74:  POP.W           {R7,LR}
25FB78:  B.W             al_print
