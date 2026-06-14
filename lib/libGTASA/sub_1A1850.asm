; =========================================================
; Game Engine Function: sub_1A1850
; Address            : 0x1A1850 - 0x1A1A7C
; =========================================================

1A1850:  PUSH            {R4,R5,R7,LR}
1A1852:  ADD             R7, SP, #8
1A1854:  ADR             R1, dword_1A1A90
1A1856:  LDR.W           R12, =(AmbientLightColor_ptr - 0x1A1866)
1A185A:  VLD1.64         {D28-D29}, [R1@128]
1A185E:  ADR             R0, dword_1A1A80
1A1860:  ADR             R4, dword_1A1AA0
1A1862:  ADD             R12, PC; AmbientLightColor_ptr
1A1864:  LDR             R1, =(MaterialEmissive_ptr - 0x1A1874)
1A1866:  VMOV.F32        Q12, #1.0
1A186A:  LDR.W           LR, =(MaterialDiffuse_ptr - 0x1A1878)
1A186E:  LDR             R2, =(MaterialAmbient_ptr - 0x1A187E)
1A1870:  ADD             R1, PC; MaterialEmissive_ptr
1A1872:  LDR             R3, =(MaterialSpecular_ptr - 0x1A1880)
1A1874:  ADD             LR, PC; MaterialDiffuse_ptr
1A1876:  VLD1.64         {D26-D27}, [R0@128]
1A187A:  ADD             R2, PC; MaterialAmbient_ptr
1A187C:  ADD             R3, PC; MaterialSpecular_ptr
1A187E:  LDR             R0, =(EmulatorLights_ptr - 0x1A188A)
1A1880:  VLD1.64         {D18-D19}, [R4@128]
1A1884:  ADR             R4, dword_1A1AB0
1A1886:  ADD             R0, PC; EmulatorLights_ptr
1A1888:  LDR             R5, [R1]; MaterialEmissive
1A188A:  ADR             R1, dword_1A1AD0
1A188C:  VLD1.64         {D16-D17}, [R4@128]
1A1890:  ADR             R4, dword_1A1AC0
1A1892:  VLD1.64         {D22-D23}, [R1@128]
1A1896:  LDR.W           R1, [R12]; AmbientLightColor
1A189A:  LDR             R3, [R3]; MaterialSpecular
1A189C:  VLD1.64         {D20-D21}, [R4@128]
1A18A0:  LDR.W           R4, [LR]; MaterialDiffuse
1A18A4:  LDR             R2, [R2]; MaterialAmbient
1A18A6:  LDR             R0, [R0]; EmulatorLights
1A18A8:  VST1.32         {D26-D27}, [R1]
1A18AC:  MOVS            R1, #0
1A18AE:  VST1.32         {D26-D27}, [R2]
1A18B2:  VST1.32         {D28-D29}, [R4]
1A18B6:  VST1.32         {D18-D19}, [R3]
1A18BA:  VST1.32         {D18-D19}, [R5]
1A18BE:  STRH            R1, [R0]
1A18C0:  STRD.W          R1, R1, [R0,#(dword_6B33DC - 0x6B33A8)]
1A18C4:  STRH.W          R1, [R0,#(word_6B3414 - 0x6B33A8)]
1A18C8:  STRD.W          R1, R1, [R0,#(dword_6B3448 - 0x6B33A8)]
1A18CC:  STRD.W          R1, R1, [R0,#(dword_6B34B4 - 0x6B33A8)]
1A18D0:  STRH.W          R1, [R0,#(word_6B3480 - 0x6B33A8)]
1A18D4:  STRD.W          R1, R1, [R0,#(dword_6B3520 - 0x6B33A8)]
1A18D8:  STRH.W          R1, [R0,#(word_6B34EC - 0x6B33A8)]
1A18DC:  STRD.W          R1, R1, [R0,#(dword_6B358C - 0x6B33A8)]
1A18E0:  STRH.W          R1, [R0,#(word_6B3558 - 0x6B33A8)]
1A18E4:  STRD.W          R1, R1, [R0,#(dword_6B35F8 - 0x6B33A8)]
1A18E8:  STRH.W          R1, [R0,#(word_6B35C4 - 0x6B33A8)]
1A18EC:  STRD.W          R1, R1, [R0,#(dword_6B3664 - 0x6B33A8)]
1A18F0:  STRH.W          R1, [R0,#(word_6B3630 - 0x6B33A8)]
1A18F4:  STRD.W          R1, R1, [R0,#(dword_6B36D0 - 0x6B33A8)]
1A18F8:  STRH.W          R1, [R0,#(word_6B369C - 0x6B33A8)]
1A18FC:  ADDS            R1, R0, #4
1A18FE:  VST1.32         {D18-D19}, [R1]
1A1902:  ADD.W           R1, R0, #0x14
1A1906:  VST1.32         {D24-D25}, [R1]
1A190A:  ADD.W           R1, R0, #0x24 ; '$'
1A190E:  VST1.32         {D18-D19}, [R1]
1A1912:  ADD.W           R1, R0, #0x4C ; 'L'
1A1916:  VST1.32         {D16-D17}, [R1]
1A191A:  ADD.W           R1, R0, #0x3C ; '<'
1A191E:  VST1.32         {D20-D21}, [R1]
1A1922:  ADD.W           R1, R0, #0x5C ; '\'
1A1926:  VST1.32         {D22-D23}, [R1]
1A192A:  ADD.W           R1, R0, #0x70 ; 'p'
1A192E:  VST1.32         {D18-D19}, [R1]
1A1932:  ADD.W           R1, R0, #0x80
1A1936:  VST1.32         {D24-D25}, [R1]
1A193A:  ADD.W           R1, R0, #0x90
1A193E:  VST1.32         {D18-D19}, [R1]
1A1942:  ADD.W           R1, R0, #0xA8
1A1946:  VST1.32         {D20-D21}, [R1]
1A194A:  ADD.W           R1, R0, #0xB8
1A194E:  VST1.32         {D16-D17}, [R1]
1A1952:  ADD.W           R1, R0, #0xC8
1A1956:  VST1.32         {D22-D23}, [R1]
1A195A:  ADD.W           R1, R0, #0xDC
1A195E:  VST1.32         {D18-D19}, [R1]
1A1962:  ADD.W           R1, R0, #0xEC
1A1966:  VST1.32         {D24-D25}, [R1]
1A196A:  ADD.W           R1, R0, #0xFC
1A196E:  VST1.32         {D18-D19}, [R1]
1A1972:  ADD.W           R1, R0, #0x114
1A1976:  VST1.32         {D20-D21}, [R1]
1A197A:  ADD.W           R1, R0, #0x124
1A197E:  VST1.32         {D16-D17}, [R1]
1A1982:  ADD.W           R1, R0, #0x134
1A1986:  VST1.32         {D22-D23}, [R1]
1A198A:  ADD.W           R1, R0, #0x148
1A198E:  VST1.32         {D18-D19}, [R1]
1A1992:  ADD.W           R1, R0, #0x158
1A1996:  VST1.32         {D24-D25}, [R1]
1A199A:  ADD.W           R1, R0, #0x168
1A199E:  VST1.32         {D18-D19}, [R1]
1A19A2:  ADD.W           R1, R0, #0x180
1A19A6:  VST1.32         {D20-D21}, [R1]
1A19AA:  ADD.W           R1, R0, #0x190
1A19AE:  VST1.32         {D16-D17}, [R1]
1A19B2:  ADD.W           R1, R0, #0x1A0
1A19B6:  VST1.32         {D22-D23}, [R1]
1A19BA:  ADD.W           R1, R0, #0x1B4
1A19BE:  VST1.32         {D18-D19}, [R1]
1A19C2:  ADD.W           R1, R0, #0x1C4
1A19C6:  VST1.32         {D24-D25}, [R1]
1A19CA:  ADD.W           R1, R0, #0x1D4
1A19CE:  VST1.32         {D18-D19}, [R1]
1A19D2:  ADD.W           R1, R0, #0x1EC
1A19D6:  VST1.32         {D20-D21}, [R1]
1A19DA:  ADD.W           R1, R0, #0x1FC
1A19DE:  VST1.32         {D16-D17}, [R1]
1A19E2:  ADD.W           R1, R0, #0x20C
1A19E6:  VST1.32         {D22-D23}, [R1]
1A19EA:  ADD.W           R1, R0, #0x220
1A19EE:  VST1.32         {D18-D19}, [R1]
1A19F2:  ADD.W           R1, R0, #0x230
1A19F6:  VST1.32         {D24-D25}, [R1]
1A19FA:  ADD.W           R1, R0, #0x240
1A19FE:  VST1.32         {D18-D19}, [R1]
1A1A02:  ADD.W           R1, R0, #0x258
1A1A06:  VST1.32         {D20-D21}, [R1]
1A1A0A:  ADD.W           R1, R0, #0x268
1A1A0E:  VST1.32         {D16-D17}, [R1]
1A1A12:  ADD.W           R1, R0, #0x278
1A1A16:  VST1.32         {D22-D23}, [R1]
1A1A1A:  ADD.W           R1, R0, #0x28C
1A1A1E:  VST1.32         {D18-D19}, [R1]
1A1A22:  ADD.W           R1, R0, #0x29C
1A1A26:  VST1.32         {D24-D25}, [R1]
1A1A2A:  ADD.W           R1, R0, #0x2AC
1A1A2E:  VST1.32         {D18-D19}, [R1]
1A1A32:  ADD.W           R1, R0, #0x2C4
1A1A36:  VST1.32         {D20-D21}, [R1]
1A1A3A:  ADD.W           R1, R0, #0x2D4
1A1A3E:  VST1.32         {D16-D17}, [R1]
1A1A42:  ADD.W           R1, R0, #0x2E4
1A1A46:  VST1.32         {D22-D23}, [R1]
1A1A4A:  ADD.W           R1, R0, #0x2F8
1A1A4E:  VST1.32         {D18-D19}, [R1]
1A1A52:  ADD.W           R1, R0, #0x308
1A1A56:  VST1.32         {D24-D25}, [R1]
1A1A5A:  ADD.W           R1, R0, #0x318
1A1A5E:  VST1.32         {D18-D19}, [R1]
1A1A62:  ADD.W           R1, R0, #0x330
1A1A66:  VST1.32         {D20-D21}, [R1]
1A1A6A:  ADD.W           R1, R0, #0x340
1A1A6E:  ADD.W           R0, R0, #0x350
1A1A72:  VST1.32         {D16-D17}, [R1]
1A1A76:  VST1.32         {D22-D23}, [R0]
1A1A7A:  POP             {R4,R5,R7,PC}
