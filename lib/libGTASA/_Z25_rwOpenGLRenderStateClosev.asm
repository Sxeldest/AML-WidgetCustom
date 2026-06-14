; =========================================================
; Game Engine Function: _Z25_rwOpenGLRenderStateClosev
; Address            : 0x1AED98 - 0x1AEE12
; =========================================================

1AED98:  PUSH            {R7,LR}
1AED9A:  MOV             R7, SP
1AED9C:  LDR             R0, =(dword_6B3208 - 0x1AEDA2)
1AED9E:  ADD             R0, PC; dword_6B3208
1AEDA0:  LDR             R0, [R0,#(dword_6B3210 - 0x6B3208)]
1AEDA2:  CBZ             R0, loc_1AEDB8
1AEDA4:  LDR             R1, =(dgGGlobals_ptr - 0x1AEDAA)
1AEDA6:  ADD             R1, PC; dgGGlobals_ptr
1AEDA8:  LDR             R1, [R1]; dgGGlobals
1AEDAA:  LDR             R1, [R1,#(dword_6B31F8 - 0x6B31F4)]
1AEDAC:  LDR             R1, [R1,#4]
1AEDAE:  BLX             R1
1AEDB0:  LDR             R0, =(dword_6B3208 - 0x1AEDB8)
1AEDB2:  MOVS            R1, #0
1AEDB4:  ADD             R0, PC; dword_6B3208
1AEDB6:  STR             R1, [R0,#(dword_6B3210 - 0x6B3208)]
1AEDB8:  LDR             R0, =(dword_6B3208 - 0x1AEDBE)
1AEDBA:  ADD             R0, PC; dword_6B3208
1AEDBC:  LDR             R0, [R0,#(dword_6B3214 - 0x6B3208)]
1AEDBE:  CBZ             R0, loc_1AEDD4
1AEDC0:  LDR             R1, =(dgGGlobals_ptr - 0x1AEDC6)
1AEDC2:  ADD             R1, PC; dgGGlobals_ptr
1AEDC4:  LDR             R1, [R1]; dgGGlobals
1AEDC6:  LDR             R1, [R1,#(dword_6B31F8 - 0x6B31F4)]
1AEDC8:  LDR             R1, [R1,#4]
1AEDCA:  BLX             R1
1AEDCC:  LDR             R0, =(dword_6B3208 - 0x1AEDD4)
1AEDCE:  MOVS            R1, #0
1AEDD0:  ADD             R0, PC; dword_6B3208
1AEDD2:  STR             R1, [R0,#(dword_6B3214 - 0x6B3208)]
1AEDD4:  LDR             R0, =(dword_6B3208 - 0x1AEDDA)
1AEDD6:  ADD             R0, PC; dword_6B3208
1AEDD8:  LDR             R0, [R0,#(dword_6B3218 - 0x6B3208)]
1AEDDA:  CBZ             R0, loc_1AEDF0
1AEDDC:  LDR             R1, =(dgGGlobals_ptr - 0x1AEDE2)
1AEDDE:  ADD             R1, PC; dgGGlobals_ptr
1AEDE0:  LDR             R1, [R1]; dgGGlobals
1AEDE2:  LDR             R1, [R1,#(dword_6B31F8 - 0x6B31F4)]
1AEDE4:  LDR             R1, [R1,#4]
1AEDE6:  BLX             R1
1AEDE8:  LDR             R0, =(dword_6B3208 - 0x1AEDF0)
1AEDEA:  MOVS            R1, #0
1AEDEC:  ADD             R0, PC; dword_6B3208
1AEDEE:  STR             R1, [R0,#(dword_6B3218 - 0x6B3208)]
1AEDF0:  LDR             R0, =(dword_6B3208 - 0x1AEDF6)
1AEDF2:  ADD             R0, PC; dword_6B3208
1AEDF4:  LDR             R0, [R0,#(dword_6B321C - 0x6B3208)]
1AEDF6:  CMP             R0, #0
1AEDF8:  IT EQ
1AEDFA:  POPEQ           {R7,PC}
1AEDFC:  LDR             R1, =(dgGGlobals_ptr - 0x1AEE02)
1AEDFE:  ADD             R1, PC; dgGGlobals_ptr
1AEE00:  LDR             R1, [R1]; dgGGlobals
1AEE02:  LDR             R1, [R1,#(dword_6B31F8 - 0x6B31F4)]
1AEE04:  LDR             R1, [R1,#4]
1AEE06:  BLX             R1
1AEE08:  LDR             R0, =(dword_6B3208 - 0x1AEE10)
1AEE0A:  MOVS            R1, #0
1AEE0C:  ADD             R0, PC; dword_6B3208
1AEE0E:  STR             R1, [R0,#(dword_6B321C - 0x6B3208)]
1AEE10:  POP             {R7,PC}
