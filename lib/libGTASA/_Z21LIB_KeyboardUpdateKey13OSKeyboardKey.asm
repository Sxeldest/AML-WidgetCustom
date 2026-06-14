; =========================================================
; Game Engine Function: _Z21LIB_KeyboardUpdateKey13OSKeyboardKey
; Address            : 0x270254 - 0x27027C
; =========================================================

270254:  LDR             R1, =(keys_ptr - 0x27025A)
270256:  ADD             R1, PC; keys_ptr
270258:  LDR             R1, [R1]; keys
27025A:  LDR.W           R1, [R1,R0,LSL#2]
27025E:  ADDS            R2, R1, #1
270260:  CMP             R2, #2
270262:  BCS             loc_270268
270264:  MOVS            R1, #1
270266:  B               loc_270270
270268:  CMP             R1, #2
27026A:  IT NE
27026C:  BXNE            LR
27026E:  MOVS            R1, #3
270270:  LDR             R2, =(keys_ptr - 0x270276)
270272:  ADD             R2, PC; keys_ptr
270274:  LDR             R2, [R2]; keys
270276:  STR.W           R1, [R2,R0,LSL#2]
27027A:  BX              LR
