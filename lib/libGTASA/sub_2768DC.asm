; =========================================================
; Game Engine Function: sub_2768DC
; Address            : 0x2768DC - 0x276A3E
; =========================================================

2768DC:  PUSH            {R7,LR}
2768DE:  MOV             R7, SP
2768E0:  LDR             R1, =(dword_6DFD14 - 0x2768E6)
2768E2:  ADD             R1, PC; dword_6DFD14
2768E4:  LDR             R3, [R1]
2768E6:  MOVW            R1, #0x8033
2768EA:  CMP             R3, R1
2768EC:  BGT             loc_276924
2768EE:  MOVW            R1, #0x1401
2768F2:  CMP             R3, R1
2768F4:  BEQ             loc_276958
2768F6:  MOVW            R1, #0x8033
2768FA:  CMP             R3, R1
2768FC:  BNE             loc_2769A8
2768FE:  LDR             R1, =(dword_6DFD10 - 0x276904)
276900:  ADD             R1, PC; dword_6DFD10
276902:  LDR             R2, [R1]
276904:  MOVW            R1, #0x1908
276908:  CMP             R2, R1
27690A:  BNE             loc_2769C0
27690C:  LDRH            R0, [R0]
27690E:  MOV.W           R1, #0xFF0
276912:  AND.W           R2, R1, R0,LSR#4
276916:  MOVS            R1, #0xF0
276918:  AND.W           R3, R1, R0,LSR#8
27691C:  AND.W           R1, R0, #0xF0
276920:  LSLS            R0, R0, #4
276922:  B               loc_276A08
276924:  MOVW            R1, #0x8034
276928:  CMP             R3, R1
27692A:  BEQ             loc_276976
27692C:  MOVW            R1, #0x8363
276930:  CMP             R3, R1
276932:  BNE             loc_2769A8
276934:  LDR             R1, =(dword_6DFD10 - 0x27693A)
276936:  ADD             R1, PC; dword_6DFD10
276938:  LDR             R2, [R1]
27693A:  MOVW            R1, #0x1907
27693E:  CMP             R2, R1
276940:  BNE             loc_2769CE
276942:  LDRH            R0, [R0]
276944:  MOVW            R1, #0x1FFC
276948:  AND.W           R2, R1, R0,LSR#3
27694C:  MOVS            R1, #0xF8
27694E:  AND.W           R3, R1, R0,LSR#8
276952:  LSLS            R1, R0, #3
276954:  MOVS            R0, #0xFF
276956:  B               loc_276A08
276958:  LDR             R1, =(dword_6DFD10 - 0x27695E)
27695A:  ADD             R1, PC; dword_6DFD10
27695C:  LDR             R2, [R1]
27695E:  MOVW            R1, #0x1906
276962:  SUBS            R1, R2, R1
276964:  CMP             R1, #4; switch 5 cases
276966:  BHI             def_276968; jumptable 00276968 default case
276968:  TBB.W           [PC,R1]; switch jump
27696C:  DCB 3; jump table for switch statement
27696D:  DCB 0x57
27696E:  DCB 0x5C
27696F:  DCB 0x61
276970:  DCB 0x64
276971:  ALIGN 2
276972:  LDRB            R0, [R0]; jumptable 00276968 case 0
276974:  B               loc_276A02
276976:  LDR             R1, =(dword_6DFD10 - 0x27697C)
276978:  ADD             R1, PC; dword_6DFD10
27697A:  LDR             R2, [R1]
27697C:  MOVW            R1, #0x1908
276980:  CMP             R2, R1
276982:  BNE             loc_2769DC
276984:  LDRH            R0, [R0]
276986:  MOV             R1, #0x3FFF8
27698E:  MOVW            R2, #0x1FF8
276992:  MOVS            R3, #0xF8
276994:  AND.W           R1, R1, R0,LSL#2
276998:  AND.W           R2, R2, R0,LSR#3
27699C:  AND.W           R3, R3, R0,LSR#8
2769A0:  AND.W           R0, R0, #1
2769A4:  NEGS            R0, R0
2769A6:  B               loc_276A08
2769A8:  LDR             R0, =(NVLogError_ptr - 0x2769B0)
2769AA:  LDR             R1, =(dword_6DFD10 - 0x2769B2)
2769AC:  ADD             R0, PC; NVLogError_ptr
2769AE:  ADD             R1, PC; dword_6DFD10
2769B0:  LDR             R0, [R0]; NVLogError
2769B2:  LDR             R2, [R1]
2769B4:  LDR             R1, =(aUnsupportedFor_0 - 0x2769C0); "Unsupported format/type pair [0x%x 0x%x"...
2769B6:  LDR.W           R12, [R0]; NVDefaultLogError(char const*,char const*,...)
2769BA:  ADR             R0, aTexeltocolor88; "TexelToColor8888"
2769BC:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
2769BE:  B               loc_2769FE
2769C0:  LDR             R0, =(NVLogError_ptr - 0x2769CC)
2769C2:  MOVW            R3, #0x8033
2769C6:  LDR             R1, =(aUnsupportedFor_0 - 0x2769CE); "Unsupported format/type pair [0x%x 0x%x"...
2769C8:  ADD             R0, PC; NVLogError_ptr
2769CA:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
2769CC:  B               loc_2769F6
2769CE:  LDR             R0, =(NVLogError_ptr - 0x2769DA)
2769D0:  MOVW            R3, #0x8363
2769D4:  LDR             R1, =(aUnsupportedFor_0 - 0x2769DC); "Unsupported format/type pair [0x%x 0x%x"...
2769D6:  ADD             R0, PC; NVLogError_ptr
2769D8:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
2769DA:  B               loc_2769F6
2769DC:  LDR             R0, =(NVLogError_ptr - 0x2769E8)
2769DE:  MOVW            R3, #0x8034
2769E2:  LDR             R1, =(aUnsupportedFor_0 - 0x2769EA); "Unsupported format/type pair [0x%x 0x%x"...
2769E4:  ADD             R0, PC; NVLogError_ptr
2769E6:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
2769E8:  B               loc_2769F6
2769EA:  LDR             R0, =(NVLogError_ptr - 0x2769F6); jumptable 00276968 default case
2769EC:  MOVW            R3, #0x1401
2769F0:  LDR             R1, =(aUnsupportedFor_0 - 0x2769F8); "Unsupported format/type pair [0x%x 0x%x"...
2769F2:  ADD             R0, PC; NVLogError_ptr
2769F4:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
2769F6:  LDR             R0, [R0]; NVLogError
2769F8:  LDR.W           R12, [R0]; NVDefaultLogError(char const*,char const*,...)
2769FC:  ADR             R0, aTexeltocolor88; "TexelToColor8888"
2769FE:  BLX             R12; NVDefaultLogError(char const*,char const*,...)
276A00:  MOVS            R0, #0
276A02:  MOVS            R1, #0
276A04:  MOVS            R2, #0
276A06:  MOVS            R3, #0
276A08:  UXTB            R1, R1
276A0A:  LSLS            R1, R1, #0x10
276A0C:  ORR.W           R0, R1, R0,LSL#24
276A10:  UXTB            R1, R2
276A12:  ORR.W           R0, R0, R1,LSL#8
276A16:  ORRS            R0, R3
276A18:  POP             {R7,PC}
276A1A:  LDRB            R3, [R0]; jumptable 00276968 case 1
276A1C:  LDRB            R2, [R0,#1]
276A1E:  LDRB            R1, [R0,#2]
276A20:  MOVS            R0, #0xFF
276A22:  B               loc_276A08
276A24:  LDRB            R3, [R0]; jumptable 00276968 case 2
276A26:  LDRB            R2, [R0,#1]
276A28:  LDRB            R1, [R0,#2]
276A2A:  LDRB            R0, [R0,#3]
276A2C:  B               loc_276A08
276A2E:  LDRB            R1, [R0]; jumptable 00276968 case 3
276A30:  MOVS            R0, #0xFF
276A32:  B               loc_276A38
276A34:  LDRB            R1, [R0]; jumptable 00276968 case 4
276A36:  LDRB            R0, [R0,#1]
276A38:  MOV             R2, R1
276A3A:  MOV             R3, R1
276A3C:  B               loc_276A08
