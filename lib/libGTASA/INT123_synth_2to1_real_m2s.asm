; =========================================================
; Game Engine Function: INT123_synth_2to1_real_m2s
; Address            : 0x2388F6 - 0x2389A2
; =========================================================

2388F6:  PUSH            {R4-R7,LR}
2388F8:  ADD             R7, SP, #0xC
2388FA:  PUSH.W          {R11}
2388FE:  MOV             R4, R1
238900:  MOVW            R1, #0xB2A0
238904:  LDR             R6, [R4,R1]
238906:  MOVW            R1, #0x91AC
23890A:  LDR             R5, [R4,R1]
23890C:  MOVS            R1, #0
23890E:  MOV             R2, R4
238910:  MOVS            R3, #1
238912:  BLX             R5
238914:  MOVW            R1, #0xB2A8
238918:  LDR             R1, [R4,R1]
23891A:  ADD             R1, R6
23891C:  VLDR            D16, [R1,#-0x100]
238920:  VLDR            D17, [R1,#-0xF0]
238924:  VLDR            D18, [R1,#-0xE0]
238928:  VLDR            D19, [R1,#-0xD0]
23892C:  VLDR            D20, [R1,#-0xC0]
238930:  VLDR            D21, [R1,#-0xB0]
238934:  VLDR            D22, [R1,#-0xA0]
238938:  VLDR            D23, [R1,#-0x90]
23893C:  VLDR            D24, [R1,#-0x80]
238940:  VLDR            D25, [R1,#-0x70]
238944:  VLDR            D26, [R1,#-0x60]
238948:  VLDR            D27, [R1,#-0x50]
23894C:  VLDR            D28, [R1,#-0x10]
238950:  VLDR            D29, [R1,#-0x20]
238954:  VLDR            D30, [R1,#-0x30]
238958:  VLDR            D31, [R1,#-0x40]
23895C:  VSTR            D16, [R1,#-0xF8]
238960:  VSTR            D17, [R1,#-0xE8]
238964:  VSTR            D18, [R1,#-0xD8]
238968:  VSTR            D19, [R1,#-0xC8]
23896C:  VSTR            D20, [R1,#-0xB8]
238970:  VSTR            D21, [R1,#-0xA8]
238974:  VSTR            D22, [R1,#-0x98]
238978:  VSTR            D23, [R1,#-0x88]
23897C:  VSTR            D24, [R1,#-0x78]
238980:  VSTR            D25, [R1,#-0x68]
238984:  VSTR            D26, [R1,#-0x58]
238988:  VSTR            D27, [R1,#-0x48]
23898C:  VSTR            D31, [R1,#-0x38]
238990:  VSTR            D30, [R1,#-0x28]
238994:  VSTR            D29, [R1,#-0x18]
238998:  VSTR            D28, [R1,#-8]
23899C:  POP.W           {R11}
2389A0:  POP             {R4-R7,PC}
